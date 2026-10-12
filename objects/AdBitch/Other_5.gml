if (global.ads==false || global.hasPremiumKey){instance_destroy();}
else {
	if (os_type == os_android || os_type == os_ios || os_type == os_winphone){

		if (room==rm_dungeon && interstitial_loaded == true /* && current_time > 60000 */)
		    {
			show_debug_message("Interstitial ad showing");
		    interstitial_loaded = false;
		    GoogleMobileAds_ShowInterstitial();
		    }
	}
}