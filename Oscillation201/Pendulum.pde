class Pendulum {
    PVector location;
    PVector pivot;
    PVector origin;
    float r;
    float angle;
    float aVelocity;
    float aAcceleration;
    float damping;
    
    Pendulum(PVector _pivot, int _r) {
        pivot = _pivot.get();
        location = new PVector();
        r = _r;
        angle = PI / 2;
        aVelocity = 0;
        aAcceleration = 0;
        damping = 0.995;
    }
    
    void go() {
        update();
        display();
    }
    
    
    void update() {
        float gravity = 0.01;
        aAcceleration = -1 * gravity * sin(angle);
        aVelocity += aAcceleration;
        angle += aVelocity;
        aVelocity *= damping;
    }
    
    void display() {
        location.set(r * sin(angle), r * cos(angle), 0);
        location.add(pivot);
        stroke(0);
        line(pivot.x, pivot.y, location.x, location.y);
        fill(255);
        ellipse(location.x, location.y, 16, 16);
    }
}