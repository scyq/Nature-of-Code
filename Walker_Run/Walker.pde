class Walker {
    float x;
    float y;
    
    Walker() {
        x = width / 2;
        y = height / 2;
    }
    
    void display() {
        stroke(0);
        point(x, y);
    }
    
    void step() {
        float step_x = random( -1, 1);
        float step_y = random( -1, 1);
        x += step_x;
        y += step_y;
    }
}
