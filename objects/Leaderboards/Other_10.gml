if achievement_available()
    {
    achievement_show_leaderboards()
    }
else
    {
    if !achievement_login_status()
        {
        achievement_login();
        }
    }