package com.revmob.ads.fullscreen;

import android.app.Activity;
import android.content.Intent;
import com.revmob.ads.RevMobAdsListener;
import com.revmob.ads.internal.Ad;
import com.revmob.ads.internal.AdFetcher;
import com.revmob.ads.internal.LoadError;
import com.revmob.ads.internal.OnLoadListener;

public class Fullscreen
{
  private Activity activity;
  private FullscreenAd ad;
  private AdFetcher fetcher;
  private OnLoadListener listener = new OnLoadListener()
  {
    public void onAdNotReceived(LoadError paramLoadError, String paramString)
    {
      if (Fullscreen.this.revMobListener == null)
        return;
      Fullscreen.this.revMobListener.onRevMobAdNotReceived("Ad did not received.");
    }

    public void onAdReceived(Ad paramAd)
    {
      Fullscreen.access$002(Fullscreen.this, (FullscreenAd)paramAd);
      Fullscreen.this.ad.setRevmobAdsListener(Fullscreen.this.revMobListener);
      FullscreenAd.addLoadedFullscreen(Fullscreen.this.ad);
      if (Fullscreen.this.revMobListener == null)
        return;
      Fullscreen.this.revMobListener.onRevMobAdReceived();
    }
  };
  private RevMobAdsListener revMobListener;

  public Fullscreen(Activity paramActivity, String paramString)
  {
    this.activity = paramActivity;
    this.fetcher = new FullscreenFetcher(paramActivity, paramString);
    this.fetcher.fetchWithSessionVerification(this.listener);
  }

  public boolean isAdLoaded()
  {
    if (this.ad != null);
    for (int i = 1; ; i = 0)
      return i;
  }

  public void setRevMobListener(RevMobAdsListener paramRevMobAdsListener)
  {
    this.revMobListener = paramRevMobAdsListener;
  }

  public void show()
  {
    if (!(isAdLoaded()))
      return;
    Intent localIntent = new Intent(this.activity, FullscreenActivity.class);
    localIntent.putExtra("com.revmob.ads.fullscreen.adUrl", this.ad.getTargetURL());
    this.activity.startActivity(localIntent);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.fullscreen.Fullscreen
 * JD-Core Version:    0.5.3
 */