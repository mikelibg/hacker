package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.Logger;

class e
  implements Runnable
{
  private final AppLovinAd b;

  public e(AdViewControllerImpl paramAdViewControllerImpl, AppLovinAd paramAppLovinAd)
  {
    this.b = paramAppLovinAd;
  }

  public void run()
  {
    AppLovinAdDisplayListener localAppLovinAdDisplayListener = AdViewControllerImpl.g(this.a);
    if ((localAppLovinAdDisplayListener != null) && (this.b != null));
    try
    {
      localAppLovinAdDisplayListener.adHidden(this.b);
      return;
    }
    catch (Throwable localThrowable)
    {
      AdViewControllerImpl.b(this.a).userError("AppLovinAdView", "Exception while notifying ad display listener", localThrowable);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.e
 * JD-Core Version:    0.5.3
 */