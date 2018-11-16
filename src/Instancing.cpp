//
//  Instancing.cpp
//  vjSystem
//
//  Created by nami on 2018/11/16.
//

#include "Instancing.h"
Instancing::Instancing(const BasicInfos* g_info) : BaseScene(g_info) {
    name = "Instancing";
    
    primitive_num = 1000000;
    
    //
    initOsc();
    
    // camera settings
    cam.setFov(45);
    cam.setAspectRatio(ofGetWidth() / ofGetHeight());
    cam.setFarClip(1000);
    cam.setNearClip(0.1);
    //    cam.setupPerspective();
    cam.lookAt(glm::vec3(0.));
    cam.setPosition(0, 0, 200);
    
    setup();
}

void Instancing::setup() {
    float * position = new float[primitive_num * 3];
    for(int i = 0; i<primitive_num; i++){
        position[i * 3 + 0] = ofRandom(-10, 10);
        position[i * 3 + 1] = ofRandom(-10, 10);
        position[i * 3 + 2] = ofRandom(-10, 10);
    }
    
    float * velocity = new float[primitive_num * 3];
    for(int i = 0; i<primitive_num; i++){
        velocity[i * 3 + 0] = ofRandom(-1, 1);
        velocity[i * 3 + 1] = ofRandom(-1, 1);
        velocity[i * 3 + 2] = ofRandom(-1, 1);
    }
    
    float * age = new float[primitive_num];
    for(int i = 0; i<primitive_num; i++){
        age[i] = 1;
    }
    
    float * lifetime = new float[primitive_num];
    for(int i = 0; i<primitive_num; i++){
        lifetime[i] = 1;
    }
    
    // setup for transform_feedback shader.
    transform_feedback.setupShaderFromFile(GL_VERTEX_SHADER, "Instancing/transform_feedback.vert");
    const GLchar* feedback_varings[] = { "out_position", "out_velocity", "out_age", "out_lifetime"};
    glTransformFeedbackVaryings(shader.getProgram(), 4, feedback_varings, GL_SEPARATE_ATTRIBS);
    transform_feedback.linkProgram();
    
    // primitive setting
    ofBoxPrimitive box;
    box.set(2, 2, 10, 1, 1, 1);
    mesh = box.getMesh();
    
    glGenTransformFeedbacks(2, feedback);
    
    // feedback_buffer settings
    for(int i = 0; i < 2; ++i){
        position_buffer[i].allocate();
        position_buffer[i].setData(sizeof(float) * primitive_num * 3, position, GL_STREAM_DRAW);
        
        velocity_buffer[i].allocate();
        velocity_buffer[i].setData(sizeof(float) * primitive_num * 3, velocity, GL_STREAM_DRAW);
        
        age_buffer[i].allocate();
        age_buffer[i].setData(sizeof(float) * primitive_num, age, GL_STREAM_DRAW);
        
        lifetime_buffer[i].allocate();
        lifetime_buffer[i].setData(sizeof(float) * primitive_num, lifetime, GL_STREAM_DRAW);
        
        vbo[i].setAttributeBuffer(shader.getAttributeLocation("in_position"), position_buffer[i], 3, 0);
        vbo[i].setAttributeBuffer(shader.getAttributeLocation("in_velocity"), velocity_buffer[i], 3, 0);
        vbo[i].setAttributeBuffer(shader.getAttributeLocation("in_age"), age_buffer[i], 1, 0);
        vbo[i].setAttributeBuffer(shader.getAttributeLocation("in_lifetime"), lifetime_buffer[i], 1, 0);
        
        glBindTransformFeedback(GL_TRANSFORM_FEEDBACK, feedback[i]);
        glBindBufferBase(GL_TRANSFORM_FEEDBACK_BUFFER, 0, position_buffer[i].getId());
        glBindBufferBase(GL_TRANSFORM_FEEDBACK_BUFFER, 1, velocity_buffer[i].getId());
        glBindBufferBase(GL_TRANSFORM_FEEDBACK_BUFFER, 2, age_buffer[i].getId());
        glBindBufferBase(GL_TRANSFORM_FEEDBACK_BUFFER, 3, lifetime_buffer[i].getId());
    }
    
    glBindTransformFeedback(GL_TRANSFORM_FEEDBACK, 0);
    
    frame = 0;
    
    // primitive
    primitive_shader.load("Instancing/primitive_render");
    position_location = primitive_shader.getAttributeLocation("in_position");
    velocity_location = primitive_shader.getAttributeLocation("in_velocity");
    age_location = primitive_shader.getAttributeLocation("in_age");
    lifetime_location = primitive_shader.getAttributeLocation("in_lifetime");
    
    ofVbo& mesh_vbo = mesh.getVbo();
    mesh_vbo.setAttributeDivisor(position_location, 1);
    mesh_vbo.setAttributeDivisor(velocity_location, 1);
    mesh_vbo.setAttributeDivisor(age_location, 1);
    mesh_vbo.setAttributeDivisor(lifetime_location, 1);
    
    light_position = glm::vec3(0);
    
    scale = 1.0;
    timestamp = 1.0;
    
    start_color = glm::vec4(1.0);
    end_color = glm::vec4(1.0);
}

