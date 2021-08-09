Walker w;

void setup() {
    size(640, 512);
    background(255);
    w = new Walker();
}

void draw() {
    w.step();
    w.display();
}
