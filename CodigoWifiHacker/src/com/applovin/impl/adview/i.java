package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdUpdateListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.Logger;
import java.lang.ref.WeakReference;

class i
  implements AppLovinAdLoadListener, AppLovinAdUpdateListener
{
  private final WeakReference a;
  private final AppLovinAdService b;
  private final Logger c;

  i(AdViewControllerImpl paramAdViewControllerImpl, AppLovinSdk paramAppLovinSdk)
  {
    if (paramAdViewControllerImpl == null)
      throw new IllegalArgumentException("No view specified");
    if (paramAppLovinSdk == null)
      throw new IllegalArgumentException("No sdk specified");
    this.a = new WeakReference(paramAdViewControllerImpl);
    this.c = paramAppLovinSdk.getLogger();
    this.b = paramAppLovinSdk.getAdService();
  }

  public void adReceived(AppLovinAd paramAppLovinAd)
  {
    AdViewControllerImpl localAdViewControllerImpl = (AdViewControllerImpl)this.a.get();
    if (localAdViewControllerImpl != null)
      localAdViewControllerImpl.onAdRecieved(paramAppLovinAd);
    while (true)
    {
      return;
      this.c.userError("AppLovinAdView", "Ad view has been garbage collected by the time an ad was recieved");
    }
  }

  public void adUpdated(AppLovinAd paramAppLovinAd)
  {
    AdViewControllerImpl localAdViewControllerImpl = (AdViewControllerImpl)this.a.get();
    if (localAdViewControllerImpl != null)
      localAdViewControllerImpl.onAdRecieved(paramAppLovinAd);
    while (true)
    {
      return;
      this.b.removeAdUpdateListener(this);
      this.c.userError("AppLovinAdView", "Ad view has been garbage collected by the time an ad was updated");
    }
  }

  public void failedToReceiveAd(int paramInt)
  {
    AdViewControllerImpl localAdViewControllerImpl = (AdViewControllerImpl)this.a.get();
    if (localAdViewControllerImpl == null)
      return;
    localAdViewControllerImpl.onFailedToRecieveAd(paramInt);
  }

  public String toString()
  {
    return "[AdViewController listener: " + super.hashCode() + "]";
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.i
 * JD-Core Version:    0.5.3
 */