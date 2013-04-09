package com.applovin.adview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;

public abstract interface AdViewController
{
  public abstract void destroy();

  public abstract void initializeAdView(ViewGroup paramViewGroup, Context paramContext, AppLovinAdSize paramAppLovinAdSize, AppLovinSdk paramAppLovinSdk, AttributeSet paramAttributeSet);

  public abstract boolean isAutoDestroy();

  public abstract void loadNextAd();

  public abstract void onDetachedFromWindow();

  public abstract void onVisibilityChanged(int paramInt);

  public abstract void pause();

  public abstract void renderAd(AppLovinAd paramAppLovinAd);

  public abstract void resume();

  public abstract void setAdClickListener(AppLovinAdClickListener paramAppLovinAdClickListener);

  public abstract void setAdDisplayListener(AppLovinAdDisplayListener paramAppLovinAdDisplayListener);

  public abstract void setAdLoadListener(AppLovinAdLoadListener paramAppLovinAdLoadListener);

  public abstract void setAutoDestroy(boolean paramBoolean);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.adview.AdViewController
 * JD-Core Version:    0.5.3
 */