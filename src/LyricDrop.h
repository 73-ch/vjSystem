//#pragma once
//
//#include "common_settings.h"
//#include "BaseScene.h"
//
//
//class LyricDrop : public BaseScene {
//    ofPlanePrimitive plane;
//    ofShader shader;
//
//    void reloadShader();
//
//public:
//    LyricDrop(const BasicInfos* g_info);
//
//    void setup() override;
//    void initOsc() override;
//    void update() override;
//    void draw() override;
//
//    void windowResized(glm::vec2 size) override;
//
////    ofTrueTypeFont font;
////    ofEasyCam cam;
////
////    string test_text;
////    vector<string> texts;
////    vector<Phrase> phrases;
////    vector<ofMesh> shapes;
////
////    vector<string> splitText(string input) {
////        regex separator{" "};
////
////        vector<string> splitted_text;
////
////        auto ite = sregex_token_iterator(input.begin(), input.end(), separator, -1);
////        auto e = sregex_token_iterator();
////        while (ite != e) {
////            splitted_text.push_back(*ite++);     // 分割文字列を格納
////        }
////
////        return splitted_text;
////    }
//};
