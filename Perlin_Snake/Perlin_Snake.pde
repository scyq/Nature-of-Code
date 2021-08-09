Walker w;

void setup() {
    size(640, 512);
    w = new Walker();
}

void draw() {
    w.step();
    w.display();
}