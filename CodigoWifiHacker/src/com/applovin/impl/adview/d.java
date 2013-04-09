package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.Logger;

class d
  implements Runnable
{
  private final AppLovinAd b;

  public d(AdViewControllerImpl paramAdViewControllerImpl, AppLovinAd paramAppLovinAd)
  {
    this.b = paramAppLovinAd;
  }

  public void run()
  {
    AppLovinAdClickListener localAppLovinAdClickListener = AdViewControllerImpl.h(this.a);
    if ((localAppLovinAdClickListener != null) && (this.b != null));
    try
    {
      localAppLovinAdClickListener.adClicked(this.b);
      return;
    }
    catch (Throwable localThrowable)
    {
      AdViewControllerImpl.b(this.a).userError("AppLovinAdView", "Exception while notifying ad click listener", localThrowable);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.d
 * JD-Core Version:    0.5.3
 */