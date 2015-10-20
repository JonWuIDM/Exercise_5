class MyMonster {

  int w = 800;
  int ang = 45;
  float wanderX = 0;
  float wanderY = 0;
  float x;
  float y;
  color s1;
  color s2;
  color wort; // purple wart


  MyMonster(float posX, float posY, color sk1, color sk2, color _wort) {
    // everything here is referencing back to the global variables 
    //https://www.youtube.com/watch?v=PP4_96YzBnM
    x = posX;
    y = posY;
    wort = _wort;
    s1 = sk1;
    s2 = sk2; 
    
    
  }

  void monsterBody(int wide, int tall) {
    smooth(); 
    curve(w/2 - 100 + x, w/2-100 + y, w/2 - 50 + x, w/2-200 + y, w/2 + 10 + x, w/2 -100 + y, w/2 -20 + x, w/2 + 20 + y); //left antenna
    curve(w/2 + 120 + x, w/2-80 + y, w/2 + 50 + x, w/2-200 + y, w/2 - 10 + x, w/2 - 100 + y, w/2 -20 + x, w/2 + 40 + y); //right antenna
    //fill(59, 275, 64); //darker green
    fill(s1);
    ellipse(w/2 + x, w/2 + y, wide, tall); //body 120, 160
    //fill(wort); // purple
    fill(wort);
    noStroke(); 
    ellipse(w/2 - 20 + x, w/2 + 30 + y, 20, 10);  //wart
  }
  void head(int wid, int hei) {
    //head
    //fill(59, 220, 64); // lighter green
    fill(s2);
    stroke(0); 
    ellipse(w/2 + x, w/2 - 120 + y, wid, hei); //head // 100, 80
    fill(0);
    rect(w/2 - 25 + x, w/2 - 105 + y, 60, 1); //mouth
    fill(255);
    triangle(w/2 + 15 + x, w/2 - 90 + y, w/2 + x, w/2-105 + y, w/2 + 30 + x, w/2 - 105 + y); //tooth
    eye(wanderX, wanderY);
    //fill(60, 189, 64); //lighter green
    fill(s1);
    ellipse(w/2 - 50 + x, w/2 - 200 + y, 20, 20); // left antenna point
    ellipse(w/2 + 50 + x, w/2 - 200 + y, 20, 20); // right antenna point
    noFill();
  }

  void eye(float wX, float wY) { // eye(wanderX, wanderY); > changed into eye(wX, wY); 
    // When head calls eye we can input anything, because its changed when it reaches eye();
    //eye
    fill(193, 255, 64); //greenish yellow
    ellipse(w/2 - 15 + x, w/2 - 120 + y, 15, 15); //left eye
    ellipse(w/2 + 25 + x, w/2 - 120 + y, 15, 15); //right eye
    fill(0);
    ellipse(w/2 - 15 + wX + x, w/2 - 120 + wY + y, 5, 5); //left pupil
    ellipse(w/2 + 25 + wX + x, w/2 - 120 + wY + y, 5, 5); //right pupil
    noFill();
  }
  
  void update() {
  wanderX = map(mouseX, 0, width, -5, 5); 
  print("wanderX is  ");
  println(wanderX);

  wanderY = map(mouseY, 0, width, -1, 1);
}

// test 
  void test() {
    fill(255);
    ellipse(400, 400, 50, 50);
  }
}