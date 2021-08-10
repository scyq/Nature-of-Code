Pendulum p;

void setup() {
    size(300, 300);
    p = new Pendulum(new PVector(width / 2, height / 3), 120);
}

void draw() {
    background(255);
    p.go();
}