void Instancing::initOsc() {
//    ofxSubscribeOsc(OF_PORT, "/instancing/primitive_num", [=](const unsigned int num) {
//        changeVertexNum(num);
//    });
    
    ofxSubscribeOsc(OF_PORT, "/instancing/primitive_mode", [=](const unsigned int mode_num) {
        mesh.setMode(static_cast<ofPrimitiveMode>(mode_num));
    });
    
    ofxSubscribeOsc(OF_PORT, "/instancing/vertex", [=](const string &vert) {
        vertex_text = vert;
        reloadShader();
        ofLogNotice() << "instancing vs changed";
    });
    
    ofxSubscribeOsc(OF_PORT, "/instancing/fragment", [=](const string &frag) {
        fragment_text = frag;
        reloadShader();
        ofLogNotice() << "instancing fs changed";
    });
    
    ofxSubscribeOsc(OF_PORT, "/instancing/seed", seed);
    
    
    // camera
    ofxSubscribeOsc(OF_PORT, "/instancing/cam/position", [=](const glm::vec3 pos) {
        cam.setPosition(pos);
        cam.lookAt(lookat);
    });
    
    ofxSubscribeOsc(OF_PORT, "/instancing/cam/lookat", [=](const glm::vec3 g_lookat) {
        lookat = g_lookat;
        cam.lookAt(lookat);
    });
    
    ofxSubscribeOsc(OF_PORT, "/instancing/scale", scale);
    ofxSubscribeOsc(OF_PORT, "/instancing/timestamp", timestamp);
}


void Instancing::update() {
    
}

void Instancing::draw() {

    transform_feedback.begin();
    
    transform_feedback.setUniform1f("time", info->time);
    transform_feedback.setUniform1f("timestamp", timestamp);
    transform_feedback.setUniform1f("scale", scale);
    
    glEnable(GL_RASTERIZER_DISCARD);
    glBindTransformFeedback(GL_TRANSFORM_FEEDBACK, feedback[frame]);
    
    glBeginTransformFeedback(GL_POINTS);
    vbo[1 - frame].draw(GL_POINTS, 0, primitive_num);
    glEndTransformFeedback();
    
    glBindTransformFeedback(GL_TRANSFORM_FEEDBACK, 0);
    glDisable(GL_RASTERIZER_DISCARD);
    
    transform_feedback.end();
    
    mesh.getVbo().setAttributeBuffer(position_location, position_buffer[frame], 3, 0);
    mesh.getVbo().setAttributeBuffer(velocity_location, velocity_buffer[frame], 3, 0);
    mesh.getVbo().setAttributeBuffer(age_location, age_buffer[frame], 1, 0);
    mesh.getVbo().setAttributeBuffer(lifetime_location, lifetime_buffer[frame], 1, 0);
    
    ofEnableDepthTest();
    
    begin();
    ofClear(0);
    cam.begin();
    
    primitive_shader.begin();
    
    primitive_shader.setUniform3f("light_position", light_position);
    primitive_shader.setUniform4f("start_color", start_color);
    primitive_shader.setUniform4f("end_color", end_color);
    primitive_shader.setUniformMatrix4f("normal_matrix", ofGetCurrentNormalMatrix());
    
    glEnable(GL_CULL_FACE);
    glCullFace(GL_BACK);
    
    mesh.drawInstanced(OF_MESH_FILL, primitive_num);
    glDisable(GL_CULL_FACE);
    
    primitive_shader.end();
    
    ofDrawAxis(10);
    cam.end();
    end();
    
    frame = 1 - frame;
    
    ofDisableDepthTest();
}

void Instancing::windowResized(glm::vec2 size) {
    BaseScene::windowResized(size);
}

void Instancing::changeVertexNum(const unsigned int num) {
    
}

void Instancing::reloadShader() {
    shader.setupShaderFromSource(GL_VERTEX_SHADER, vertex_text);
    shader.setupShaderFromSource(GL_FRAGMENT_SHADER, fragment_text);
    shader.bindDefaults();
    shader.linkProgram();
}
