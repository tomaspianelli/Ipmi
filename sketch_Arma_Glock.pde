void setup(){
size(800,400);
background(#FFFFFF);
}
void draw(){
//Primera parte escalon del caño
fill(#7B8393);
rect(20,40,700,60);

//Segundaparte escalon del caño
fill(#000000);
rect(20,100,700,40);

//Culata
rect(470,140,160,240);
fill(#FFFFFF);
ellipse(400,160,160,70);
fill(#000000);
triangle(410,125,460,120,415,180);

println("X:");
println(mouseX);
println("Y:");
println(mouseY);
}
