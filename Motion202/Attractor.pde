class Attractor {
    float mass;
    PVector location;
    
    Attractor() {
        location = new PVector(width / 2, height / 2);
        mass = 20;
    }
    
    void display() {
        stroke(0);
        fill(176);
        ellipse(location.x, location.y, mass * 4, mass * 4);
    }
    
    PVector attract_force(Mover m) {
        PVector force = PVector.sub(location, m.location);
        float distance = force.mag();
        distance = constrain(distance, 5, 25);
        force.normalize();
        float G = 0.1;
        float strength = (G * mass * mass) / (distance * distance);
        force.mult(strength);
        return force;
    }
}