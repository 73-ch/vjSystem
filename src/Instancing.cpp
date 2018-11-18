//
//  Instancing.cpp
//  vjSystem
//
//  Created by nami on 2018/11/16.
//

#include "Instancing.h"
Instancing::Instancing(const BasicInfos* g_info) : BaseScene(g_info) {
    name = "Instancing";
    
    primitive_num = 100000;
    
    //
    initOsc();
    
    // camera settings
    cam.setFov(45);
    cam.setAspectRatio(ofGetWidth() / ofGetHeight());
    cam.setFarClip(4000);
    cam.setNearClip(0.1);
    //    cam.setupPerspective();
    cam.lookAt(glm::vec3(0.));
    cam.setPosition(0, 0, 200);
    
    setup();
    
    GLint num;
    glGetIntegerv(GL_MAX_TRANSFORM_FEEDBACK_BUFFERS, &num);
    ofLogNotice() << "GL_MAX_TRANSFORM_FEEDBACK_BUFFERS " << num;
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
    
    float * shadow = new float[primitive_num * 3];
    for(int i = 0; i<primitive_num; i++){
        shadow[i * 3 + 0] = ofRandom(-10, 10);
        shadow[i * 3 + 1] = ofRandom(-10, 10);
        shadow[i * 3 + 2] = ofRandom(-10, 10);
    }
    
    // setup for transform_feedback shader.
    transform_feedback.setupShaderFromFile(GL_VERTEX_SHADER, "Instancing/transform_feedback.vert");
    const GLchar* feedback_varings[] = {"out_position", "out_velocity", "out_shadow"};
    glTransformFeedbackVaryings(transform_feedback.getProgram(), 3, feedback_varings, GL_SEPARATE_ATTRIBS);
    
//    const GLchar* feedback_varings[] = {"out_position", "out_velocity"};
//    glTransformFeedbackVaryings(transform_feedback.getProgram(), 2, feedback_varings, GL_SEPARATE_ATTRIBS);
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
        
        shadow_buffer[i].allocate();
        shadow_buffer[i].setData(sizeof(float) * primitive_num * 3, shadow, GL_STREAM_DRAW);
        
        vbo[i].setAttributeBuffer(transform_feedback.getAttributeLocation("in_position"), position_buffer[i], 3, 0);
        vbo[i].setAttributeBuffer(transform_feedback.getAttributeLocation("in_velocity"), velocity_buffer[i], 3, 0);
        vbo[i].setAttributeBuffer(transform_feedback.getAttributeLocation("in_shadow"), shadow_buffer[i], 4, 0);
        
        glBindTransformFeedback(GL_TRANSFORM_FEEDBACK, feedback[i]);
        glBindBufferBase(GL_TRANSFORM_FEEDBACK_BUFFER, 0, position_buffer[i].getId());
        glBindBufferBase(GL_TRANSFORM_FEEDBACK_BUFFER, 1, velocity_buffer[i].getId());
        glBindBufferBase(GL_TRANSFORM_FEEDBACK_BUFFER, 2, shadow_buffer[i].getId());
    }
    
    delete [] position;
    delete [] velocity;
    delete [] shadow;
    
    glBindTransformFeedback(GL_TRANSFORM_FEEDBACK, 0);
    
    frame = 0;
    
    // primitive
    primitive_shader.load("Instancing/primitive_render");
    primitive_shader_vertex = primitive_shader.getShaderSource(GL_VERTEX_SHADER);
    primitive_shader_fragment = primitive_shader.getShaderSource(GL_FRAGMENT_SHADER);
    position_location = primitive_shader.getAttributeLocation("in_position");
    velocity_location = primitive_shader.getAttributeLocation("in_velocity");
    
    ofVbo& mesh_vbo = mesh.getVbo();
    mesh_vbo.setAttributeDivisor(position_location, 1);
    mesh_vbo.setAttributeDivisor(velocity_location, 1);
    
    light_position = glm::vec3(1000);
    
    scale = 0.01;
    timestep = 0.25;
    
    start_color = glm::vec4(glm::vec3(1.0), 1.0);
    end_color = glm::vec4(1.0);
    
    // primitive shadow
    shadow_shader.load("Instancing/shadow");
    shadow_shader_vs = shadow_shader.getShaderSource(GL_VERTEX_SHADER);
    shadow_shader_fs = shadow_shader.getShaderSource(GL_FRAGMENT_SHADER);
    
    shadow_location = shadow_shader.getAttributeLocation("in_shadow");
    shadow_velocity_location = shadow_shader.getAttributeLocation("in_velocity");
    shadow_mesh.getVbo().setAttributeDivisor(shadow_location, 1);
    shadow_mesh.getVbo().setAttributeDivisor(shadow_velocity_location, 1);
    
    ofPlanePrimitive plane;
    plane.set(2, 10, 2, 2);
//    shadow_mesh = plane.getMesh();
    shadow_mesh = box.getMesh();
}

