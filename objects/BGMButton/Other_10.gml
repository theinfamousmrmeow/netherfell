/// @description Insert description here
// You can write your code in this editor

if (text="BGM ON"){
text= "BGM OFF"; global.volBGM=0;}
else {text="BGM ON"; global.volBGM=1;}

bgmSetVolume(global.volBGM)