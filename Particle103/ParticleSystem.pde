import java.util.*;
class ParticleSystem {
    ArrayList<Particle> particles;
    PVector location;
    
    ParticleSystem(PVector _location) {
        location = _location;
        particles = new ArrayList<Particle>();
    }
    
    void addParticle() {
        float r = random(1);
        if (r < 0.5) {
            particles.add(new Particle(location));
        } else {
            particles.add(new Confetti(location));
        }
    }
    
    void run() {
        Iterator<Particle> it = particles.iterator();
        while(it.hasNext()) {
            Particle p = it.next();
            p.run();
            if (p.is_dead()) {
                it.remove();
            }
        }
    }
    
}