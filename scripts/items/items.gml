// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@param itemName
function getItemCount(){
	ini_open("inventory.ini");
	var count = ini_read_real("items",argument0,0);
	ini_close();
	return count;
}

///@param itemName
function addItem(){
	ini_open("inventory.ini");
	var count = ini_read_real("items",argument0,0);
	ini_write_real("items",argument0,count+1);
	ini_close();
}

///@param itemName
function removeItem(){
	ini_open("inventory.ini");
	var count = ini_read_real("items",argument0,0);
	ini_write_real("items",argument0,count-1);
	ini_close();
}

function getAllItems(){
	
	var itemsStack = ds_stack_create();
	
	ini_open("inventory.ini");
	_name = "Map_5";
	var count = getItemCount(_name);
	if(count>0){ds_stack_push(itemsStack,_name);}
	
	ini_close();
	
	return itemsStack;
}