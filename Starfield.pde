Particle [] norm;
void setup()
{
  size(500,500);
  background(0);
  norm = new Particle[250];
  for(int i = 0; i < norm.length; i++){
  norm[i] = new NormalParticle();
  norm[1] = new OddballParticle();
  norm[2] = new JumboParticle();
  }
}
void draw()
{
  background(0);
   for(int i = 0; i < norm.length; i++){
     norm[i].move();
     norm[i].show();
  }
}
class NormalParticle implements Particle
{
  double myX, myY, theta, speed, cos, sin;
  NormalParticle(){
  myX = 250;
  myY = 250;
  theta = (Math.random()*2*Math.PI);
  speed = (Math.random() * 3);
  
  }

public void move()
{
myX += Math.cos(theta)*speed;
myY += Math.sin(theta)*speed;
if(myX > 501 || myY > 501){
    myX = 250;
    myY = 250;
    }
    else
    if(myX < 0 || myY < 0){
    myX = 250;
    myY = 250;
    } 

}
public void show()
{
  
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  ellipse((int)myX, (int)myY, 15, 15);
}
}
interface Particle
{
  public void move();
  public void show();
}
class OddballParticle implements Particle
{
  double myX, myY, theta, speed, cos, sin;
  OddballParticle(){
  myX = 250;
  myY = 250;
  theta = (Math.random()*2*Math.PI);
  speed = (Math.random() * 1);
  
}
public void move()
{
myX += Math.cos(theta)*speed;
myY += Math.sin(theta)*speed;
if(myX > 501 || myY > 501){
    myX = 250;
    myY = 250;
    }
    else
    if(myX < 0 || myY < 0){
    myX = 250;
    myY = 250;
    } 
}
public void show()
{
  fill(255);
 rect((int)myX, (int)myY, 35, 35);
}
}
 class JumboParticle extends NormalParticle
{
  public void show()
{
 fill(231,252,98);
  ellipse((float)myX,(float)myY,75,75);
}
}
