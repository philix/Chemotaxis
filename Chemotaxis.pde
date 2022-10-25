Walker[] snow;
float snowY = 490;
void setup() {
  size(500, 500);
  snow = new Walker[200];
  for (int i = 0; i<snow.length; i++) {
    snow[i] = new Walker();
  }
}

class Walker {
  int myX, myY;
  int myColor;
  Walker() {//constructor
    myX = (int)(Math.random()*500);
    myY = 0;
    myColor = color(255);
  }
  void walk() {
    myX = myX + (int)(Math.random()*5)-2;
    myY = myY + (int)(Math.random()*5)+1;
    if (myY > snowY) {
      snowY-=0.1;
      fill(255);
      myY = 0;
    }
  }
  void show() {
    ellipse(myX, myY, 15, 15);
  }
}

void draw() {
  background(0);
  fill(255);
  rect(-10, snowY, 520, 20+(height-snowY));
  for (int i = 0; i<snow.length; i++) {
    snow[i].show();
    snow[i].walk();
  }
}
