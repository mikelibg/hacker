package com.applovin.sdk;

public class AppLovinSdkSettings
{
  private boolean a;
  private long b = -1L;

  public long getAdRefreshSeconds()
  {
    return this.b;
  }

  public boolean isVerboseLoggingEnabled()
  {
    return this.a;
  }

  public void setAdRefreshSeconds(long paramLong)
  {
    this.b = paramLong;
  }

  public void setVerboseLogging(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.sdk.AppLovinSdkSettings
 * JD-Core Version:    0.5.3
 */