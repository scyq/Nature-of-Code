import java.util.*;
ArrayList<Particle> particles;

void setup() {
    size(300, 300);
    particles = new ArrayList<Particle>();
}

void draw() {
    background(255);
    if (mousePressed) {
        particles.add(new Particle(new PVector(mouseX, mouseY)));
    }
    Iterator<Particle> it = particles.iterator();
    while(it.hasNext()) {
        Particle p = it.next();
        p.run();
        if (p.is_dead()) {
            it.remove();
        }
    }
}
