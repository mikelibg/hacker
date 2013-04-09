package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.Logger;

class r
  implements AppLovinAdLoadListener
{
  public void adReceived(AppLovinAd paramAppLovinAd)
  {
    try
    {
      if (p.e(this.a) != null)
        p.e(this.a).adReceived(paramAppLovinAd);
      return;
    }
    catch (Throwable localThrowable)
    {
      p.d(this.a).userError("InterstitialAdDialog", "Exception while running app load callback", localThrowable);
    }
  }

  public void failedToReceiveAd(int paramInt)
  {
    try
    {
      if (p.e(this.a) != null)
        p.e(this.a).failedToReceiveAd(paramInt);
      return;
    }
    catch (Throwable localThrowable)
    {
      p.d(this.a).userError("InterstitialAdDialog", "Exception while running app load callback", localThrowable);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.r
 * JD-Core Version:    0.5.3
 */