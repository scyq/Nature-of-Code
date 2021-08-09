class Walker {
    float x;
    float y;
    float tx;
    float ty;
    float perlin_step;
    
    Walker() {
        x = width / 2;
        y = height / 2;
        tx = 0;
        ty = 10000;
        perlin_step = 0.01;
    }
    
    void display() {
        ellipse(x, y, 16, 16);
    }
    
    void step() {
        x = map(noise(tx), 0, 1, 0, width);
        y = map(noise(ty), 0, 1, 0, height);
        tx += perlin_step;
        ty += perlin_step;
    }
}
