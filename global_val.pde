color background = #000000;
import processing.sound.*;
SoundFile file;;
//---------BALL VALUES----------------
ball b1; 
float ballX = 800; 
float ballY = 500;
float ballR = 25;
float speedX = 10;
float speedY = 10;
//-------------------------------------

//---------PLAYER VALUES---------------
player p;
float playerY = 900;
float playerW = 200;
float playerH = 20;
float offset = 100;


//-------------------------------------

//----------BRICK VALUES---------------
brick [][] brickGrid; 
int gridW = 160;
int gridH = 40;
int brickC = 10;
int brickR = 5;
float brickW = 155; 
float brickH = 35; 
//-------------------------------------

//----------SCOREBOARD-----------------
int scoreX = 1400;
int scoreY = 990;
int score=0;
scoreboard s1;
//-------------------------------------
//----------HEALTH--------------------
health h1;
int health;
int healthx;
int healthy=950;
int hh = 50;
int hw = 50;
int oob=0;
PImage heart;
