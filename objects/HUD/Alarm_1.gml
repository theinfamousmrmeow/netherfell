/// @description Insert description here
// You can write your code in this editor
if (curCoins<global.coins){
	curCoins+=1;
	coinColor = choose(c_white);
}
else if (curCoins>global.coins){
	curCoins--;
	coinColor = choose(c_red);
	}
else {coinColor=c_yellow;}
alarm[1]=2;