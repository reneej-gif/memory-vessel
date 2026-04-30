
color sun = #FFDF22;
color birdColor = #F5F5EF;
color skyColor = #B4DCFF;
color pondColor = #28503C;
float x;
float birdY=0;
float birdSpeed=0.3;
float r1=0;
float r2=-300;
float r3=-600;

void setup() {
  size(800, 700);
  x=0;
}

void draw() {
  noStroke();

  for (int i=0; i<height; i=i+1) {
    stroke(40+i/6, 80+i/2, 60+i);
    line(0, height/2+i, width, height/2+i);
  }

  //ripple
  noFill();
  stroke(pondColor);
  if (r1>0) {
    stroke(40, 80, 60, 255-r1/2);
    ellipse(410, 452, 40+r1, 1+r1/4);
  }
  r1=r1+3;
  if (r1>800) r1=0;

  if (r2>0) {
    stroke(40, 80, 60, 255-r2/2);
    ellipse(410, 452, 40+r2, 1+r2/4);
  }
  r2=r2+3;
  if (r2>800) r2=0;

  if (r3>0) {
    stroke(40, 80, 60, 255-r3/2);
    ellipse(410, 452, 40+r3, 1+r3/4);
  }
  r3=r3+3;
  if (r3>800) r3=0;

  noStroke();
  fill(240, 164, 157);
  rect(0, 0, width, height/2);
  for (float i=0; i<350; i=i+2) {
    stroke(245, 143+i/6, 143);
    line(0, 0+i, width, 0+i);
  }

  //sun
  for (int y=0; y<90; y=y+1) {
    stroke(250, 229-y/2, 63);
    noFill();
    arc(90, 200, 0+y, 0+y, 0, PI*2);
  }
  for (float i=0; i<150; i=i+2) {
    stroke(255, 200, 50, 150-i);
    strokeWeight(2);
    line(45-i/2, 350+i, 135+i/2, 350+i);
  }

  //bird movement
  birdY=birdY+birdSpeed/2;
  if (birdY>5) {
    birdSpeed=birdSpeed*-1;
  } else if (birdY<-5) {
    birdSpeed=birdSpeed*-1;
  }

  //some bird ?
  noStroke();
  fill(242, 202, 56);
  triangle(423, 385+birdY, 439, 393+birdY, 425, 395+birdY);
  fill(birdColor);
  stroke(227, 227, 216);
  circle(400, 395+birdY, 50);
  ellipse(410, 420+birdY, 80, 60);


  randomSeed(60);
  for (int z=0; z<30; z=z+1) {
    float a = random(0, width * 2);
    float b = random(50, 285);
    float size = random(90, 180);

    fill(230, random(230, 240), random(240, 255), random(70, 225));
    noStroke();

    ellipse(a+x,b,size, size*0.6);
    ellipse(a+40+x, b+20, size, size*0.4);
    
    ellipse(a+x-(width*2+20), b, size, size*0.6);
    ellipse(a+40+x-(width*2+20), b+20, size, size*0.4);
  }

  x=x+0.21;
  if (x>= width*2) {
    x=-20;
  }
}
