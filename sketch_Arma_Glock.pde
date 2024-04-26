PImage img;
void setup(){
size(800,400);
background(#FFFFFF);
fill(#000000);
text("TOMAS PIANELLI",20,380);
img =loadImage ("Arma de ejemplo para programar.jpg");
}
void draw(){

image (img,0,0,400,400);
//Primera parte escalon del caño
fill(#7B8393);
triangle(418,19,425,9,430,19);
rect(733,6,10,15);
rect(413,19,345,60);
fill(#000000);
rect(736,25,5,50);
rect(724,25,5,50);
rect(712,25,5,50);
rect(700,25,5,50);
rect(688,25,5,50);
rect(676,25,5,50);
rect(664,25,5,50);
fill(#434748);
ellipse(410,47,15,50);
fill(#000000);
text("GLOCK",430,55);
text("17",475,55);
text("AUSTRIA",510,55);
text("9X19",580,55);

//Segundaparte escalon del caño
fill(#434748);
rect(414,77,344,45);
ellipse(415,100,15,25);
ellipse(620,87,10,10);
ellipse(605,105,10,10);
fill(#000000);
rect(575,90,5,20);
rect(640,78,20,20);
line(632,104,668,104);


//Culata
fill(#434748);
rect(630,122,110,250);
fill(#434748);
rect(540,122,90,75);
fill(#FFFFFF);
ellipse(590,155,80,70);
fill(#434748);
triangle(607,122,593,173,630,138);
fill(#FFFFFF);
ellipse(610,135,8,8);
fill(#597179);
rect(640,172,90,160);
fill(#000000);
rect(680,284,30,30);

println("X:");
println(mouseX);
println("Y:");
println(mouseY);
}
