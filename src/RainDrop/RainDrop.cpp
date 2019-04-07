#include "RainDrop.h"

RainDrop::RainDrop(const BasicInfos* g_info) : BaseScene(g_info) {
    name = "RainDrop";
    
    large_scene.allocate(ofGetWidth(), ofGetHeight(), GL_RGBA);
    rain_shader.load("RainDrop/rain.vert", "RainDrop/rain.frag");
    
    // main scene
    main_scene.allocate(ofGetWidth(), ofGetHeight(), GL_RGBA);
    main_plane.set(info->screen_size.x * 2., info->screen_size.y * 2.);
    
    main_shader.setupShaderFromSource(GL_VERTEX_SHADER, DEFAULT_VERTEX);
    main_shader.setupShaderFromFile(GL_FRAGMENT_SHADER, "RainDrop/main_default.frag");
    main_shader.bindDefaults();
    main_shader.linkProgram();
    
    main_fragment = main_shader.getShaderSource(GL_FRAGMENT_SHADER);
    
    // 最後にテクスチャを参照してレンダリングする部分
    refer_texture_shader.load("RainDrop/default.vert", "RainDrop/final_refer_texture.frag");
    
    // debug
    image_dir.open("RainDrop/pictures");
    image_dir.allowExt("png");
    image_dir.allowExt("jpg");
    image_dir.listDir();
    tex0.allocate(info->screen_size.x, info->screen_size.y, OF_IMAGE_COLOR_ALPHA);
    tex1.allocate(info->screen_size.x, info->screen_size.y, OF_IMAGE_COLOR_ALPHA);
    current_tex0 = 0;
    current_tex1 = 0;
    reloadTex();
    
    initOsc();
}

void RainDrop::initOsc() {
    ofxSubscribeOsc(OF_PORT, "/rain_drop/main_fragment", [=](const string &frag) {
        main_fragment = frag;
        reloadMainShader();
        ofLogNotice() << "rain_drop main_fs changed";
    });

    ofxSubscribeOsc(OF_PORT, "/rain_drop/time_scale", time_scale);
    ofxSubscribeOsc(OF_PORT, "/rain_drop/fall_speed", fall_speed);
    ofxSubscribeOsc(OF_PORT, "/rain_drop/trail_rate", trail_rate);
    ofxSubscribeOsc(OF_PORT, "/rain_drop/clear_drops", [&](){large_drops.clear();});
    
    ofxSubscribeOsc(OF_PORT, "/rain_drop/spawn_probability", spawn_probability);
    ofxSubscribeOsc(OF_PORT, "/rain_drop/image_mode", [&](const int mode_num){
        if (mode_num == 0) {
            image_dir.open("RainDrop/pictures");
            
        } else if (mode_num == 1) {
            image_dir.open("RainDrop/legacy_mac");
        } else if (mode_num == 2) {
            tex0.load("RainDrop/mojave_mono.png");
            tex1.load("RainDrop/mojave_mono.png");
            tex0.resize(info->screen_size.x, info->screen_size.y);
            tex1.resize(info->screen_size.x, info->screen_size.y);
        }
        
        image_dir.allowExt("png");
        image_dir.allowExt("jpg");
        image_dir.listDir();
        
    });
    
    ofxSubscribeOsc(OF_PORT, "/rain_drop/tex0", [&](const int image_index) {
        current_tex0 = image_index % image_dir.size();
        reloadTex();
    });
    
    ofxSubscribeOsc(OF_PORT, "/rain_drop/tex1", [&](const int image_index) {
        current_tex1 = image_index % image_dir.size();
        reloadTex();
    });
}

void RainDrop::attached() {
//    large_drops.clear();
//    windowResized(info->screen_size);
}

void RainDrop::setup() {
    
}

