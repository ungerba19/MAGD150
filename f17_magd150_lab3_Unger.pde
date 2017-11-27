float w = 0;
float h = 0;
float g = max(0,200);
float b = min(0,200);
float aa = 200;
float ab = 250;


void setup(){
  size(200,200);
  background(255);
  frameRate(8);
}

void draw(){
  //bubble base
  stroke(random(230,255));
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY,w,h);
  fill(0,g,b,40);
  
  //change size
  if (mousePressed){
    w = w - 1;
    h = h - 1;
  }else{
    w = w + 1;
    h = h + 1;
    constrain(w,0,50);
    constrain(h,0,50);
  }
  
  //one print thing
  if (w > 40 || h > 40){
    println("too big!");
  }
  
  //change color
  if (mouseX > width/2){
    g = aa;
  }else{
    g = ab; 
  }
  
  //change color
  if (mouseY > height/2){
    b = aa;
  }else{
    b = ab; 
  }
  
  //another print thing
  if (keyPressed){
    println("Clear!");
  }
  
}

//clears screen
void keyPressed(){
  background(255);
}