#include "AvoidObject.h"
AvoidObject::AvoidObject(const BasicInfos* g_info) : BaseScene(g_info) {
    name = "AvoidObject";
    ofSetCircleResolution(24);
    
    cylinder.set(1, 400, 24, 400);
    cylinder.setMode(OF_PRIMITIVE_TRIANGLES);
    
    loader.loadModel("AvoidObject/Low Tree.3DS");
    loader.setScale(0.5, 0.5, 0.5);
    loader.setRotation(0, 180, 1, 0, 0);
    
    
    float span = 100.;
    
    
    shader.load("AvoidObject/avoid");
    vertex_text = shader.getShaderSource(GL_VERTEX_SHADER);
    fragment_text = shader.getShaderSource(GL_FRAGMENT_SHADER);
    
    
    sphere.set(100, 40);
    
    for (int i = 0; i < 400; i++) {
        auto t = new Tree();
        t->pos = vec3(floor(i / 20) - 10., 0., mod(i, 20.) - 10.);
        t->pos += vec3(ofNoise(t->pos.x, t->pos.z)*2.-1., 0, ofNoise(t->pos.x, t->pos.z)*2.-1.);
        t->scale = vec3(ofRandom(0.5, 1.3), ofRandom(1.0, 1.8),ofRandom(0.5, 1.3));
        t->rotate = ofRandom(PI);
        trees.push_back(t);
    }
    
    for (int i = 0; i < 5; i++) {
        float x = ofRandom(1.0);
        if (x < 0.2) {
            ofSpherePrimitive sphere;
            sphere.set(0.5, 40);
            avoid_objects[i] = sphere;
        } else if (x < .4) {
            ofBoxPrimitive box;
            box.set(1);
            avoid_objects[i] = box;
        } else if(x < .2) {
            ofCylinderPrimitive cylinder;
            cylinder.set(1, 1);
            avoid_objects[i] = cylinder;
        }
        
        avoid_active[i] = 0;
        avoid_size[i] = ofRandom(10, 50);
        avoid_pos[i] = vec3(ofRandom(-500, 500), ofRandom(100), ofRandom(-500, 500));
        avoid_color[i] = vec3(200);
    }
    
    initOsc();
    
    shader.load("AvoidObject/avoid");
}

void AvoidObject::initOsc() {
    ofxSubscribeOsc(OF_PORT, "/avoid_object/mode", mode);
    
    
    ofxSubscribeOsc(OF_PORT, "/avoid_object/avoid_active", avoid_active);
    ofxSubscribeOsc(OF_PORT, "/avoid_object/avoid_size", avoid_size);
    ofxSubscribeOsc(OF_PORT, "/avoid_object/avoid_color", avoid_color);
    ofxSubscribeOsc(OF_PORT, "/avoid_object/avoid_pos", avoid_pos);
    
    ofxSubscribeOsc(OF_PORT, "/avoid_object/random_avoid", [&]() {
        for (int i = 0; i < 5; i++) {
            float x = ofRandom(1.0);
            if (x < 0.2) {
                ofSpherePrimitive sphere;
                sphere.set(50, 40);
                avoid_objects[i] = sphere;
            } else if (x < .4) {
                ofBoxPrimitive box;
                box.set(100);
                avoid_objects[i] = box;
            } else if(x < .2) {
                ofCylinderPrimitive cylinder;
                cylinder.set(50, 100);
                avoid_objects[i] = cylinder;
            }
        }
    });
    
    
    
    ofxSubscribeOsc(OF_PORT, "/avoid_object/cam/position", [=](const glm::vec3 pos) {
        cam.setPosition(pos);
        cam.lookAt(lookat);
    });
    
    ofxSubscribeOsc(OF_PORT, "/avoid_object/cam/lookat", [=](const glm::vec3 g_lookat) {
        lookat = g_lookat;
        cam.lookAt(lookat);
    });
    
    ofxSubscribeOsc(OF_PORT, "/avoid_object/vertex", [=](const string &vert) {
        vertex_text = vert;
        reloadShader();
        ofLogNotice() << "shader_art vs changed";
    });
    
    ofxSubscribeOsc(OF_PORT, "/avoid_object/fragment", [=](const string &frag) {
        fragment_text = frag;
        reloadShader();
        ofLogNotice() << "shader_art fs changed";
    });
}

void AvoidObject::setup() {
    
}

void AvoidObject::update() {
    float time = ofGetElapsedTimef();

    sphere.setPosition(sin(time * .2) * 300, 0, 0);
}

void AvoidObject::draw() {
    begin();
    ofClear(100);

    ofEnableDepthTest();
    cam.begin();
    shader.begin();
    
    
    shader.setUniform1iv("avoid_active", &avoid_active[0], 5);
    shader.setUniform3fv("avoid_positions", &avoid_pos[0].x, 15);
    shader.setUniform1fv("avoid_size", &avoid_size[0], 5);
    
    shader.setUniform3f("cam_position", cam.getPosition());
    vbo_mesh.setUsage(GL_DYNAMIC_DRAW);
    
    glEnable(GL_CULL_FACE);
    glCullFace(GL_FRONT);
    ofSetColor(255);

    for (auto t : trees) {
        ofPushMatrix();
        if (mode) {
            ofTranslate(t->pos.x*100., 0., t->pos.z*100.);
            
            cylinder.draw();
        } else {
            ofRotateYRad(t->rotate);
            ofScale(t->scale);
            ofTranslate(t->pos * 100);
            
            loader.draw(OF_MESH_FILL);
        }
        ofPopMatrix();
    }
    
    
    shader.end();
    ofSetColor(170);
    
    for (int i = 0; i < 5; i++) {
        if (avoid_active[i]) {
            ofPushMatrix();
            
            ofTranslate(avoid_pos[i]);
            ofScale(avoid_size[i]);
            ofSetColor(avoid_color[i].r, avoid_color[i].g, avoid_color[i].b);
            avoid_objects[i].draw();
            
            ofPopMatrix();
        }
    }
    
    cam.end();
    end();
}

void AvoidObject::windowResized(glm::vec2 size) {
    BaseScene::windowResized(size);
    getFbo()->allocate(size.x, size.y, GL_RGBA);
}

void AvoidObject::reloadShader() {
    const string b_vs = shader.getShaderSource(GL_VERTEX_SHADER);
    const string b_fs = shader.getShaderSource(GL_FRAGMENT_SHADER);
    
    bool result = shader.setupShaderFromSource(GL_VERTEX_SHADER, vertex_text);
    
    if (!result) {
        shader.setupShaderFromSource(GL_VERTEX_SHADER, b_vs);
        vertex_text = b_vs;
    }
    
    result = shader.setupShaderFromSource(GL_FRAGMENT_SHADER, fragment_text);
    
    if (!result) {
        shader.setupShaderFromSource(GL_FRAGMENT_SHADER, b_fs);
        fragment_text= b_fs;
    }
    
    shader.bindDefaults();
    shader.linkProgram();
}
