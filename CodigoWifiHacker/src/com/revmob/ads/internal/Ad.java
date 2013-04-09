package com.revmob.ads.internal;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;

public abstract class Ad
{
  protected Activity activity;
  protected String clickUrl;
  private MarketRedirector redirector;

  protected Ad(Activity paramActivity, String paramString)
  {
    this(paramActivity, paramString, new MarketRedirector(paramString));
  }

  protected Ad(Activity paramActivity, String paramString, MarketRedirector paramMarketRedirector)
  {
    this.activity = paramActivity;
    this.clickUrl = paramString;
    this.redirector = paramMarketRedirector;
  }

  public static Intent createIntentThatOpensURL(String paramString)
  {
    return new Intent("android.intent.action.VIEW", Uri.parse(paramString));
  }

  public void click()
  {
    try
    {
      this.activity.startActivity(createIntentThatOpensURL(this.redirector.getMarketUrl()));
      return;
    }
    catch (LocationUrlNotFoundException localLocationUrlNotFoundException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.clickUrl;
      Log.w("RevMob", String.format("Market url not found for clickUrl: %s", arrayOfObject));
      this.activity.startActivity(createIntentThatOpensURL(this.clickUrl));
    }
  }

  public String getTargetURL()
  {
    return this.clickUrl;
  }

  public void setActivity(Activity paramActivity)
  {
    this.activity = paramActivity;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.internal.Ad
 * JD-Core Version:    0.5.3
 */