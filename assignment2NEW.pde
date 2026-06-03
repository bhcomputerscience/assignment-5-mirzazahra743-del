/**
 * Assigment two - Snow man moving by mouse, and snow is moving automonuse
 * @version Oct 28 2025
 * Due November 6th 2025
 */
 
 color[] skyColors = new color[6]; 

float sunX;
float sunY;

void setup()
{
  size(700, 500);
  background(255);
  
  skyColors[0] = color(131, 229, 250);//first ombre
  skyColors[1]= color(156, 229, 245);//second ombre
  skyColors[2]= color(176, 231, 242);//third ombre
  skyColors[3]= color(201, 233, 240);//forth ombre
  skyColors[4]=  color(215, 233, 237); //fifth ombre
  skyColors[5]=color(223, 232, 234); //sixth ombre
  
  sunX = 0;
  sunY = height/2;
}

void draw()
{
  noStroke();
  float x = mouseX;
  float y = 250;
  
  //after the float, this is all for the background/ombre effect for the sky.
  fill(skyColors[0]); 
  rect(0,0,width,height); 
  
  fill(skyColors[1]); 
  rect(0, height/8, width, height/5);
  
  fill(skyColors[2]); 
  rect(0, height/6, width, height/5);

  fill(skyColors[3]);
  rect(0, height/5, width, height/5);

  fill(skyColors[4]);
  rect(0, height/4, width, height/5);

  fill(skyColors[5]);
  rect(0, height/3, width, height/5);

  //Sun controls + colors
  
  sunX += 2; // controls the speed of the sun and where it moves.
  fill(#FFC800);
  circle(sunX, sunY/2, 130); //secound other layer of the sun
  fill(#FFD436);
  circle(sunX, sunY/2, 90); //secound layer of the sun
  fill(255, 204, 0); //color of the sun
  circle(sunX, sunY/2, 60); // first layer of the sun


  //All for the background, but for the bottom
  fill(255);
  rect(0, height/1.9, width, height); // to hide marks from snowman
  fill(233);
  rect(0, height/1.6, width, height);
  fill(255);
  ellipse(150, y, 120, 67); //little bit of snow
  ellipse(190, y, 120, 43); //little bit of snow

  //snowman body
  fill(#D6FBFF);
  ellipse(x, y, 100, 100); //middle
  ellipse(x, width/4, 60, 60); //head
  ellipse(x, width/2, 150, 150); //bottom

  //Hat
  fill(54);
  rect(x - 20, y - 115, 40, 10); // brim
  rect(x - 15, y - 135, 30, 20); // top

  //Eyes
  fill(0);
  ellipse(x - 10, y - 75, 10, 10); // left eye
  ellipse(x + 10, y - 75, 10, 10); //right eye

  // carrot nose
  fill(255, 140, 0);
  triangle(x, y - 65, x + 30, y - 60, x, y - 60);

  // Smile
  noFill();
  stroke(0);
  strokeWeight(3);
  arc(x, y - 55, 21, 16, 0, PI);
  //arms
  stroke(102, 51, 0);
  strokeWeight(3);
  line(x - 45, 220, x - 90, 200); //left
  line(x + 45, 220, x + 90, 200); //right

  //buttons
  fill(0);
  noStroke();
  ellipse(x, 280, 15, 15);
  ellipse(x, 300, 15, 15);
  ellipse(x, 320, 15, 15);

  //Snow on ground
  fill(240);
  rect(0, height - 100, width, 100);
}
