#include "PhysicsLyric.hpp"
PhysicsLyric::PhysicsLyric(const BasicInfos* g_info) : BaseScene(g_info) {
    name = "PhysicsLyric";

    camera.setPosition(vec3(0,-3., -40.));
    camera.lookAt(vec3(0), vec3(0,-1,0));
    camera.setNearClip(0.1);

    world.setup();
    world.enableGrabbing();
    world.setCamera(&camera);
    world.setGravity(vec3(0, 25., 0));

    vec3 start_location;
    vec3 dimens;
    bounds_width = 30.;
    float hwidth = bounds_width * .5;
    float depth = 2.;
    float hdepth = depth * .5;
    bounds_shape = new ofxBulletCustomShape();
    bounds_shape->create(world.world, vec3(0), 10.);

    for (int i = 0 ; i < 6; i++) {
        auto box = new ofxBulletBox();

        if (i == 0) {
            start_location = vec3(0, hwidth + hdepth,  0.);
            dimens = vec3(bounds_width, depth, bounds_width);
        } else if (i == 1) {
            start_location = vec3(0,0,hwidth+hdepth);
            dimens = vec3(bounds_width, bounds_width, depth);
        } else if (i == 2) {
            start_location = vec3(hwidth + hdepth, 0, 0.);
            dimens = vec3(depth,bounds_width, bounds_width);
        } else if (i == 3) {
            start_location = vec3(-hwidth - hdepth, 0, 0.);
            dimens = vec3(depth,bounds_width, bounds_width);
        } else if (i == 0) {
            start_location = vec3(0, -hwidth - hdepth,  0.);
            dimens = vec3(bounds_width, depth, bounds_width);
        } else if (i == 1) {
            start_location = vec3(0,0,-hwidth-hdepth);
            dimens = vec3(bounds_width, bounds_width, depth);
        }

        btBoxShape* box_shape = ofBtGetBoxCollisionShape(dimens.x, dimens.y, dimens.z);
        bounds_shape->addShape(box_shape, start_location);

        box->create(world.world, start_location, 0., dimens.x, dimens.y, dimens.z);
        box->setProperties(.25, .95);// 反発係数, 摩擦係数
        box->add();
        bounds.push_back(box);
    }


    auto sample_text = new RigidText(world, info->font);
//    sample_text->setText("Hello world!!", 10);

    texts.push_back(sample_text);

    windowResized(glm::vec2(ofGetWidth(), ofGetHeight()));
    initOsc();
}

void PhysicsLyric::initOsc() {
    ofxSubscribeOsc(OF_PORT, "/physics_lyric/set_text", [&](const string &given_text) {
        auto text = new RigidText(world, info->font);
        text->setText(given_text, 10);
        texts.push_back(text);

        while (texts.size() > 80) {
            texts.erase(texts.begin());
        }
    });

    ofxSubscribeOsc(OF_PORT, "/physics_lyric/cam/position", [=](const glm::vec3 pos) {
        camera.setPosition(pos);
        camera.lookAt(lookat);
    });

    ofxSubscribeOsc(OF_PORT, "/physics_lyric/cam/lookat", [=](const glm::vec3 g_lookat) {
        lookat = g_lookat;
        camera.lookAt(lookat);
    });

    ofxSubscribeOsc(OF_PORT, "/physics_lyric/cam/rotate", [&](const float rad, const glm::vec3 v) {
        camera.rotateRad(rad, v);
    });

    ofxSubscribeOsc(OF_PORT, "/physics_lyric/gravity", [&](const glm::vec3 v) {
        ofLogNotice() << "gravity : " << v;
        world.setGravity(v);
    });

    ofxSubscribeOsc(OF_PORT, "/physics_lyric/clear", [&]() {
        for (auto& text : texts) {
            delete text;
        }

        texts.clear();
    });
}

void PhysicsLyric::setup() {

}

void PhysicsLyric::update() {
    if (b_drop_box && bounds.size() > 0) {
        for (int i = 0; i < bounds.size(); i++) {
            delete bounds[i];
        }

        bounds.clear();
        bounds_shape->add();
    }

    if (b_drop_box) {
        auto diff = vec3(0,-5,0) - bounds_shape->getPosition();
        diff *= 200.f;
        bounds_shape->applyCentralForce(diff);
    }

    world.update();
}

void PhysicsLyric::draw() {
    begin();
    ofClear(0);

    glEnable(GL_DEPTH_TEST);

    camera.begin();

    if (b_draw_debug) world.drawDebug();

    ofEnableLighting();
    light.enable();

    ofSetColor(100.);
    if (!b_drop_box) {
        bounds_material.begin();
        for (int i = 0; i < bounds.size() - 1; i++) {
            bounds[i]->draw();
        }
        bounds_material.end();
    } else {
        ofNoFill();
        bounds_shape->transformGL();
        ofDrawBox(vec3(0), bounds_width);
        bounds_shape->restoreTransformGL();
        ofFill();
    }

    ofDisableAlphaBlending();
    ofDisableBlendMode();

    glPushAttrib(GL_ALL_ATTRIB_BITS);
    glPushClientAttrib(GL_CLIENT_ALL_ATTRIB_BITS);
    glEnable(GL_NORMALIZE);
    glDisable(GL_CULL_FACE);

    ofSetColor(255);
    for (auto t : texts) {
        t->draw();
    }

    ofPopStyle();

    light.disable();
    ofDisableLighting();

    camera.end();
    glDisable(GL_DEPTH_TEST);

//    int total_shapes = bounds.size() + texts.size();
//    vec3 gravity = world.getGravity();
//    stringstream ss;
//    ss << "Draw Debug (d): " << b_draw_debug << endl;
//    ss << "Total Shapes: " << total_shapes << endl;
//    ss << "Add logos(o)" << endl;
//    ss << "add spherers (s)" << endl;
//    ss << "add boxes (b)" << endl;
//    ss << "Gravity(up/down/left/right): x=" << gravity.x << " y= " << gravity.y << " z= " << gravity.z << endl;
//
//    ofSetColor(255);
//    ofDrawBitmapString(ss.str().c_str(), 20, 20);

    end();
}

void PhysicsLyric::windowResized(glm::vec2 size) {
    BaseScene::windowResized(size);
    getFbo()->allocate(size.x, size.y, GL_RGBA);
}
