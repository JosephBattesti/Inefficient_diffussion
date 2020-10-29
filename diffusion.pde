int c,b,nR,nG,nB,nTot,l,i,j,k;
void diffuse() {
  for (i=0;i<Mx;i+=1){
       for (j=0;j<My;j+=1){
      
         if(Matrice[i][j].isNotEmpty()){
           nR=Matrice[i][j].GetRParticles();
           nG=Matrice[i][j].GetGParticles();
           nB=Matrice[i][j].GetBParticles();
           
             for(l=0;l<nR;l+=1){
               b=int(randomGaussian()*D);
               c=int(randomGaussian()*D);
                  if(i+b>=Mx || i+b<0 || j+c>=My ||j+c<0) {
                    b=0;
                    c=0;
                 }
               Matrice[i][j].RemoveRParticle();
               Matrice[i+b][j+c].addRParticle();
           }
           
           for(l=0;l<nG;l+=1){
               b=int(randomGaussian()*D);
               c=int(randomGaussian()*D);
                  if(i+b>=Mx || i+b<0 || j+c>=My ||j+c<0) {
                    b=0;
                    c=0;
                 }
               Matrice[i][j].RemoveGParticle();
               Matrice[i+b][j+c].addGParticle();
           }
           
           for(l=0;l<nB;l+=1){
               b=int(randomGaussian()*D);
               c=int(randomGaussian()*D);
                  if(i+b>=Mx || i+b<0 || j+c>=My ||j+c<0) {
                    b=0;
                    c=0;
                 }
               Matrice[i][j].RemoveBParticle();
               Matrice[i+b][j+c].addBParticle();
           }
           
         }
         
           nR=Matrice[i][j].GetRParticles();
           nG=Matrice[i][j].GetGParticles();
           nB=Matrice[i][j].GetBParticles();
           nTot=nR+nG+nB;
       
       fill(sqrt(nR*(pow(255,2)*2)/N),sqrt(nG*(pow(255,2)*2)/N),sqrt(nB*(pow(255,2)*2)/N),sqrt(nTot*(pow(255,2)*3)/N));    
       //fill(map(nR,0,N,50,700),map(nG,0,N,50,700),map(nB,0,N,50,700),map(nTot,0,N,0,700));
       //fill(nR,nG,nB,map(nTot,0,N,0,255));
       ellipse(i*pasx,j*pasy,pasx,pasy);
        
       }
    }
}
