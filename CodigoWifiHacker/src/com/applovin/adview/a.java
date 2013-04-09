package com.applovin.adview;

import android.app.Activity;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.bootstrap.SdkBootstrap;

final class a
  implements Runnable
{
  public void run()
  {
    InterstitialAdDialogCreator localInterstitialAdDialogCreator = (InterstitialAdDialogCreator)SdkBootstrap.getInstance(this.a).loadImplementation(InterstitialAdDialogCreator.class);
    if (localInterstitialAdDialogCreator == null)
      return;
    localInterstitialAdDialogCreator.createInterstitialAdDialog(this.b, this.a).show();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.adview.a
 * JD-Core Version:    0.5.3
 */