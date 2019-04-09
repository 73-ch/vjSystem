#include "RigidText.hpp"

RigidText::RigidText(ofxBulletWorldRigid& _world,const ofTrueTypeFont& font_):world(_world),font(font_) {
    set = false;
}

void RigidText::setText(const string text, const float thickness) {
    current_text = text;
    current_thickness = thickness;
    createTextMesh();
    calcOffset();
    createBulletShape();
    set = true;
};

void RigidText::createTextMesh() {
    mesh.clear();
    
    auto font_paths = font.getStringAsPoints(current_text);
    
    for (auto p : font_paths) {

        p.setStrokeWidth(20);
        
        // front mesh
        mesh.append(p.getTessellation());
        
        // back mesh
        auto back = ofMesh(p.getTessellation());
        for (auto& v : back.getVertices()) v.z = current_thickness;
        mesh.append(back);
        
        // side
        vector<ofPolyline> outlines = p.getOutline();
        
        for (auto& l : outlines) {
            ofMesh temp;
            // side verts
            temp.addVertices(l.getVertices());
            
            auto temp_verts = l.getVertices();
            for (auto& v : temp_verts) v.z = current_thickness;
            temp.addVertices(temp_verts);
            
            // side indices
            unsigned int len =temp_verts.size();
            
            for (unsigned int i =0 ; i< len-1; ++i) temp.addIndices({i, i+1, i + len, i +len, i+len+1, i + 1});
            mesh.append(temp);
        }
    }
}

void RigidText::calcOffset() {
    auto bounding_box = font.getStringBoundingBox("hello world", 0, 0);
    offset = vec3(bounding_box.getWidth(), bounding_box.getHeight(), current_thickness) * .5;
}

void RigidText::createBulletShape() {
    shape = new ofxBulletCustomShape();
    
    shape->addMesh(mesh, vec3(0.02), true);

    
    shape->create(world.world, offset * 0.02, quat(ofRandom(1.0), ofRandom(1.0),ofRandom(1.0), PI * ofRandom(1.0)), 3.);
    shape->add();
}

void RigidText::draw() {
    if (set) {
        ofPushMatrix();
        shape->transformGL();
        
        ofScale(0.02);
        mesh.draw();
        
        shape->restoreTransformGL();
        
        ofPopMatrix();
    }
};

