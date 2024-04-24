void setup(){
size(800,400);
background(#FFFFFF);
fill(#000000);
text("TOMAS PIANELLI",20,380);
}
void draw(){

//Primera parte escalon del caño
fill(#7B8393);
triangle(45,40,65,40,55,20);
triangle(680,40,700,40,690,20);
rect(20,40,700,60);
fill(#000000);
rect(680,45,20,50);
rect(650,45,20,50);
rect(620,45,20,50);
rect(590,45,20,50);
rect(560,45,20,50);
rect(530,45,20,50);
rect(500,45,20,50);
fill(#434748);
ellipse(20,70,30,50);
fill(#000000);
text("GLOCK",65,75);
text("17",115,75);
text("AUSTRIA",175,75);
text("9X19",330,75);

//Segundaparte escalon del caño
fill(#000000);
rect(20,100,700,40);
fill(#434748);
rect(470,100,20,20);
ellipse(20,120,15,25);
rect(340,110,10,20);
ellipse(420,105,10,10);
ellipse(415,118,10,10);

//Culata
rect(470,140,160,240);
fill(#FFFFFF);
ellipse(400,160,160,70);
fill(#000000);
triangle(410,125,460,120,415,180);
fill(#FFFFFF);
ellipse(430,135,10,10);
fill(#597179);
rect(500,200,100,150);
fill(#000000);
rect(550,300,30,30);

println("X:");
println(mouseX);
println("Y:");
println(mouseY);
}
