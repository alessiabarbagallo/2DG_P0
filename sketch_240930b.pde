
import processing.pdf.*;

boolean record;

void setup(){
  size(300,300);
  frameRate(2);
}
void draw (){
  if(record){
    beginRecord(PDF, "silla-####.pdf");
  }
  silla (random(10,150),random(8.125,55));
  
  //silla (40,32.5);
  if (record) {
    endRecord();
  record = false;
  }
}

void silla (float ample, float alt) {
  background(220);
  noStroke();
  rectMode(CENTER);
  fill(#f38d0c);
  
  rect(ample,alt,ample*2,alt*2);
  fill(#fcc493);
  rect(ample,alt*3.15,ample/2.5,alt*4);
  fill(#f38d0c);
  rect(ample,alt*3.45,ample*2,alt-20);
  fill(#fcc493);
  rect(ample,alt*5.1,ample*2.05,alt*0.215);
}

void mousePressed() {
  record = true;
}
