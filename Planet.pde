
class Planet {
  // Each planet object keeps track of its own angle of rotation.
  float theta;      // Rotation around sun
  float diameter;   // Size of planet
  float distance;   // Distance from sun
  float orbitspeed; // Orbit speed
  color c;

  Planet(float distance_, float diameter_) {
    distance = distance_;
    diameter = diameter_;
    theta = 0;
    orbitspeed = random(0.01, 0.02);
    c =  color(random(255), random(255), random(255));
  }

  void update() {
    // Increment the angle to rotate
    theta += orbitspeed;
  }

  void display() {
    // Before rotation and translation, the state of the matrix is saved with pushMatrix().
    pushMatrix(); 
    // Rotate orbit
    rotateY(theta);
    //rotateZ(radians(90));

    // Translate out distance
    translate(distance, 0); 
    
    fill(c);
    sphere(diameter);
    // Once the planet is drawn, the matrix is restored with popMatrix() so that the next planet is not affected.
    popMatrix();
  }
}
