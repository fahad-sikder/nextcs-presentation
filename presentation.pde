//https://blog.ktbyte.com/fisica-platformer-part-1/
import fisica.*;

FWorld world;
FBox platform;
FBox player;
FBox player2;

boolean left, right, onGround;

void setup() {
  size(800,800);
  Fisica.init(this);
  
  world = new FWorld();
  world.setEdges();
  
  platform = new FBox(width, 100);
  platform.setPosition(width/2, height * 0.8);
  platform.setStatic(true);
  
  player = new FBox(30,30);
  player.setPosition(width / 2, height / 8);
  player2 = new FBox(30,30);
  player2.setPosition(width / 2, height / 8);
  
  world.add(platform);
  world.add(player);
  world.add(player2);
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
