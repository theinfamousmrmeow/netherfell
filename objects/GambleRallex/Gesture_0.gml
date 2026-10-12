with (AdBitch){
	if (rewarded_loaded == true){
		show_debug_message("Rewards ad showing");
	    GoogleMobileAds_ShowRewardedVideo();
	    rewarded_loaded = false;
	}
}