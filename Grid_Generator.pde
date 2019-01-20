int scale;
int rows;
int cols;

int amountInRows;
int amountInCols;

void setup(){
  size(1000, 1000); //For perfect grid scale has to divide into size
  scale = 10;
  rows = height;
  cols = width;
  amountInRows = rows/scale;
  amountInCols = cols/scale;
  for (int i = 0; i < amountInRows; i++){
    for (int j = 0; j < amountInCols; j++){
      fill(169,169,169);
      stroke(105,105,105);
      rect(j * scale, i * scale, scale, scale);

    }
  }
}

void draw(){
float mouseXPos = mouseX;
float mouseYPos = mouseY;

 for (int i = 0; i < amountInRows; i++){
    for (int j = 0; j < amountInCols; j++){
      float centerIfPieceX = j * scale;
      float centerIfPieceY = i * scale;
      if ((mouseXPos < centerIfPieceX + scale || mouseXPos > centerIfPieceX - scale) && (mouseYPos < centerIfPieceY + scale || mouseXPos > centerIfPieceX - scale)){
      fill(169,169,169);
      stroke(5,5,5);
      rect(j * scale, i * scale, scale, scale);
    }
  }
 }
 
}