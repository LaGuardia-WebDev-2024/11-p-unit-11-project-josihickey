var rainX = [600];
var rainY = [600];
var seeRain = 200;
var back = loadImage("https://www.centralpark.com/downloads/1177/download/cherry-blossom-tree-s-in-bloom.jpe?cb=f91a2ca51b07905dc337da9c01a986e8");
var rainHeight = random(10,15);
var petalX = [];
var petalY = [];
var timer = 0;
var rays = [15, 45, 75, 95,115];

setup = function() {
   size(600, 425); 
   
  
   textSize(40);
   
   }
   
   draw = function(){
   image(back, 0, 0);
   
   timer+=1;
   
  for(var j = 0; j < 65; j++){
     petal(petalX[j], petalY[j]);
     petalX.push(random(0,600));
     petalY.push(random(225,410));
     
   } 
   
   for(var i = 0; i < 550; i++){
     noStroke();
     fill(0, 0, 255, seeRain);
     ellipse( rainX[i], rainY[i], 2, rainHeight);
     rainX.push(random(0,600));
     rainY.push(random(0,400));
     
   }
   
   
  if(timer>75){
  fill(255,255,0);
  ellipse(0, 0, 150,150);
  strokeWeight(5);
  stroke(255,255,0);
  line(rays[0], 100, rays[0]+5, 150);
  line(rays[1], 90, rays[1]+30, 140);
  line(rays[2], 70, rays[2]+50, 120);
  line(rays[3], 40, rays [3]+60, 70);
  line(rays[4], 20, rays [4]+50, 30);
  seeRain = 0;
  }
   
   
   

}

var petal = function(petalX,petalY){
    fill(214, 122, 164);
    noStroke();
     ellipse(petalX, petalY, 8, 5);
     
   }