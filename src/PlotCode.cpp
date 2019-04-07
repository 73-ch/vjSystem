#include "PlotCode.h"
CodePlotter::CodePlotter(const BasicInfos* g_info) {
    info = g_info;
    color = ofColor(255);
    start_line = 0;
    update_span = 0.5;
    interval = 6.0;
    string_count = 0;
}

void CodePlotter::setText(string text) {
    string_count = 0;
    start_line = 0;
    last_updated = info->time - update_span;
    shown_text = text;
    splitTextByLine();
}

void CodePlotter::update() {
    if (shown_text.length() > string_count) {
        string_count++;
        splitTextByLine();
    }
    
    if (info->time > last_updated + update_span) {
        int length = max({int(line_splitted_text.size() - floor(info->screen_size.y / 20)), 0}) + 1;
    
        start_line = (start_line + 1) % length;
        last_updated = (start_line+1) % length ==  0 ? info->time + interval : info->time;
    }
}

void CodePlotter::draw() {
    ofSetColor(color);
    for (int i = 0; i < line_splitted_text.size(); i++) {
        if (line_splitted_text.size() <= i+start_line) break;
        if (line_splitted_text[i+start_line].length() > 0) ofDrawBitmapString(line_splitted_text[i+start_line], 20, 20*i);
    }
}

void CodePlotter::splitTextByLine() {
    
    line_splitted_text.clear();
    
    regex separator{"\n"};
    auto tmp_text = shown_text.substr(0,string_count);
    
    auto ite = sregex_token_iterator(tmp_text.begin(), tmp_text.end(), separator, -1);
    auto end = sregex_token_iterator();
    while (ite != end) {
        line_splitted_text.push_back(*ite++);     // 分割文字列を格納
    }
    
    
    
}
