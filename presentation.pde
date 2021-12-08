import fisica.*;

FWorld world;
FBox platform;
FBox proj_1;
FBox proj_2;
FBox box_1;
FBox box_2;

boolean left, right, onGround;

void setup() {
  size(800,800);
  Fisica.init(this);
  
  world = new FWorld();
  world.setEdges();
  
  platform = new FBox(width, 100);
  platform.setPosition(width/2, height * 0.8);
  platform.setStatic(true);
  
  proj_1 = new FBox(30,30);
  proj_1.setPosition((4 * width) / 6, height / 8);
  proj_2 = new FBox(30,30);
  proj_2.setPosition((6 * width) / 7, height / 8);
  box_1 = new FBox(30,80);
  box_1.setPosition(width / 4, height * 0.6);
  box_2 = new FBox(100,70);
  box_2.setPosition(width / 4, height * 0.5);
  
  world.add(platform);
  world.add(proj_1);
  world.add(proj_2);
  world.add(box_1);
  world.add(box_2);
}

void draw() {
  background(#000000);
  
  world.step();
  world.draw();
  kill();
}

void kill() {
  if (keyPressed && (key == 'q')) {
    exit(); 
  }
}
