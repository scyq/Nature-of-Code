Mover[] movers;
Attractor a;

void setup() {
    size(600, 600);
    a = new Attractor();
    movers = new Mover[6];
    for (int i = 0; i < 6; i++) {
        movers[i] = new Mover(random(2, 10), random(width / 2), random(height / 3));
    }
}

void draw() {
    background(255);
    a.display();
    for (int i = 0; i < 6; i++) {
        for (int j = 0; j < 6; j++) {
            Mover m = movers[i];
            m.apply_force(a.attract_force(m));
            if (i != j) {
                m.apply_force(m.attract_force(movers[j]));
            }
            m.update();
            m.display();
        }
    }
}
