vec2 polar2ortho(float r, float a) {
    return vec2(cos(r), sin(r)) * a;
}