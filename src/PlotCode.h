#pragma once

#include "common_settings.h"
#include <regex>

class CodePlotter {
    
    string shown_text;
    const BasicInfos* info;
    vector<string> line_splitted_text;
    
    
    int start_line;
    float update_span;
    float last_updated;
    float interval;
    int string_count;
    float speed;
    
public:
    CodePlotter(const BasicInfos* g_info);
    void setText(string text);
    void setSpeed(const float g_speed);
    void update();
    void draw();
    void splitTextByLine();
    
    ofFloatColor color;
    
};
