class Confetti extends Particle {    
    Confetti(PVector _location) {
        location = _location.get();
        acceleration = new PVector(0, 0.05);
        velocity = new PVector(random( -1, 1), random( -2, 0));
        lifespan = 255;
    }
    
    void display() {
        stroke(0, lifespan);
        fill(175, lifespan);
        rect(location.x, location.y, 8, 8);
    }
}