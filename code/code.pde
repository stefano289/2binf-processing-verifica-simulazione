

int xCastello=1000;
int xRon=160;
Edificio castello;
Protagonista ron;


class Edificio{
  PShape castello;
 Edificio(String filenameCastello){
  
  castello=loadShape(filenameCastello);
  castello.setFill(color(118,24,0));
}
void disegnaCastello(int x,int y){
   
      shape(castello,x,y); 
}

}

class Protagonista{
  PShape ron;
  Protagonista(String filenameRon){  
  ron=loadShape(filenameRon);
  ron.setFill(color(255,3,32));

}
void disegna(int x,int y){
  
  shape(ron,x,y);
  
  }
}
void setup() {
  fullScreen(P3D);
  ron=new Protagonista("ron.obj");
  castello=new Edificio("castle.obj");
}

void draw() {
  background(0,0,255);
  lights();
  ron.disegna(xRon,height/2);
  castello.disegnaCastello(xCastello,height/2);
  
    if(xRon<1000){
      xRon+=5;
      
      }
    
    
}
