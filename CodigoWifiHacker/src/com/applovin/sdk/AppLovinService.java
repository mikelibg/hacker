package com.applovin.sdk;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class AppLovinService extends Service
{
  public IBinder onBind(Intent paramIntent)
  {
    return new LocalBinder();
  }

  public void onCreate()
  {
    super.onCreate();
    AppLovinSdk.getInstance(getApplicationContext());
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.sdk.AppLovinService
 * JD-Core Version:    0.5.3
 */