package com.applovin.impl.adview;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Color;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.sdk.j;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.Logger;

class p extends Dialog
  implements AppLovinInterstitialAdDialog
{
  private final Activity a;
  private final AppLovinSdk b;
  private final Logger c;
  private TextView d;
  private AppLovinAdView e;
  private u f;
  private t g;
  private Runnable h;
  private AppLovinAd i;
  private String j;
  private AppLovinAd k;
  private AppLovinAdLoadListener l;
  private AppLovinAdDisplayListener m;

  p(AppLovinSdk paramAppLovinSdk, Activity paramActivity)
  {
    super(paramActivity, 16973840);
    if (paramAppLovinSdk == null)
      throw new IllegalArgumentException("No sdk specified");
    this.b = paramAppLovinSdk;
    this.c = paramAppLovinSdk.getLogger();
    this.a = paramActivity;
    requestWindowFeature(1);
    try
    {
      getWindow().setFlags(paramActivity.getWindow().getAttributes().flags, paramActivity.getWindow().getAttributes().flags);
      return;
    }
    catch (Exception localException)
    {
      this.c.e("InterstitialAdDialog", "Set window flags failed.", localException);
    }
  }

  private void b()
  {
    this.d.setBackgroundColor(Color.rgb(220, 220, 220));
    this.d.setTextColor(-1);
    this.d.setBackgroundColor(0);
    this.d.setText("Loading...");
    this.d.setGravity(17);
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams1.addRule(13);
    this.d.setLayoutParams(localLayoutParams1);
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams2.addRule(13);
    this.e.setLayoutParams(localLayoutParams2);
    RelativeLayout localRelativeLayout = new RelativeLayout(this.a);
    localRelativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    localRelativeLayout.setBackgroundColor(-1157627904);
    localRelativeLayout.addView(this.d);
    localRelativeLayout.addView(this.e);
    setContentView(localRelativeLayout);
  }

  private boolean c()
  {
    int i1 = 1;
    try
    {
      boolean bool = j.a(true, this.a);
      i1 = bool;
      return i1;
    }
    catch (Exception localException)
    {
      this.c.e("InterstitialAdDialog", "Unable to check network state", localException);
    }
  }

  protected void a()
  {
    this.j = null;
    this.a.runOnUiThread(this.h);
    this.c.w("InterstitialAdDialog", "Failed to receive an ad,activity finished");
  }

  void a(AppLovinAd paramAppLovinAd)
  {
    this.i = paramAppLovinAd;
  }

  void a(String paramString)
  {
    this.j = paramString;
  }

  protected void b(AppLovinAd paramAppLovinAd)
  {
    this.k = paramAppLovinAd;
    this.j = null;
    this.i = null;
    this.a.runOnUiThread(this.g);
  }

  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.i != null)
      b(this.i);
    while (true)
    {
      return;
      if (c())
      {
        AppLovinAdService localAppLovinAdService = this.b.getAdService();
        if (this.j != null)
          localAppLovinAdService.loadNextAd(this.j, this.f);
        localAppLovinAdService.loadNextAd(AppLovinAdSize.INTERSTITIAL, this.f);
      }
      this.f.failedToReceiveAd(-103);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.f = new u(this, this.c);
    this.e = new AppLovinAdView(this.b, AppLovinAdSize.INTERSTITIAL, this.a);
    this.e.setAdDisplayListener(new q(this));
    this.e.setAdLoadListener(new r(this));
    this.d = new TextView(this.a);
    this.g = new t(this);
    this.h = new s(this);
    b();
  }

  public void setAdDisplayListener(AppLovinAdDisplayListener paramAppLovinAdDisplayListener)
  {
    this.m = paramAppLovinAdDisplayListener;
  }

  public void setAdLoadListener(AppLovinAdLoadListener paramAppLovinAdLoadListener)
  {
    this.l = paramAppLovinAdLoadListener;
  }

  public void show()
  {
    try
    {
      super.show();
      return;
    }
    catch (Exception localException)
    {
      this.c.e("InterstitialAdDialog", "Unable to show interstitial dialog.", localException);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.p
 * JD-Core Version:    0.5.3
 */