void RainDrop::update() {
    //    time_scale = abs(sin(info->time * .5));
//    fall_speed = fract(info->time * .5);
    float comp = ofGetFrameRate() * 0.00166;
    
//    ofLogNotice() << comp;
    // 大きい雨粒
    if (large_drops.size() < 3000) {
        for (int i = 0 ; i < 5; i++) {
            if (spawn_probability > ofRandom(.9) + glm::clamp(comp,0.0f, 0.1f)) {
                // 新しい大きい雨粒の生成
                auto large_drop = new LargeDrop();
                large_drop->pos = vec2(ofRandom(info->screen_size.x), ofRandom(info->screen_size.y * 0.7));
                
                float r = MIN_R + pow(ofRandom(1.0),3.0) * (MAX_R - MIN_R);
                large_drop->r = r;
                large_drop->momentum.y = 1+((r-MIN_R)*0.1)+ofRandom(2);
                large_drop->spread = vec2(1.5);
                large_drop->spawn_time = info->time;
                large_drops.push_back(large_drop);
            }
        }
    }
    
//    ofLogNotice() << large_drops.size();
    
    // sort
    
    vector<LargeDrop*> new_drops;
    auto drop = large_drops.begin();
    while(drop != large_drops.end()) {
        // update gravity
        if (ofRandom(1.0) <= ((*drop)->r - (MIN_R * fall_speed)) * (.1 / (MAX_R - MIN_R) * time_scale)) {
            (*drop)->momentum.y += ofRandom(((*drop)->r/MAX_R)*4);
        }
        
        // clean small (*drop)
        if ((*drop)->r <= MIN_R && ofRandom(1.0) <= time_scale * 0.05) {
            (*drop)->shrink += 0.01;
        }
        
        // update shrinkage
        (*drop)->r -= (*drop)->shrink * time_scale;
        if ((*drop)->r <= 0.01) (*drop)->killed = true;
        
        
        // update trail
        (*drop)->last_spawn += (*drop)->momentum.y * time_scale + trail_rate;
        
        if ((*drop)->last_spawn > (*drop)->next_spawn && large_drops.size() <= 3000) {
            auto trail_drop = new LargeDrop();
            trail_drop->pos = (*drop)->pos + vec2(ofRandom(-(*drop)->r, (*drop)->r)*0.1, -(*drop)->r*0.01);
            
            trail_drop->r = (*drop)->r * ofRandom(0.2, 0.5);
            trail_drop->spread.y = (*drop)->momentum.y * 0.1;
            trail_drop->parent = (*drop);
            trail_drop->spawn_time = info->time;
            
            (*drop)->r *= pow(0.97, time_scale);
            (*drop)->last_spawn = 0.0;
            (*drop)->next_spawn = ofRandom(MIN_R, MAX_R) - ((*drop)->momentum.y * 2. * trail_rate) + (MAX_R - (*drop)->r);
            
            new_drops.push_back(trail_drop);
        }
        
        
        
        (*drop)->spread *= vec2(pow(0.4, time_scale), pow(0.7, time_scale));
        
        // positionの更新
        bool moved = (*drop)->momentum.y > 0;
        if (moved && !(*drop)->killed) {
            (*drop)->pos += (*drop)->momentum * time_scale;
            // 画面外判定
            if ((*drop)->pos.y > info->screen_size.y + (*drop)->r) (*drop)->killed = true;
        }
        
        // collision
        bool check_collision = (moved || (*drop)->isNew) && !(*drop)->killed;
        (*drop)->isNew = false;
        
        if (check_collision) {
            auto drop2 = drop;
            drop2++;
            while(drop2 != large_drops.end() && std::distance(drop, drop2) <= 70) {
                if (drop != drop2 && ((*drop)->r > (*drop2)->r) && (*drop)->parent != (*drop2) && (*drop2)->parent != (*drop) && !(*drop2)->killed) {
                    vec2 dist = (*drop2)->pos - (*drop)->pos;
                    float d = sqrt(dot(dist, dist)); // ここ自分で置き換えたので要注意
                    if (d < ((*drop)->r + (*drop2)->r) * (COLLISION_R + ((*drop)->momentum.y * COLLISION_INCREASE * time_scale))) {
                        
                        const float a1 = PI * ((*drop)->r * (*drop)->r);
                        const float a2 = PI * ((*drop2)->r * (*drop2)->r);
                        float target_r = std::min(sqrt((a1 + (a2 * .8))/ PI), MAX_R);
                        (*drop)->r = target_r;
                        (*drop)->momentum.x = dist.x*.1;
                        (*drop)->spread = vec2(0);
                        (*drop2)->killed = true;
                        (*drop)->momentum.y = std::max((*drop2)->momentum.y, (float)std::min({MAX_R,(*drop)->momentum.y + (target_r*COLLISION_BOOST_SPEED) + COLLISION_BOOST}));
                    }
                }
                drop2++;
            }
        }
        
        // slowdown momentum
        (*drop)->momentum.y -= std::max(1.0, (MIN_R * 0.5) - (*drop)->momentum.y) * .1 * time_scale;
        if ((*drop)->momentum.y < 0) (*drop)->momentum.y = 0;
        (*drop)->momentum.x *= pow(0.7, time_scale);
        
        if ((*drop)->killed) {
            delete (*drop);
            drop = large_drops.erase(drop);
        } else {
            drop++;
        }
    }
    
    large_drops.insert(large_drops.end(), new_drops.begin(), new_drops.end());
    new_drops.clear();
    
    sort(large_drops.begin(), large_drops.end(), [&](const LargeDrop* a, const LargeDrop* b){
        return (a->pos.y*info->screen_size.y+a->pos.x) < (b->pos.y*info->screen_size.y+b->pos.x);
    });
    
    // 大きい粒のレンダリング
    large_scene.begin();
    ofClearAlpha();
    ofClear(0, 0, 0, 0);
    
    ofSetColor(255);
    ofEnableAlphaBlending();
    rain_shader.begin();
    for (const auto& r : large_drops) {
        if (!r->killed) {
            ofPushMatrix();
            ofSetColor(255);
            vec2 d = vec2(r->r) * vec2(1.,1.5) * (r->spread + vec2(1));
            vec2 trans = r->pos - d;
            vec2 p = d*2.;
            ofTranslate(trans);
            rain_shader.setUniform2f("u_resolution", p);
            rain_shader.setUniform3f("u_color", vec3(1.0));
            ofDrawRectangle(vec2(0), p.x, p.y);
            
            ofPopMatrix();
        }
    }
    rain_shader.end();
    
    ofDisableAlphaBlending();
    large_scene.end();
    
    // 雨粒フィルターを通す前の画像
    ofPushMatrix();
    main_scene.begin();
    ofClear(0);
    
    main_shader.begin();
    main_shader.setUniform2f("u_resolution", info->screen_size);
    main_shader.setUniform1f("time", info->time);
    main_shader.setUniformTexture("tex0", tex0.getTexture(), 4);
    main_shader.setUniformTexture("tex1", tex1.getTexture(), 5);
    
    ofSetColor(255, 255,255,255);
    main_plane.draw();
    
    main_shader.end();
    //    tex0.draw(vec2(0), info->screen_size.x, info->screen_size.y);
    
    main_scene.end();
    ofPopMatrix();
    
    last_time = info->time;
}

