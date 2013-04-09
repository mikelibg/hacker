package com.applovin.sdk;

public class AppLovinAd
{
  private final String a;
  private final AppLovinAdSize b;
  private final String c;
  private final String d;

  public AppLovinAd(String paramString1, AppLovinAdSize paramAppLovinAdSize, String paramString2, String paramString3)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("No html specified");
    if (paramAppLovinAdSize == null)
      throw new IllegalArgumentException("No size specified");
    this.a = paramString1;
    this.b = paramAppLovinAdSize;
    this.c = paramString2;
    this.d = paramString3;
  }

  public String getClickTrackerUrl()
  {
    return this.d;
  }

  public String getDestinationUrl()
  {
    return this.c;
  }

  public String getHtml()
  {
    return this.a;
  }

  public AppLovinAdSize getSize()
  {
    return this.b;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.sdk.AppLovinAd
 * JD-Core Version:    0.5.3
 */