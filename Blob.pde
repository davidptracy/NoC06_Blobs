class Blob {

  ArrayList<Particle> particles;
  ArrayList<Connection> springs;

  Blob() {
    particles = new ArrayList<Particle>();
    springs = new ArrayList<Connection>();

    int n = 9;
    float len = 100;
    float strength = .125;

    for (float theta = 0; theta < TWO_PI; theta += TWO_PI/n) {

      //this is adding particles to the environment        
      Particle p = new Particle(new Vec2D(width/2+(len*cos(theta)), height/2+(len*sin(theta))));
      physics.addParticle(p);
      particles.add(p);

      if (theta > 0) {
        Particle previous = particles.get(particles.size()-2);
        Connection c = new Connection(p, previous, len, strength);
        physics.addSpring(c);
        springs.add(c);
      }      
    }
    
    Connection cLast = new Connection(particles.get(0), particles.get(particles.size()-1), len, strength);
    physics.addSpring(cLast);
    springs.add(cLast);
  }

  void display() {
    for (Connection c : springs) {
      c.display();
    }
    for (Particle p : particles) {
      p.display();
    }
  }
}

