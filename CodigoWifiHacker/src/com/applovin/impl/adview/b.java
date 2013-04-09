package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.Logger;

class b
  implements Runnable
{
  public void run()
  {
    try
    {
      if (AdViewControllerImpl.a(this.b) != null)
        AdViewControllerImpl.a(this.b).failedToReceiveAd(this.a);
      return;
    }
    catch (Throwable localThrowable)
    {
      AdViewControllerImpl.b(this.b).userError("AppLovinAdView", "Exception while running app load  callback", localThrowable);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.b
 * JD-Core Version:    0.5.3
 */