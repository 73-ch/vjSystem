//
//#include "LyricDrop.h"
//
//LyricDrop::LyricDrop(const BasicInfos* g_info) : BaseScene(g_info) {
//    name = "LyricDrop";
//    cam.setFarClip(2000.);
//
//    ofTrueTypeFontSettings settings("NotoSansCJKjp-Medium.otf", 32);
//    settings.addRanges(ofAlphabet::Latin);
//    settings.addRanges(ofAlphabet::Japanese);
//    settings.contours = true;
//    font.load(settings);
//
//    test_text = "アイデンティティがない 生まれない らららら アイデンティティがない 生まれない らららら 好きな服はなんですか?好きな本は?好きな食べ物は何? そう そんな物差しを持ち合わせてる僕は凡人だ 映し鏡 ショーウインドー 隣の人と自分を見比べる そう それが真っ当と思い込んで生きてた どうして 今になって 今になって そう僕は考えたんだろう? どうして まだ見えない 自分らしさってやつに 朝は来るのか? アイデンティティがない 生まれない らららら アイデンティティがない 生まれない らららら 風を待った女の子 濡れたシャツは今朝の雨のせいです そう 過去の出来事 あか抜けてない僕の思い出だ 取りこぼした十代の思い出とかを掘り起こして気づいた これが純粋な自分らしさと気づいた どうして 時が経って 時が経って そう僕は気がついたんだろう? どうして 見えなかった自分らしさってやつが 解りはじめた どうしても叫びたくて 叫びたくて 僕は泣いているんだよ どうしても気づきたくて 僕は泣いているんだよ";
//    texts = splitText(test_text);
//}
//
//void LyricDrop::initOsc() {
//
//}
//
//void LyricDrop::setup() {
//
//}
//
//void LyricDrop::update() {
//    auto itr = phrases.begin();
//
//    while (itr != phrases.end()) {
//        if (itr->update()) {
//            itr++;
//        } else {
//            itr = phrases.erase(itr);
//        }
//    }
//
//    if (phrases.size() > 0) cam.lookAt(phrases[phrases.size() - 1].getPosition());
//}
//
//void LyricDrop::draw() {
//    begin();
//    cam.begin();
//
//    for (auto phrase : phrases) {
//        ofPushMatrix();
//        phrase.draw();
//        ofPopMatrix();
//    }
//
//
//
//    cam.end();
//
//
//    end();
//}
//
//void LyricDrop::windowResized(glm::vec2 size) {
//    BaseScene::windowResized(size);
//    getFbo()->allocate(size.x, size.y, GL_RGBA);
//}
