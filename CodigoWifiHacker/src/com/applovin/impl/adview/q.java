package com.applovin.impl.adview;

import android.app.Activity;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.Logger;

class q
  implements AppLovinAdDisplayListener
{
  public void adDisplayed(AppLovinAd paramAppLovinAd)
  {
    try
    {
      if (p.c(this.a) != null)
        p.c(this.a).adDisplayed(paramAppLovinAd);
      return;
    }
    catch (Throwable localThrowable)
    {
      p.d(this.a).userError("InterstitialAdDialog", "Exception while running app display callback", localThrowable);
    }
  }

  public void adHidden(AppLovinAd paramAppLovinAd)
  {
    p.b(this.a).runOnUiThread(p.a(this.a));
    try
    {
      if (p.c(this.a) != null)
        p.c(this.a).adHidden(paramAppLovinAd);
      return;
    }
    catch (Throwable localThrowable)
    {
      p.d(this.a).userError("InterstitialAdDialog", "Exception while running app display callback", localThrowable);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.q
 * JD-Core Version:    0.5.3
 */