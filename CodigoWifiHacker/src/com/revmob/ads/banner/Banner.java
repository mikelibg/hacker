package com.revmob.ads.banner;

import android.app.Activity;
import android.content.Context;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.revmob.ads.RevMobAdsListener;
import com.revmob.ads.internal.Ad;
import com.revmob.ads.internal.AdFetcher;
import com.revmob.ads.internal.LoadError;
import com.revmob.ads.internal.OnLoadListener;
import com.revmob.ads.internal.RevMobWebViewClient;
import com.revmob.ads.internal.RevMobWebViewClient.RevMobClientActions;

public class Banner extends RelativeLayout
{
  private static final int DEFAULT_HEIGHT_IN_DIP = 50;
  private static final int DEFAULT_WIDTH_IN_DIP = 320;
  public static final String MMA_BANNER = "mma_banner";
  private View adView;
  private RevMobAdsListener adsListener;
  private BannerAd bannerAd;
  private int height;
  final View.OnClickListener onClickListener;
  final OnLoadListener onLoadListener;
  private int width;

  private Banner(Context paramContext)
  {
    super(paramContext);
    this.width = 320;
    this.height = 50;
    this.onClickListener = new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        if (Banner.this.adsListener != null)
          Banner.this.adsListener.onRevMobAdClicked();
        Banner.this.bannerAd.click();
      }
    };
    this.onLoadListener = new OnLoadListener()
    {
      public void onAdNotReceived(LoadError paramLoadError, String paramString)
      {
        if (Banner.this.adsListener == null)
          return;
        Banner.this.adsListener.onRevMobAdNotReceived("Ad not received");
      }

      public void onAdReceived(Ad paramAd)
      {
        Banner.access$102(Banner.this, (BannerAd)paramAd);
        if (Banner.this.adsListener != null)
          Banner.this.adsListener.onRevMobAdReceived();
        Banner.this.setOnClickListener(Banner.this.onClickListener);
        ((Activity)Banner.this.getContext()).runOnUiThread(new Runnable()
        {
          public void run()
          {
            if (Banner.this.bannerAd.isHtmlBanner())
              Banner.this.addHtmlAdView();
            while (true)
            {
              return;
              Banner.this.addImageView();
            }
          }
        });
      }
    };
  }

  public Banner(Context paramContext, String paramString)
  {
    this(paramContext, paramString, null);
  }

  public Banner(Context paramContext, String paramString, RevMobAdsListener paramRevMobAdsListener)
  {
    super(paramContext);
    this.width = 320;
    this.height = 50;
    this.onClickListener = new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        if (Banner.this.adsListener != null)
          Banner.this.adsListener.onRevMobAdClicked();
        Banner.this.bannerAd.click();
      }
    };
    this.onLoadListener = new OnLoadListener()
    {
      public void onAdNotReceived(LoadError paramLoadError, String paramString)
      {
        if (Banner.this.adsListener == null)
          return;
        Banner.this.adsListener.onRevMobAdNotReceived("Ad not received");
      }

      public void onAdReceived(Ad paramAd)
      {
        Banner.access$102(Banner.this, (BannerAd)paramAd);
        if (Banner.this.adsListener != null)
          Banner.this.adsListener.onRevMobAdReceived();
        Banner.this.setOnClickListener(Banner.this.onClickListener);
        ((Activity)Banner.this.getContext()).runOnUiThread(new Runnable()
        {
          public void run()
          {
            if (Banner.this.bannerAd.isHtmlBanner())
              Banner.this.addHtmlAdView();
            while (true)
            {
              return;
              Banner.this.addImageView();
            }
          }
        });
      }
    };
    new BannerFetcher((Activity)paramContext, paramString, "mma_banner").fetchWithSessionVerification(this.onLoadListener);
    this.adsListener = paramRevMobAdsListener;
  }

  private void addHtmlAdView()
  {
    this.adView = new WebView(getContext());
    RevMobWebViewClient localRevMobWebViewClient = new RevMobWebViewClient(new RevMobWebViewClient.RevMobClientActions()
    {
      public boolean onClick()
      {
        Banner.this.onClickListener.onClick(Banner.this.adView);
        return true;
      }

      public boolean onClose()
      {
        return true;
      }
    });
    this.adView.setBackgroundColor(0);
    ((WebView)this.adView).loadUrl(this.bannerAd.getHtmlAdUrl());
    calculateDimensions();
    ((WebView)this.adView).setWebViewClient(localRevMobWebViewClient);
    ((WebView)this.adView).setScrollContainer(false);
    this.adView.setLayoutParams(new RelativeLayout.LayoutParams(this.width, this.height));
    this.adView.bringToFront();
    addView(this.adView);
  }

  private void addImageView()
  {
    this.adView = new ImageView(getContext());
    ((ImageView)this.adView).setImageDrawable(this.bannerAd.getDrawable());
    if (getParent() != null)
      ((View)getParent()).setVisibility(0);
    calculateDimensions();
    this.adView.setLayoutParams(new RelativeLayout.LayoutParams(this.width, this.height));
    ((ImageView)this.adView).setScaleType(ImageView.ScaleType.FIT_XY);
    this.adView.setOnClickListener(this.onClickListener);
    addView(this.adView);
  }

  private void calculateDimensions()
  {
    View localView = (View)getParent();
    int i = ((Activity)getContext()).getWindowManager().getDefaultDisplay().getWidth();
    if ((localView != null) && (localView.getWidth() != 0))
      i = localView.getWidth();
    this.width = i;
    int j = 50 * this.width / 320;
    if ((localView != null) && (localView.getHeight() != 0))
      j = Math.min(localView.getHeight(), j);
    this.height = j;
  }

  public RevMobAdsListener getAdsListener()
  {
    return this.adsListener;
  }

  public void setAdsListener(RevMobAdsListener paramRevMobAdsListener)
  {
    this.adsListener = paramRevMobAdsListener;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.banner.Banner
 * JD-Core Version:    0.5.3
 */