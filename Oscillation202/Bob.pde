class Bob {
    PVector location;
    PVector velocity;
    PVector acceleration;
    
    float mass;
    
    Bob(float x, float y, float m) {
        velocity = new PVector(0, 0);
        acceleration = new PVector(0, 0);
        location = new PVector(x, y);
        mass = m;
    }
    
    void apply_force(PVector force) {
        acceleration.add(PVector.div(force, mass));
    }
    
    void update() {
        velocity.add(acceleration);
        location.add(velocity);
        acceleration.mult(0);
    }
    
    void display() {
        stroke(0);
        fill(255);
        ellipse(location.x, location.y, 20, 20);
    }
}