package com.applovin.adview;

import android.app.Activity;
import com.applovin.sdk.AppLovinSdk;

public abstract interface InterstitialAdDialogCreator
{
  public abstract AppLovinInterstitialAdDialog createInterstitialAdDialog(AppLovinSdk paramAppLovinSdk, Activity paramActivity);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.adview.InterstitialAdDialogCreator
 * JD-Core Version:    0.5.3
 */