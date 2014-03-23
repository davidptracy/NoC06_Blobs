import toxi.physics2d.behaviors.*;
import toxi.physics2d.*;
import toxi.geom.*;
import toxi.math.*;

VerletPhysics2D physics;
Blob blob; //declare blob object

void setup() {
  size(800, 800);
  physics=new VerletPhysics2D();
  physics.addBehavior(new GravityBehavior(new Vec2D(0, 0.05))); 
  physics.setWorldBounds(new Rect(0, 0, width, height)); 
  blob = new Blob();
//  frameRate(1);
}

void draw() {
  background (255);  
  physics.update();  
  blob.display();
}

