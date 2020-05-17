int bx1 = 80;
int bx2 = 280;
int bx3 = 480;
int by1 = 360;
int by2 = 360;
int by3 = 360;
int value = 100;
int RandomX = (int)random(0,width - 50);
int RandomY = (int)random(0,height - 50);
color foodColor;

void setup() {
  size(700,600);
}

void draw() {
  background(0);
  opening();
  food();
  foodMove();
}

void opening() {
  noStroke();
  fill(value);
  rect(bx1,by1,140,60);
  rect(bx2,by2,140,60);
  rect(bx3,by3,140,60);
  rect(250,180,200,14);
  rect(436,180,14,107);
  rect(320,273,130,14);
  textSize(50);
  text("S",285,250);
  text("n",315,250);
  text("e",345,250);
  text("k",375,250);
  text("!",405,250);
  fill(0);
  triangle(250,180,250,194,260,194);
  triangle(320,273,320,287,330,287);
}

void mouseClicked() {
  if (mouseX > bx1 && mouseX < bx1 + 140 && mouseY > by1 && mouseY < by1 + 60) {
    value = 0;
    foodColor = color(255,0,0);
    easy();
  } else if (mouseX > bx2 && mouseX < bx2 + 140 && mouseY > by2 && mouseY < by2 + 60){
    value = 0;
    foodColor = color(255,0,0);
    medium();
  } else if (mouseX > bx3 && mouseX < bx3 + 140 && mouseY > by3 && mouseY < by3 + 60) {
    value = 0;
    foodColor = color(255,0,0);
    hard();
  }
}

void easy() {
  noStroke();
  fill(value);
  rect(0,0,width,height);
}

void medium() {
  noStroke();
  fill(value);
  rect(0,0,width,height);
}

void hard() {
  noStroke();
  fill(value);
  rect(0,0,width,height);
}

void food() {
  strokeWeight(0);
  fill(foodColor);
  rect(RandomX,RandomY,20,20);
}

void foodMove() {
  if(mouseX > RandomX && mouseX < RandomX + 20 && mouseY > RandomY && mouseY < RandomY + 20) {
    RandomX = (int)random(0,width - 50);
    RandomY = (int)random(0,height - 50);
  }
}
  
  
  
  
  
  
  
