//used the mover array code and tweaked it to my item
buzz[] bees = new buzz[20];

void setup(){
  size(600,600);
  for (int i = 0; i < bees.length; i++){
    bees[i] = new buzz();
  }
}

//calling the functions
void draw(){
  background(200,255,255);

//flower! and somehow the bees avoid the mouse?
  noStroke();
  fill(255,200,200);
  translate(width/2,height/2);
  scale(2);
  ellipse(0,0,100,40);
  rotate(PI/3);
  ellipse(0,0,100,40);
  rotate(PI/3);
  ellipse(0,0,100,40);
  fill(255,255,100);
  ellipse(0,0,40,40);
  rotate(-2*PI/3);
  translate(0,0);
  scale(.5);
  

  
//bees swarm around flower when mouse is at 0,0  
  for (int i = 0; i < bees.length; i++){
    bees[i].update();
    bees[i].display();
  }
}