package com.applovin.adview;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.bootstrap.SdkBootstrap;

public class AppLovinInterstitialAd extends View
{
  private AppLovinInterstitialAdDialog a;

  public AppLovinInterstitialAd(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public AppLovinInterstitialAd(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.a = null;
    if (paramContext instanceof Activity)
    {
      AppLovinSdk localAppLovinSdk = AppLovinSdk.getInstance(paramContext);
      if ((localAppLovinSdk != null) && (!(localAppLovinSdk.hasCriticalErrors())))
      {
        InterstitialAdDialogCreator localInterstitialAdDialogCreator = (InterstitialAdDialogCreator)SdkBootstrap.getInstance(paramContext).loadImplementation(InterstitialAdDialogCreator.class);
        if (localInterstitialAdDialogCreator != null)
          this.a = localInterstitialAdDialogCreator.createInterstitialAdDialog(localAppLovinSdk, (Activity)paramContext);
      }
    }
    while (true)
    {
      setVisibility(8);
      return;
      Log.e("AppLovinSdk", "Unable to create AppLovin interstitial dialog. The view was not created from an activity.");
    }
  }

  public static AppLovinInterstitialAdDialog create(AppLovinSdk paramAppLovinSdk, Activity paramActivity)
  {
    if (paramAppLovinSdk == null)
      throw new IllegalArgumentException("No sdk specified");
    if (paramActivity == null)
      throw new IllegalArgumentException("No activity specified");
    InterstitialAdDialogCreator localInterstitialAdDialogCreator = (InterstitialAdDialogCreator)SdkBootstrap.getInstance(paramActivity).loadImplementation(InterstitialAdDialogCreator.class);
    if (localInterstitialAdDialogCreator != null);
    for (AppLovinInterstitialAdDialog localAppLovinInterstitialAdDialog = localInterstitialAdDialogCreator.createInterstitialAdDialog(paramAppLovinSdk, paramActivity); ; localAppLovinInterstitialAdDialog = null)
      return localAppLovinInterstitialAdDialog;
  }

  public static void show(Activity paramActivity)
  {
    if (paramActivity == null)
      throw new IllegalArgumentException("No activity specified");
    AppLovinSdk localAppLovinSdk = AppLovinSdk.getInstance(paramActivity);
    if ((localAppLovinSdk == null) || (localAppLovinSdk.hasCriticalErrors()))
      return;
    show(localAppLovinSdk, paramActivity);
  }

  public static void show(AppLovinSdk paramAppLovinSdk, Activity paramActivity)
  {
    if (paramAppLovinSdk == null)
      throw new IllegalArgumentException("No sdk specified");
    if (paramActivity == null)
      throw new IllegalArgumentException("No activity specified");
    paramActivity.runOnUiThread(new a(paramActivity, paramAppLovinSdk));
  }

  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.a == null)
      return;
    this.a.show();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.adview.AppLovinInterstitialAd
 * JD-Core Version:    0.5.3
 */