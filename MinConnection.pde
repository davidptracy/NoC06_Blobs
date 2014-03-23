

class MinConnection extends VerletConstrainedSpring2D {

// or
// class MinConnection extends VerletMinDistanceSpring2D {

  MinConnection(Particle p1, Particle p2, float len, float strength) {
    super(p1, p2, len*2, strength, len*3);
  }

  void display() {
    stroke(255, 0, 0);
    line(a.x, a.y, b.x, b.y);
  }
}

