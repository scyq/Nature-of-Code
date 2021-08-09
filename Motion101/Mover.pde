class Mover {
    PVector location;
    PVector velocity;
    PVector acceleration;
    
    int radius;
    
    Mover(int r) {
        location = new PVector(width / 2, height / 2);
        velocity = new PVector(0, 0);
        radius = r;
    }
    
    void update() {
        acceleration = PVector.sub(new PVector(mouseX, mouseY), location).mult(0.001 / radius);
        velocity.add(acceleration);
        location.add(velocity);
    }
    
    void display() {
        stroke(0);
        fill(255);
        ellipse(location.x, location.y, radius, radius);
    }
    
    
    void check_edges() {
        if (location.x < 0) {
            location.x = width;
        } else if (location.x > width) {
            location.x = 0;
        }
        
        if (location.y < 0) {
            location.y = height;
        } else if (location.y > height) {
            location.y = 0;
        }
    }
}