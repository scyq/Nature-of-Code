class Particle {
    PVector location;
    PVector velocity;
    PVector acceleration;
    float lifespan;
    
    Particle() {
        location = new PVector();
        acceleration = new PVector();
        velocity = new PVector();
        lifespan = 0;
    }
    
    Particle(PVector _location) {
        location = _location.get();
        acceleration = new PVector(0, 0.05);
        velocity = new PVector(random( -1, 1), random( -2, 0));
        lifespan = 255;
    }
    
    void run() {
        update();
        display();
    }
    
    void update() {
        velocity.add(acceleration);
        location.add(velocity);
        lifespan -= 2;
    }
    
    void display() {
        stroke(0, lifespan);
        fill(175, lifespan);
        ellipse(location.x, location.y, 8, 8);
    }
    
    boolean is_dead() {
        return lifespan <= 0;
    }
}