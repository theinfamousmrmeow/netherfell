
if (global.iapStatus && !global.hasPremiumKey){
	scrMakePurchase(IAP_PREMIUM_KEY);
}

else{
	scrConnectToStore();	
}