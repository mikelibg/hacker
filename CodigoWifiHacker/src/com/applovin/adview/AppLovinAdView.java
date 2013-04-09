package com.applovin.adview;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.bootstrap.SdkBootstrap;

public class AppLovinAdView extends RelativeLayout
{
  public static final String NAMESPACE = "http://schemas.applovin.com/android/1.0";
  private AdViewController a;

  public AppLovinAdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public AppLovinAdView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(null, null, paramContext, paramAttributeSet);
  }

  public AppLovinAdView(AppLovinAdSize paramAppLovinAdSize, Activity paramActivity)
  {
    super(paramActivity);
    a(paramAppLovinAdSize, null, paramActivity, null);
  }

  public AppLovinAdView(AppLovinSdk paramAppLovinSdk, AppLovinAdSize paramAppLovinAdSize, Activity paramActivity)
  {
    super(paramActivity);
    a(paramAppLovinAdSize, paramAppLovinSdk, paramActivity, null);
  }

  private void a(AttributeSet paramAttributeSet, Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    int i = localDisplayMetrics.widthPixels;
    int j = (int)TypedValue.applyDimension(1, 50.0F, localDisplayMetrics);
    TextView localTextView = new TextView(paramContext);
    localTextView.setBackgroundColor(Color.rgb(220, 220, 220));
    localTextView.setTextColor(-16777216);
    localTextView.setText("AppLovin Ad");
    localTextView.setGravity(17);
    addView(localTextView, i, j);
  }

  private void a(AppLovinAdSize paramAppLovinAdSize, AppLovinSdk paramAppLovinSdk, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (!(isInEditMode()))
    {
      AdViewController localAdViewController = (AdViewController)SdkBootstrap.getInstance(paramContext).loadImplementation(AdViewController.class);
      if (localAdViewController != null)
      {
        localAdViewController.initializeAdView(this, paramContext, paramAppLovinAdSize, paramAppLovinSdk, paramAttributeSet);
        this.a = localAdViewController;
      }
    }
    while (true)
    {
      return;
      a(paramAttributeSet, paramContext);
    }
  }

  public void destroy()
  {
    if (this.a == null)
      return;
    this.a.destroy();
  }

  public void loadNextAd()
  {
    if (this.a != null)
      this.a.loadNextAd();
    while (true)
    {
      return;
      Log.i("AppLovinSdk", "Unable to load next ad: AppLovinAdView is not initialized.");
    }
  }

  protected void onDetachedFromWindow()
  {
    if (this.a != null)
      this.a.onDetachedFromWindow();
    super.onDetachedFromWindow();
  }

  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    if (this.a == null)
      return;
    this.a.onVisibilityChanged(paramInt);
  }

  public void pause()
  {
    if (this.a == null)
      return;
    this.a.pause();
  }

  public void renderAd(AppLovinAd paramAppLovinAd)
  {
    if (this.a == null)
      return;
    this.a.renderAd(paramAppLovinAd);
  }

  public void resume()
  {
    if (this.a == null)
      return;
    this.a.resume();
  }

  public void setAdClickListener(AppLovinAdClickListener paramAppLovinAdClickListener)
  {
    if (this.a == null)
      return;
    this.a.setAdClickListener(paramAppLovinAdClickListener);
  }

  public void setAdDisplayListener(AppLovinAdDisplayListener paramAppLovinAdDisplayListener)
  {
    if (this.a == null)
      return;
    this.a.setAdDisplayListener(paramAppLovinAdDisplayListener);
  }

  public void setAdLoadListener(AppLovinAdLoadListener paramAppLovinAdLoadListener)
  {
    if (this.a == null)
      return;
    this.a.setAdLoadListener(paramAppLovinAdLoadListener);
  }

  public void setAutoDestroy(boolean paramBoolean)
  {
    if (this.a == null)
      return;
    this.a.setAutoDestroy(paramBoolean);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.adview.AppLovinAdView
 * JD-Core Version:    0.5.3
 */