//pdf
import processing.pdf.*;

//load string from other file
String lookup = "lookup.txt";
String[] line;
PFont cool, neat;
float x;
float y;
int count;

void setup(){
  size(400,560);
  line = loadStrings(lookup);
  
  //create 2 fonts
  cool = createFont("Corbel Bold.ttf",100,true);
  neat = createFont("Gabriola.ttf",20,true);
  x = width/2;
  y = 0;
  
  //change alignment
  textAlign(CENTER,BOTTOM);
  beginRecord(PDF,"example.pdf");
}

void draw(){
  background(100,150,200);
  fill(255);
  textFont(neat,20);
  text("You Failed",x,540);
  textFont(cool,100);
  text(line[0],x,y);
  
  //make string move
  y = y+4;
  endRecord();
  
}