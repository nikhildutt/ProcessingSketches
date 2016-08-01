void setup (){
  size (1000,1000);
  background (0,0,0);
}
void draw(){
  rectMode(RADIUS);
 fill(100);
 
 if (mousePressed){
   fill (255,0,0);
   println(mouseX);
}
   else {
     fill (0,255,0);
   }
 rect(75,75,90,90);
 ellipse (mouseX,mouseY,300,400);
 fill (150,50,55);
}
