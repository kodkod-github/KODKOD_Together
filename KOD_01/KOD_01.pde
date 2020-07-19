key 'r', 'g', 'b', 'a' to change fill
key 'spacebar' to reset
mouse left changing size
mouse right changing stroke weight

 r=red, g=green, b=blue, a=alpha
 sw=strokeweight
 "n++" = "n+=1" = "n=n+1"
 */

int x, y ; //coordinates of the centre point
int r, g, b; //color
int a = 255; //alpha,opacity
float sw = 0; //stroke weight / line thickness
int size = 0; //diameter of the circle

void setup() {
 size(400, 600); //canvas size
 x = width/2;
 y = height/2;
}

void draw() {
  background(0, 0, 255); //canvas colour
  fill(r, g, b, a);                //fill colour
  stroke(255);                //stroke colour
  strokeWeight(sw);
  ellipse(x, y, size, size);

  if (mousePressed) {
    //change ellipse size
    if (mouseButton == LEFT) {
      size++;
    }

    //change stroke weight
    if (mouseButton == RIGHT) {
      sw+=0.1;
    }
  }

  if (keyPressed) {
    //change RGB+alpha
    if (key=='r') {
      r++;
    }
    if (key=='g') {
      g++;
    }
    if (key=='b') {
      b++;
    }
    if (key=='a') {
      a--;
    }


    //reset
    if (key==' ') {
      r=b=g=0;
      a=255;
      sw=0;
      size=0;
    }
  }

  //show r,g,b,a values
  println("r=", r, ", g=", g, ", b=", b, ", a=", a); 
}
