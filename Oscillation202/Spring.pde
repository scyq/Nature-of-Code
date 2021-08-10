class Spring {
    PVector anchor;
    float len;
    float k;
    
    Spring(float x, float y, float _len) {
        anchor = new PVector(x, y);
        len = _len;
        k = 0.0009;
    }
    
    void hooke_law(Bob b) {
        PVector force = PVector.sub(anchor, b.location);
        float d = force.mag();
        float stretch = d - len;
        force.normalize();
        force.mult(stretch * k);
        b.apply_force(force);
    }
    
    void display(Bob b) {
        fill(100);
        rectMode(CENTER);
        rect(anchor.x, anchor.y, 10, 10);
        stroke(0);
        line(b.location.x, b.location.y, anchor.x, anchor.y);
    }
}