void Instancing::initOsc() {
    // transform_feedback vs update
    ofxSubscribeOsc(OF_PORT, "/instancing/transform_feedback/vertex", [=] (const string &vert) {
        transform_feedback.setupShaderFromSource(GL_VERTEX_SHADER, vert);
        const GLchar* feedback_varings[] = {"out_position", "out_velocity", "out_shadow"};
        glTransformFeedbackVaryings(transform_feedback.getProgram(), 3, feedback_varings, GL_SEPARATE_ATTRIBS);
        transform_feedback.linkProgram();
        
        ofLogNotice() << "instancing transform_feedback vs changed";
    });
    
    // primitive_shader update
    ofxSubscribeOsc(OF_PORT, "/instancing/primitive_render/vertex", [=] (const string &vert) {
        primitive_shader_vertex = vert;
        reloadPrimitiveShader();
        ofLogNotice() << "instancing primitive_shader vs changed";
    });
    
    ofxSubscribeOsc(OF_PORT, "/instancing/primitive_render/fragment", [=] (const string &frag) {
        primitive_shader_fragment = frag;
        reloadPrimitiveShader();
        ofLogNotice() << "instancing primitive_shader fs changed";
    });
    
    // shadow_shader update
    ofxSubscribeOsc(OF_PORT, "/instancing/shadow_shader/vertex", shadow_shader_vs, [=](){ reloadShadowShader(); ofLogNotice() << "instancing shadow_shader vs changed"; });
    ofxSubscribeOsc(OF_PORT, "/instancing/shadow_shader/fragment", shadow_shader_fs, [=](){ reloadShadowShader(); ofLogNotice() << "instancing shadow_shader fs changed"; });
    
    ofxSubscribeOsc(OF_PORT, "/instancing/transform_feedback/reset_buffer", [=]() {
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
        
        float * shadow = new float[primitive_num * 3];
        for(int i = 0; i<primitive_num; i++){
            shadow[i * 3 + 0] = ofRandom(-10, 10);
            shadow[i * 3 + 1] = ofRandom(-10, 10);
            shadow[i * 3 + 2] = ofRandom(-10, 10);
        }
        
        for (int i = 0; i < 2; i++) {
            position_buffer[i].unmap();
            velocity_buffer[i].unmap();
            
            position_buffer[i].setData(sizeof(float) * primitive_num * 3, position, GL_STREAM_DRAW);
            velocity_buffer[i].setData(sizeof(float) * primitive_num * 3, velocity, GL_STREAM_DRAW);
        }
        
        delete [] position;
        delete [] velocity;
        delete [] shadow;
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
    ofxSubscribeOsc(OF_PORT, "/instancing/timestep", timestep);
    ofxSubscribeOsc(OF_PORT, "/instancing/light_position", light_position);
    
    ofxSubscribeOsc(OF_PORT, "/instancing/transform_seed", transform_seed);
    ofxSubscribeOsc(OF_PORT, "/instancing/primitive_seed", primitive_seed);
    ofxSubscribeOsc(OF_PORT, "/instancing/shadow_seed", shadow_seed);
}


void Instancing::update() {
    
}

void Instancing::draw() {    
    transform_feedback.begin();
    
    transform_feedback.setUniform1f("time", info->time);
    transform_feedback.setUniform1f("timestep", timestep);
    transform_feedback.setUniform1f("scale", scale);
    transform_feedback.setUniform3f("light_position", light_position);
    transform_feedback.setUniform4f("seed", transform_seed);
    
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
    
    ofEnableDepthTest();
    
    begin();
    ofClear(188);
    cam.begin();
    
    primitive_shader.begin();
    
    primitive_shader.setUniform3f("light_position", light_position);
    primitive_shader.setUniform4f("start_color", start_color);
    primitive_shader.setUniform4f("end_color", end_color);
    primitive_shader.setUniformMatrix4f("normal_matrix", ofGetCurrentNormalMatrix());
    primitive_shader.setUniform1f("time", info->time);
    primitive_shader.setUniform4f("seed", primitive_seed);
    
    ofPushMatrix();
    glEnable(GL_CULL_FACE);
    glCullFace(GL_BACK);
    
    ofTranslate(glm::vec3(0, 500, 0));
    
    mesh.drawInstanced(OF_MESH_FILL, primitive_num);
    glDisable(GL_CULL_FACE);
    ofPopMatrix();
    primitive_shader.end();
    
    // primitive shadow
    shadow_mesh.getVbo().setAttributeBuffer(shadow_location, shadow_buffer[frame], 3, 0);
    shadow_mesh.getVbo().setAttributeBuffer(shadow_velocity_location, velocity_buffer[frame], 3, 0);
    
    ofPushMatrix();
    shadow_shader.begin();
    shadow_shader.setUniform4f("seed", shadow_seed);
    ofSetColor(255);
    glEnable(GL_CULL_FACE);
    glCullFace(GL_BACK);
    shadow_mesh.drawInstanced(OF_MESH_FILL, primitive_num);
    glDisable(GL_CULL_FACE);
    shadow_shader.end();
    
    ofPopMatrix();
    
//    ofPlanePrimitive plane;
//    plane.set(2, 10, 2, 2);
//    plane.rotateDeg(90, glm::vec3(1,0,0));
//    plane.draw();
    
    // stage
//    ofSetColor(200);
//    ofPushMatrix();
//    ofTranslate(glm::vec3(-5000,0,-5000));
//    ofRotateXDeg(90);
//    ofDrawRectangle(glm::vec3(0), 10000, 10000);
//    ofPopMatrix();
    
    // debug
    ofSetColor(100,100, 200);
    ofDrawSphere(light_position, 10);
    ofSetColor(255);
//    ofDrawAxis(10);
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

void Instancing::reloadPrimitiveShader() {
    primitive_shader.setupShaderFromSource(GL_VERTEX_SHADER, primitive_shader_vertex);
    primitive_shader.setupShaderFromSource(GL_FRAGMENT_SHADER, primitive_shader_fragment);
    primitive_shader.bindDefaults();
    primitive_shader.linkProgram();
}

void Instancing::reloadShadowShader() {
    shadow_shader.setupShaderFromSource(GL_VERTEX_SHADER, shadow_shader_vs);
    shadow_shader.setupShaderFromSource(GL_FRAGMENT_SHADER, shadow_shader_fs);
    shadow_shader.bindDefaults();
    shadow_shader.linkProgram();
}
