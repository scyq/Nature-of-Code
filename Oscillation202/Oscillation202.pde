Bob b;
Spring s;

void setup() {
    size(640, 512);
    b = new Bob(width / 2, height / 4, 1);
    s = new Spring(width / 2, height / 8, 50);
}

void draw() {
    background(255);
    b.apply_force(new PVector(0, 0.05 * b.mass));
    s.hooke_law(b);
    b.update();
    b.display();
    s.display(b);
}
