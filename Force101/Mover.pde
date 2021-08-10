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
        radius = mass * 12;
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
    
    boolean is_inside(Liquid l) {
        if (location.x > l.x && location.x < l.x + l.w && location.y > l.y && location.y < l.y + l.h) {
            return true;
        }
        return false;
    }
    
    void drag(Liquid l) {
        float speed = velocity.mag();
        float drag_mag = l.c * speed * speed * radius * 0.008;
        PVector drag = velocity.get();
        drag.mult( -1);
        drag.normalize();
        drag.mult(drag_mag);
        apply_force(drag);
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