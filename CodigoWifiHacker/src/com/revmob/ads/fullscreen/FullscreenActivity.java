package com.revmob.ads.fullscreen;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Window;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.revmob.ads.RevMobAdsListener;

public class FullscreenActivity extends Activity
{
  private FullscreenAd ad;
  private RelativeLayout layout;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().addFlags(1024);
    getWindow().setFlags(4, 4);
    String str = getIntent().getStringExtra("com.revmob.ads.fullscreen.adUrl");
    this.layout = new RelativeLayout(this);
    this.ad = FullscreenAd.getLoadedFullscreen(str);
    if (this.ad == null)
    {
      Log.e("RevMob", "Unexpected error on create Fullscreen Ad.");
      finish();
    }
    while (true)
    {
      return;
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
      this.layout.addView(this.ad.getAdView(this), localLayoutParams);
      setContentView(this.layout);
    }
  }

  protected void onDestroy()
  {
    this.layout.removeAllViews();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      RevMobAdsListener localRevMobAdsListener = this.ad.getRevmobAdsListener();
      if (localRevMobAdsListener != null)
        localRevMobAdsListener.onRevMobAdDismiss();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.fullscreen.FullscreenActivity
 * JD-Core Version:    0.5.3
 */