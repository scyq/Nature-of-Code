ParticleSystem ps;

void setup() {
    size(300, 300);
    ps = new ParticleSystem(new PVector(width / 2, height / 4));
}

void draw() {
    background(255);
    if (mousePressed) {
        ps.addParticle();
        ps.location = new PVector(mouseX, mouseY);
    }
    ps.run();
}
