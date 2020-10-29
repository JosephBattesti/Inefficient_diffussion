int N=255;
int pasx=8;
int pasy=8;
Volume [][] Matrice; 
int Mx;
int My;
float D=0.2;
PImage img;
import com.hamoid.*;
VideoExport videoExport;

void setup() {
  size(1000,500);
  background(255);
  stroke(0);
  fill(20);
  Matrice = new Volume[int(width/pasx)][int(height/pasy)];
  Mx=Matrice.length;
  My=Matrice[0].length;
  frameRate(60);
  img  = loadImage("images/diff2.png");
  
  //initialisation de la matrice
  for (i=0;i<Mx;i+=1){
     for (j=0;j<My;j+=1){
       Matrice[i][j]= new Volume(0,0,0);
     }
  }
  
  //Source d'une image
  int W=int(Mx*1.8/2);//int(width/pasx)/2;
  int H=int(My*1.6/2);//int(height/pasy)/2;
  float[][] ci=reduce(img,H,W);
  
  for (int x  = 0; x < W; x++) {
    for (int y = 0; y < H; y++ ) {

   if (ci[x][y]<230){
     print(x,y);
     Matrice[x+4][y+6].addBParticle(400);
      Matrice[x+3][y+6].addGParticle(400);
     
       }
     }
    }
  videoExport = new VideoExport(this);
  videoExport.startMovie();
  }

void draw() {
 D+=0.02*D;
 background(0);
 stroke(0);
 diffuse(); 
 videoExport.saveFrame();
}

 void keyPressed() {
  if (key == 'q') {
    videoExport.endMovie();
    exit();
  }
  }
  
  void mousePressed() {
    int i=int(mouseX/pasx);
    int j=int(mouseY/pasy);
    
    //Localisé
       // Matrice[i][j].addGParticle(10000);
    //Non localisé
      for (l=i-60;l<i+60;l++){
        for (k=j-60;k<j+60;k++){
          Matrice[i][j].addBParticle(1);
        }
     }
  }
