float[][] reduce(PImage img,int H,int W){
  img.loadPixels();
  int delW=int(img.width)/W;
  int delH=int(img.height)/H;
  float [][] M = new float[W][H]; 
  
  for (int x  = 0; x < W; x++) {
    for (int y = 0; y < H; y++ ) {
      float sum=0;
       for (int i  = x*delW; i <x*delW+delW ; i++) {
        for (int j = y*delH; j <y*delH+delH ; j++ ) {
          int loc=(i + j*img.width);
          float br= brightness(img.pixels[loc]);
          sum+=br;
        }
       }
    sum=sum/(delW*delH);
    M[x][y]=sum;
    }
   
  }
  return M;
}
