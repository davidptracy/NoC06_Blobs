class Particle extends VerletParticle2D {

  Particle(Vec2D loc) {
    super(loc);
  }

  // All we're doing really is adding a display() function to a VerletParticle
  void display() {
    fill(0);
    noStroke();
    ellipse(x, y, 16, 16);
  }

//  void checkEdges() {
//    if (x < radius) {
//      location.x = radius;
//      velocity.x *= -.5;
//    }
//    if (x > width - radius) {
//      location.x = width - radius;
//      velocity.x *= -.5;
//    }
//    if (y < radius) {
//      location.y = radius;
//      velocity.y *= -.5;
//    }
//    if (y > height - radius) {
//      y = height - radius;
//      
//    }
//  }
}

