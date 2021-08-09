Mover[] movers = new Mover[20];
int max_radius = 50;
int movers_cnts = 1;

void setup() {
    size(640, 512);
    smooth();
    for (int i = 0; i < movers_cnts; i++) {
        movers[i] = new Mover(int(random(max_radius)));
    }
}

void draw() {
    background(255);
    for (int i = 0; i < movers_cnts; i++) {
        movers[i].check_edges();
        movers[i].update();
        movers[i].display();
    }
}