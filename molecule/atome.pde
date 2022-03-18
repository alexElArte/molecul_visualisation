// atome //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
// atom -> show
int[] count = {0, 0, 0, 0, 0};
char[] atom_name = {'C', 'H', 'B', 'N', 'O'};

boolean a = false;

// size -> 3D simulation
int size = 40;  // sphere's size
int len = 150;  // doublet's length
int r =10;     // doublet's rayon
int space =10; // space between 2 doublets

void c() { // Carbon
  fill(0);
  sphere(size);
  count[0]++;
}
void h() { // Hydrogène
  fill(255);
  sphere(size);
  count[1]++;
}
void o() { // Oxygène
  fill(255, 0, 0);
  sphere(size);
  count[4]++;
}
void n() { // Azote
  fill(0, 0, 255);
  sphere(size);
  count[3]++;
}

void back() {
  translate(-len, 0, 0);
}
void go(boolean bi) { // Déplacement, double connexion
  stroke(0, 255, 0);
  strokeWeight(r);
  if (bi) {
    line(0, 0, space, len, 0, space);
    line(0, 0, -space, len, 0, -space);
  } else {
    line(0, 0, 0, len, 0, 0);
  }
  noStroke();
  translate(len, 0, 0);
}
void turn(float deg) {
  rotateY(radians(deg));
}

void formul(float x, float y) { // Affiche la formule chimique de la molécule
  int dec = 0;
  for (int i = 0; i<count.length; i++) {
    if (count[i] > 1) {
      text(atom_name[i], x+dec*10, y);
      dec++;
      text(count[i], x+dec*10, y+7);
      dec++;
    }
    if (count[i] == 1) {
      text(atom_name[i], x+dec*10, y);
      dec++;
    }
    count[i] = 0;
  }
}

// Preset de molécule
// paracétamol C8H9O2N
/*c();go(!a);c();turn(-60);go(a);h();back();turn(120);go(a);c();turn(-60);
 go(a);h();back();turn(120);go(!a);c();turn(-60);go(a);o();turn(60);go(a);
 h();back();turn(-60);back();turn(120);go(a);c();turn(-60);go(a);h();back();
 turn(120);go(!a);c();turn(-60);go(a);h();back();turn(120);go(a);turn(-60);
 go(a);n();rotateX(radians(60.53));turn(-60.53);go(a);h();back();turn(60.53);
 rotateX(radians(-60.53));turn(60.53);go(a);c();turn(60);go(!a);o();back();
 turn(-120);go(a);c();turn(60.53);go(a);h();back();turn(-60.53);
 rotateX(radians(119.47));turn(60.53);go(a);h();back();turn(-60.53);
 rotateX(radians(119.47));turn(60.53);go(a);h();*/
// méthane CH4
/*c();for(byte j = 0;j < 3;j++){rotateZ(radians(29.47));go(a);h();back();
 rotateZ(radians(-29.47));turn(120);}rotateZ(radians(-90));go(a);h();*/
