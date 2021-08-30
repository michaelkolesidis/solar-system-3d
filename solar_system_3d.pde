// An array of planet objects
Planet[] planets = new Planet[8];

void setup() {
  fullScreen(P3D);
  
  // The planet objects are initialized using the counter variable
  for (int i = 0; i < planets.length; i++ ) {
    planets[i] = new Planet(256 + i*80, 4+i*4);
  }
}

void draw() {
  background(0);
  
  // Drawing the Sun
  pushMatrix();
  translate(width/2,height/2);
  rotateX(radians(-10));
  noStroke();
  lights();
  fill(245, 210, 5);
  sphere(128);
  
  // Drawing all Planets
  for (int i = 0; i < planets.length; i++ ) {
    planets[i].update();
    planets[i].display();
  }
  popMatrix();
}
