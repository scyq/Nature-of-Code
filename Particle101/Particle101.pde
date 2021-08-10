Particle p;

void setup() {
    size(300, 300);
    p = new Particle(new PVector(width / 2, height / 3));
}

void draw() {
    background(255);
    p.run();
}
