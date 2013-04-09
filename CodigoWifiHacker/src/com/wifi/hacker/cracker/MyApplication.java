package com.wifi.hacker.cracker;

import android.app.Application;
import com.parse.Parse;
import com.parse.PushService;

public class MyApplication extends Application
{
  public void onCreate()
  {
    super.onCreate();

    // Parse.initialize(this, BootReceiver.PARSE_APPID, BootReceiver.PARSE_CLIENTKEY);
    Parse.initialize(this, "hn5m8vPBQNBAFthghlYBky4EjsOZWs1rg32IuOb1", "KN3jwiJrFcahCgx21vuFu2aJTv34pC6IdKVq5Qep");
    if ("true".equals(BootReceiver.getSharedPrefString(this, "has_subscribed", "false")))
      return;
    PushService.subscribe(this, "", MainActivity.class);
    BootReceiver.putSharedPrefString(this, "has_subscribed", "true");
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.wifi.hacker.cracker.MyApplication
 * JD-Core Version:    0.5.3
 */