///@desc Buy this IAP
event_inherited();

log("Clicked the button to purchase BOOST");
scrMakePurchase(BOOST);

/*
 Note that whilst we have coded this demo so the initial purchase flow will work fine, so that you can
 see querying subscriptions works and how users would make this type of purchase, subscription purchases
 won't actually succeed if local verify is enabled (as Google don't allow that) or if you don't 
 have a custom payment server processing your results and returning a successful purchase to the game.
 The subscription purchase would be cancelled by Google.
 
 So in your own game you would want to ensure that the subscription content is never unlocked.
 
 You can see the game-side code required to make remote verification work in scrVerifyWithServer,
 but you will need to write and implement the web server yourself, as this isn't something YoYo 
 will support for you.
*/