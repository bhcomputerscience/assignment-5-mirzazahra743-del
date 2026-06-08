/**
 * Assigment two - Snow man moving by mouse, and snow is moving automonuse
 * @version Oct 28 2025
 * Due November 6th 2025
 */
ArrayList<Integer> skyColors = new ArrayList <Integer>();

float sunX;
float sunY;

void setup()
{
  size(700, 500);
  skyColors.add(color(#83E5FA)); 
  skyColors.add(color(#9CE545)); 
  skyColors.add(color(#B0E7F2)); 
  skyColors.add(color(#C9E9F0)); 
  skyColors.add(color(#D7E9ED)); 
  skyColors.add(color(#DFE8CA)); 

  sunX = 0;
  sunY = height/2;
}

void draw()
{
  noStroke();
  float x = mouseX;
  float y = 250;
  //after the float, this is all for the background/ombre effect for the sky.
  
  
  for( int i = 0; i < skyColors.size(); i++) {
    fill(skyColors.get(i)); 
    rect(0, i * (height/10), width, height/5); 
  } 
 
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
  for (int i = 0; i < 2; i++) { 
    // when i = 0, side will be -1 (left side)
    // when i = 1, side will be 1 (right side)
    int side = ( i == 0) && -1; 

  //buttons
  fill(0);
  noStroke();
  for (int i = 0; i < 3; i++) { 
    float buttonY = 280 +(i*20); 
    ellipse(x, buttonY, 15, 15);
  } 


  //Snow on ground
  fill(240);
  rect(0, height - 100, width, 100);
}
