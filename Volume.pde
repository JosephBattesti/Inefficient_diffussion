class Volume { 
  
  int npR;
  int npG;
  int npB;
  
  Volume(int R,int G,int B) {  
    npR=R;
    npG=G;
    npB=B;
  } 
  
  void addRParticle() { 
    npR+=1;  
} 

  void addGParticle() { 
    npG+=1;  
} 

  void addBParticle() { 
    npB+=1;  
} 

  void addRParticle(int R) { 
    npR+=R;  
} 

  void addGParticle(int G) { 
    npG+=G;  
} 

  void addBParticle(int B) { 
    npB+=B;  
} 

  void RemoveRParticle() { 
    npR-=1;  
} 

  void RemoveGParticle() { 
    npG-=1;  
} 

  void RemoveBParticle() { 
    npB-=1;  
} 

  int GetRParticles() {
  return npR;
  }
  
  int GetGParticles() {
  return npG;
  }
  
  int GetBParticles() {
  return npB;
  }
  
  int GetTotParticles() {
  return npB+npG+npR;
  }

 boolean isNotEmpty(){
if(npR==0 && npG==0 && npB==0){
  return false;
}
else{
  return true;
}
 }


}
