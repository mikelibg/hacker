package com.airpush.android;

abstract class SDKIntializer
{
  abstract void parseAppWallJson(String paramString);

  abstract void parseDialogAdJson(String paramString);

  abstract void parseLandingPageAdJson(String paramString);

  public abstract void startAppWall();

  public abstract void startDialogAd();

  public abstract void startIconAd();

  public abstract void startLandingPageAd();

  public abstract void startPushNotification(boolean paramBoolean);

  public abstract void startSmartWallAd();
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.airpush.android.SDKIntializer
 * JD-Core Version:    0.5.3
 */