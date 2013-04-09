package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;

class h
  implements Runnable
{
  public void run()
  {
    if (AdViewControllerImpl.d(this.a) == null)
      return;
    AdViewControllerImpl.a(AdViewControllerImpl.c(this.a), AdViewControllerImpl.d(this.a).getSize());
    AdViewControllerImpl.c(this.a).a(AdViewControllerImpl.d(this.a));
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.h
 * JD-Core Version:    0.5.3
 */