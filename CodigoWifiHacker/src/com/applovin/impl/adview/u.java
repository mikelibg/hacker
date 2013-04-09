package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.Logger;
import java.lang.ref.WeakReference;

class u
  implements AppLovinAdLoadListener
{
  private final WeakReference a;
  private final Logger b;

  u(p paramp, Logger paramLogger)
  {
    if (paramp == null)
      throw new IllegalArgumentException("No view specified");
    if (paramLogger == null)
      throw new IllegalArgumentException("No logger specified");
    this.a = new WeakReference(paramp);
    this.b = paramLogger;
  }

  public void adReceived(AppLovinAd paramAppLovinAd)
  {
    p localp = (p)this.a.get();
    if (localp != null)
      localp.b(paramAppLovinAd);
    while (true)
    {
      return;
      this.b.w("InterstitialAdDialog", "Interstitial ad view has been garbadge collected by the time an ad was recieved");
    }
  }

  public void failedToReceiveAd(int paramInt)
  {
    p localp = (p)this.a.get();
    if (localp == null)
      return;
    localp.a();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.u
 * JD-Core Version:    0.5.3
 */