void RainDrop::draw() {
    begin();
    ofClear(0);
    
    refer_texture_shader.begin();
    ofSetColor(255, 255,255,255);
    refer_texture_shader.setUniformTexture("reference_texture", main_scene, 0);
    refer_texture_shader.setUniformTexture("large_drop_texcoord_texture", large_scene, 2);
    refer_texture_shader.setUniform2f("u_resolution", info->screen_size);
    ofScale(2.0);
    ofDrawPlane(0, 0, info->screen_size.x, info->screen_size.y);
    
    refer_texture_shader.end();
//
//    main_scene.draw(vec2(0.), info->screen_size.x*2., info->screen_size.y*2.);
    
    end();
}

void RainDrop::reloadMainShader() {
    const string b_fs = main_shader.getShaderSource(GL_FRAGMENT_SHADER);
    
    main_shader.setupShaderFromSource(GL_VERTEX_SHADER, DEFAULT_VERTEX);
    bool result = main_shader.setupShaderFromSource(GL_FRAGMENT_SHADER, main_fragment);
    
    if (!result) {
        main_shader.setupShaderFromSource(GL_FRAGMENT_SHADER, b_fs);
        main_fragment = b_fs;
    }
    
    main_shader.bindDefaults();
    main_shader.linkProgram();
}

void RainDrop::reloadTex() {
    tex0.load(image_dir.getPath(current_tex0));
    tex0.resize(info->screen_size.x, info->screen_size.y);
    tex1.load(image_dir.getPath(current_tex1));
    tex1.resize(info->screen_size.x, info->screen_size.y);
};


void RainDrop::windowResized(glm::vec2 size) {
    BaseScene::windowResized(size);
    
    getFbo()->allocate(size.x, size.y, GL_RGBA);
    main_scene.allocate(size.x, size.y, GL_RGBA);
    main_plane.set(size.x*2., size.y*2.);
    tex0.allocate(info->screen_size.x, info->screen_size.y, OF_IMAGE_COLOR_ALPHA);
    tex1.allocate(info->screen_size.x, info->screen_size.y, OF_IMAGE_COLOR_ALPHA);
    
    tex0.load(image_dir.getPath(current_tex0));
    tex0.resize(info->screen_size.x, info->screen_size.y);
    tex1.load(image_dir.getPath(current_tex1));
    tex1.resize(info->screen_size.x, info->screen_size.y);
    
    large_scene.allocate(size.x, size.y, GL_RGBA);
    
//    large_drops.clear();
}
