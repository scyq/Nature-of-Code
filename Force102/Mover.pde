class Mover {
    PVector location;
    PVector velocity;
    PVector acceleration;
    
    float mass;
    float radius;
    
    Mover(float m, float x, float y) {
        acceleration = new PVector(0, 0);
        location = new PVector(x, y);
        velocity = new PVector(0, 0);
        mass = m;
        radius = mass * 6;
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
    
    void check_edges() {
        if (location.x < 0) {
            location.x = 0;
            velocity.x *= -1;
        } else if (location.x > width) {
            location.x = width;
            velocity.x *= -1;
        }
        
        if (location.y < 0) {
            location.y = 0;
            velocity.y *= -1;
        } else if (location.y > height) {
            location.y = height;
            velocity.y *= -1;
        }
    }
    
    void apply_force(PVector force) {
        PVector f = PVector.div(force, mass);
        acceleration.add(force);
    }
    
    void update() {
        velocity.add(acceleration);
        location.add(velocity);
        acceleration.mult(0);        
    }
    
    void display() {
        stroke(0);
        fill(255);
        ellipse(location.x, location.y, radius, radius);
    }
}