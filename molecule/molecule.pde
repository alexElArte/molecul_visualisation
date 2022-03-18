// translate(x, y, z); //<>//
// rotateX(rad);
// rotateY(rad);
// sphere

// move -> molecul
long x = 0;
long y = 0;
int depl = 10;

// rotation -> molecul
boolean auto = false;
float rot = 0;
float step = 0.4;

int num_molecul = 0;  // wich molecul we select
int nb_molecul = 2;   // count of molecul


void setup() {
  fullScreen(P3D);
  //size(640, 480, P3D);
}

void keyPressed() {
  switch(keyCode) {
  case 37: 
    x -= depl; 
    break;
  case 39: 
    x += depl; 
    break;
  case 40: 
    y += depl; 
    break;
  case 38: 
    y -= depl; 
    break;
  }
  if(keyCode == 32){
    auto = !auto;
  }
  if(keyCode == 67){
    num_molecul++;
  }
  if(num_molecul >= nb_molecul){
    num_molecul = 0;
  }
}
void mousePressed(){
  if (mouseX >= width-30 && mouseX <= width && mouseY >= 0 && mouseY <= 30) {
    auto = !auto;
  }
}


void draw() {
  background(80);
  textSize(16);
  fill(0);
  text("Frame rate: " + int(frameRate), 10, 20);
  formul(10, 40);
  directionalLight(255, 255, 255, 0, 0, -1);
  noStroke();
  fill(255, 0, 255);
  rect(width-30, 0, width, 30);
  translate(width/2+x, height/2+y, 0);
  rotateX(map(mouseY, 0, height, 0, TWO_PI));
  if (auto) {
    rot = (rot + step)%360;
    rotateY(map(rot, 0, 360, 0, TWO_PI));
  } else {
    rotateY(map(mouseX, 0, width, 0, TWO_PI));
  }
  
  // Add your molecul here
  c();go(!a);c();turn(-60);go(a);h();back();turn(120);go(a);c();turn(-60);
 go(a);h();back();turn(120);go(!a);c();turn(-60);go(a);o();turn(60);go(a);
 h();back();turn(-60);back();turn(120);go(a);c();turn(-60);go(a);h();back();
 turn(120);go(!a);c();turn(-60);go(a);h();back();turn(120);go(a);turn(-60);
 go(a);n();rotateX(radians(60.53));turn(-60.53);go(a);h();back();turn(60.53);
 rotateX(radians(-60.53));turn(60.53);go(a);c();turn(60);go(!a);o();back();
 turn(-120);go(a);c();turn(60.53);go(a);h();back();turn(-60.53);
 rotateX(radians(119.47));turn(60.53);go(a);h();back();turn(-60.53);
 rotateX(radians(119.47));turn(60.53);go(a);h();
}
