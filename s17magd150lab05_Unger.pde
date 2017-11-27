int rectX, rectY;
int circleX, circleY;
int rectSize = 50;
int circleSize = 50;
color cirColor, recColor, baseColor;
color baseColor2, baseColor3;
color currentColor;
boolean rectOver = false;
boolean circleOver = false;
String one = "Don't Push";
String two = "Push";

void setup(){
  size(600,400);
  baseColor = color(255,255,0);
  cirColor = color(100,255,100);
  recColor = color(255,100,100);
  baseColor2 = color(100,200,150);
  baseColor3 = color(200,100,100);
  currentColor = baseColor;
  circleX = 300;
  circleY = 100;
  rectX = 275;
  rectY = 300;
  ellipseMode(CENTER);
  
}

//makes the buttons and them change if rolled over
void draw(){
  update(mouseX,mouseY);
  background(currentColor);
  noStroke();
  
  if (rectOver){
    fill(255);
  }else{
    fill(recColor);
  }
  rect(rectX,rectY,rectSize,rectSize);
  fill(0);
  text(one,270,370);
  
  
  if (circleOver){
    fill(255);
  }else{
    fill(cirColor);
  }
  ellipse(circleX,circleY,circleSize,circleSize);
  fill(0);
  text(two,285,140);

}

//got code from processing.org to get it right, but changed some things
void update(int x, int y){
   if (overCirc(circleX,circleY,circleSize)){
     circleOver = true;
     rectOver = false;
   }else if (overRect(rectX,rectY,rectSize,rectSize)){
     circleOver = false;
     rectOver = true;
   }else{
     circleOver = rectOver = false;
   }
}

//when mouse pressed background changes and other stuff happens
void mousePressed(){
   if (circleOver){
     currentColor = baseColor2;
     background(baseColor2);
     fill(100,100,200);
     rect(0,0,600,200);
     fill(255);
     text("welcome to another dimension",200,100);
     noLoop();
   }
   if (rectOver){
     currentColor = baseColor3;
     println("You exploded and died");
   }
}

//again, main code from processing.org
boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCirc(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}