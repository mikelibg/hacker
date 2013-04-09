package com.revmob.ads.fullscreen;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.revmob.ads.RevMobAdsListener;
import com.revmob.ads.internal.Ad;
import com.revmob.ads.internal.RevMobWebViewClient;
import com.revmob.ads.internal.RevMobWebViewClient.RevMobClientActions;
import java.util.HashMap;
import java.util.Map;

class FullscreenAd extends Ad
{
  private static Map<String, FullscreenAd> loadedFullscreens = new HashMap();
  private Drawable adImage;
  private String htmlAdUrl;
  private RevMobAdsListener revmobAdsListener;

  FullscreenAd(Activity paramActivity, Drawable paramDrawable, String paramString1, String paramString2)
  {
    super(paramActivity, paramString2);
    this.htmlAdUrl = paramString1;
    this.adImage = paramDrawable;
  }

  public static void addLoadedFullscreen(FullscreenAd paramFullscreenAd)
  {
    loadedFullscreens.put(paramFullscreenAd.getTargetURL(), paramFullscreenAd);
  }

  public static void cleanLoadedFullscreen(FullscreenAd paramFullscreenAd)
  {
    loadedFullscreens.remove(paramFullscreenAd.getTargetURL());
  }

  public static FullscreenAd getLoadedFullscreen(String paramString)
  {
    return ((FullscreenAd)loadedFullscreens.get(paramString));
  }

  public Drawable getAdImage()
  {
    if (this.adImage != null);
    for (Drawable localDrawable = this.adImage; ; localDrawable = StaticAssets.getLocalizedDrawable())
      return localDrawable;
  }

  public AdView getAdView(Activity paramActivity)
  {
    return new AdView(paramActivity);
  }

  public RevMobAdsListener getRevmobAdsListener()
  {
    return this.revmobAdsListener;
  }

  public boolean isHtmlFullscreen()
  {
    if (this.htmlAdUrl != null);
    for (int i = 1; ; i = 0)
      return i;
  }

  public void setRevmobAdsListener(RevMobAdsListener paramRevMobAdsListener)
  {
    this.revmobAdsListener = paramRevMobAdsListener;
  }

  class AdView extends RelativeLayout
  {
    private static final int BACKGROUND_COLOR = -587202560;
    private static final int CLOSE_BUTTON_PADDING = 20;
    private static final int CLOSE_BUTTON_SIZE_IN_DIP = 40;
    private static final int FADE_IN_DURATION = 500;
    private static final int PROGRESSBAR_PADDING = 15;
    private boolean clicked = false;
    private View revmobAdsView;

    public AdView(Context paramContext)
    {
      super(paramContext);
      if (FullscreenAd.this.isHtmlFullscreen())
        addHtmlAdView();
      while (true)
      {
        return;
        addImageAdView();
        addCloseButton();
      }
    }

    private void addCloseButton()
    {
      ImageView localImageView = new ImageView(getContext());
      localImageView.setImageDrawable(StaticAssets.getCloseButton());
      localImageView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          if (FullscreenAd.this.revmobAdsListener != null)
            FullscreenAd.this.revmobAdsListener.onRevMobAdDismiss();
          FullscreenAd.cleanLoadedFullscreen(FullscreenAd.this);
          ((Activity)FullscreenAd.AdView.this.getContext()).finish();
        }
      });
      int i = dipToPixels(40);
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(i, i);
      int j = dipToPixels(20);
      localLayoutParams.rightMargin = j;
      localLayoutParams.topMargin = j;
      localLayoutParams.addRule(11);
      localLayoutParams.addRule(6);
      localImageView.setLayoutParams(localLayoutParams);
      addView(localImageView);
    }

    private void addImageAdView()
    {
      this.revmobAdsView = new ImageView(getContext());
      ((ImageView)this.revmobAdsView).setImageDrawable(FullscreenAd.this.getAdImage());
      ((ImageView)this.revmobAdsView).setScaleType(ImageView.ScaleType.CENTER_CROP);
      this.revmobAdsView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          if (FullscreenAd.AdView.this.clicked);
          while (true)
          {
            return;
            new FullscreenAd.AdView.AsyncClickRedirector(FullscreenAd.AdView.this, null).execute(new Void[0]);
            FullscreenAd.AdView.access$102(FullscreenAd.AdView.this, true);
          }
        }
      });
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
      localAlphaAnimation.setInterpolator(new DecelerateInterpolator());
      localAlphaAnimation.setDuration(500L);
      this.revmobAdsView.setAnimation(localAlphaAnimation);
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
      setBackgroundColor(-587202560);
      addView(this.revmobAdsView, localLayoutParams);
    }

    private void addProgressBar()
    {
      ProgressBar localProgressBar = new ProgressBar(getContext());
      localProgressBar.setIndeterminate(true);
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      int i = dipToPixels(15);
      localLayoutParams.setMargins(i, i, i, i);
      addView(localProgressBar, localLayoutParams);
    }

    private int dipToPixels(int paramInt)
    {
      return (int)(0.5F + getContext().getResources().getDisplayMetrics().density * paramInt);
    }

    public void addHtmlAdView()
    {
      RevMobWebViewClient localRevMobWebViewClient = new RevMobWebViewClient(new RevMobWebViewClient.RevMobClientActions()
      {
        public boolean onClick()
        {
          if (FullscreenAd.AdView.this.clicked);
          while (true)
          {
            return true;
            new FullscreenAd.AdView.AsyncClickRedirector(FullscreenAd.AdView.this, null).execute(new Void[0]);
            FullscreenAd.AdView.access$102(FullscreenAd.AdView.this, true);
          }
        }

        public boolean onClose()
        {
          if (FullscreenAd.this.revmobAdsListener != null)
            FullscreenAd.this.revmobAdsListener.onRevMobAdDismiss();
          FullscreenAd.cleanLoadedFullscreen(FullscreenAd.this);
          ((Activity)FullscreenAd.AdView.this.getContext()).finish();
          return true;
        }
      });
      this.revmobAdsView = new WebView(getContext());
      this.revmobAdsView.setBackgroundColor(0);
      ((WebView)this.revmobAdsView).setWebViewClient(localRevMobWebViewClient);
      ((WebView)this.revmobAdsView).loadUrl(FullscreenAd.this.htmlAdUrl);
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
      addView(this.revmobAdsView, localLayoutParams);
    }

    private class AsyncClickRedirector extends AsyncTask<Void, Void, Void>
    {
      protected Void doInBackground(Void[] paramArrayOfVoid)
      {
        if (FullscreenAd.this.revmobAdsListener != null)
          FullscreenAd.this.revmobAdsListener.onRevMobAdClicked();
        FullscreenAd.this.click();
        return null;
      }

      protected void onPostExecute(Void paramVoid)
      {
        FullscreenAd.cleanLoadedFullscreen(FullscreenAd.this);
        ((Activity)FullscreenAd.AdView.this.getContext()).finish();
      }

      protected void onPreExecute()
      {
        FullscreenAd.AdView.this.addProgressBar();
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.fullscreen.FullscreenAd
 * JD-Core Version:    0.5.3
 */