Mover[] movers;
Liquid water;
PVector gravity;

void setup() {
    size(640, 512);
    water = new Liquid(0, height / 2, width, height / 2, 0.1);
    movers = new Mover[5];
    for (int i = 0; i < 5; i++) {
        movers[i] = new Mover(random(2, 8), i * 120 + 40, height / 8);
    }
}

void draw() {
    background(255);
    water.display();
    for (int i = 0; i < 5; i++) {
        Mover m = movers[i];
        gravity = new PVector(0, 0.01 * m.mass);
        if (m.is_inside(water)) {
            m.drag(water);
        }
        m.apply_force(gravity);
        m.update();
        m.display();
        m.check_edges();
    }
}
