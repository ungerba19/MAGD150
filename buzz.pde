//used the class mover array example and changed it to my item
class buzz{
  color body, stripe, wing;
  PVector position, velocity, acceleration;
  float topspeed;
  int offset1,offset2,offset3,offset4;
  
//setting the variables  
  buzz(){
    body = color(255,255,100); 
    stripe = color(0);
    wing = color(200,70);
    position = new PVector(random(width),random(height));
    velocity = new PVector(0,0);
    topspeed = 10;
    offset1 = 28;
    offset2 = 5;
    offset3 = 20;
    offset4 = 13;
  }

  //making them move with the Mover code
  void update(){
    PVector mouse = new PVector(mouseX,mouseY);
    acceleration = PVector.sub(mouse,position);
    acceleration.normalize();
    acceleration.mult(0.2);
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    position.add(velocity);
  }

  //display buzz (aka bees)
  void display(){
    noStroke();
    fill(body);
    ellipse(position.x,position.y,50,35);
    fill(stripe);
    ellipse(position.x + offset3,position.y,7,7);
    fill(wing);
    ellipse(position.x - offset2,position.y - offset1,25,30);
    ellipse(position.x + offset2,position.y - offset1,25,30);
    stroke(stripe);
    strokeWeight(10);
    line(position.x,position.y + offset4,position.x,position.y - offset4);
    
  }
  
}