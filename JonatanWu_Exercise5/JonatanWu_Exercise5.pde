//Bob's Friends
//Jonatan Wu


MyMonster bob;
MyMonster joe;
MyMonster carl;
MyMonster randy;
MyMonster mhm;

void setup() {

  size(800, 800);
  // Monster need float float, 3 colors;
  // Position 
  bob = new MyMonster(50, -100, color(0, 70, 9), color(0, 0, 70), color(70, 50, 50));
  joe = new MyMonster(0, 0, color(90, 70, 80), color(50, 70, 80), color(150, 50, 150));
  carl = new MyMonster(-200, 170, color(200, 70, 70), color(110, 200, 50), color(70, 50, 150));
  randy = new MyMonster(-150, -150, color(35, 70, 80), color(70, 90, 120), color(120, 50, 150));
  mhm = new MyMonster(-90, 150, color(120, 70, 80), color(70, 30, 40), color(70, 90, 150));
}


void draw() {
  background(255);
  //1 ORIGINAL!
  bob.monsterBody(200, 200);
  bob.head(100, 100);
  bob.update();
  // 2 
  joe.monsterBody(200, 500); 
  joe.head(40, 150);
  joe.update();
  //3
  carl.monsterBody(200, 500); 
  carl.head(200, 100);
  carl.update();
  //4
  randy.monsterBody(200, 100); 
  randy.head(200, 200);
  randy.update();
  //5
  mhm.monsterBody(150, 150); 
  mhm.head(150, 200);
  mhm.update();
}


// Dunno why the cordinate system is screwed up, instead of it being in the top left corner its in the center. 