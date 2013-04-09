package com.applovin.sdk;

public abstract interface AppLovinAdService
{
  public static final String URI_AD_SERVICE = "/adservice";
  public static final String URI_API_SERVICE = "/api";
  public static final String URI_CLOSE_AD = "/adservice/close_ad";
  public static final String URI_LANDING_PAGE_AD = "/adservice/landing_page";
  public static final String URI_NEXT_AD = "/adservice/next_ad";
  public static final String URI_TRACK_CLICK = "/adservice/track_click";

  public abstract void addAdUpdateListener(AppLovinAdUpdateListener paramAppLovinAdUpdateListener);

  public abstract void loadNextAd(AppLovinAdSize paramAppLovinAdSize, AppLovinAdLoadListener paramAppLovinAdLoadListener);

  public abstract void loadNextAd(AppLovinAdSize paramAppLovinAdSize, String paramString, AppLovinAdLoadListener paramAppLovinAdLoadListener);

  public abstract void loadNextAd(String paramString, AppLovinAdLoadListener paramAppLovinAdLoadListener);

  public abstract void removeAdUpdateListener(AppLovinAdUpdateListener paramAppLovinAdUpdateListener);

  public abstract void trackAdClick(AppLovinAd paramAppLovinAd);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.sdk.AppLovinAdService
 * JD-Core Version:    0.5.3
 */