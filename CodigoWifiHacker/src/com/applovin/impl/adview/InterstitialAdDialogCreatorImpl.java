package com.applovin.impl.adview;

import android.app.Activity;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.adview.InterstitialAdDialogCreator;
import com.applovin.sdk.AppLovinSdk;

public class InterstitialAdDialogCreatorImpl
  implements InterstitialAdDialogCreator
{
  public AppLovinInterstitialAdDialog createInterstitialAdDialog(AppLovinSdk paramAppLovinSdk, Activity paramActivity)
  {
    if (paramAppLovinSdk == null)
      paramAppLovinSdk = AppLovinSdk.getInstance(paramActivity);
    if (paramAppLovinSdk != null);
    for (p localp = new p(paramAppLovinSdk, paramActivity); ; localp = null)
      return localp;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.InterstitialAdDialogCreatorImpl
 * JD-Core Version:    0.5.3
 */