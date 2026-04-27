
color sun = #FFDF22;
color birdColor = #F5F5EF;
color skyColor = #B4DCFF;
color pondColor = #28503C;
int x;

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


  noFill();
  stroke(pondColor);
  ellipse(410, 450, 40+x, 1+x/4);
  if (x<width*4) {
    x=x+10;
  } else {
    x=-10;
  }

  noStroke();
  fill(skyColor);
  rect(0, 0, width, height/2);
  
  //sun
  for (int y=0; y<90; y=y+1){
  stroke(250,229-y/2,63);
  noFill();
  arc(90, 60, 0+y,0+y,0,PI*2);
  }
  
  //dove
  stroke(227, 227, 216);
  fill(birdColor);
  circle(400, 395, 50);
  ellipse(410, 420, 80, 60);
}
