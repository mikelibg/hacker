package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.Logger;

class a
  implements Runnable
{
  public void run()
  {
    try
    {
      if (AdViewControllerImpl.a(this.b) != null)
        AdViewControllerImpl.a(this.b).adReceived(this.a);
      return;
    }
    catch (Throwable localThrowable)
    {
      AdViewControllerImpl.b(this.b).userError("AppLovinSdk", "Exception while running app load callback: " + localThrowable.getMessage());
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.a
 * JD-Core Version:    0.5.3
 */