package com.applovin.adview;

import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;

public abstract interface AppLovinInterstitialAdDialog
{
  public abstract void dismiss();

  public abstract void setAdDisplayListener(AppLovinAdDisplayListener paramAppLovinAdDisplayListener);

  public abstract void setAdLoadListener(AppLovinAdLoadListener paramAppLovinAdLoadListener);

  public abstract void show();
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.adview.AppLovinInterstitialAdDialog
 * JD-Core Version:    0.5.3
 */