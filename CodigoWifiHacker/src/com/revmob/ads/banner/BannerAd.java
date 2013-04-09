package com.revmob.ads.banner;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import com.revmob.ads.internal.Ad;

class BannerAd extends Ad
{
  private Drawable drawable;
  private String htmlAdUrl;

  public BannerAd(Activity paramActivity, Drawable paramDrawable, String paramString1, String paramString2)
  {
    super(paramActivity, paramString2);
    this.drawable = paramDrawable;
    this.htmlAdUrl = paramString1;
  }

  public Drawable getDrawable()
  {
    return this.drawable;
  }

  public String getHtmlAdUrl()
  {
    return this.htmlAdUrl;
  }

  public boolean isHtmlBanner()
  {
    if (this.htmlAdUrl != null);
    for (int i = 1; ; i = 0)
      return i;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.banner.BannerAd
 * JD-Core Version:    0.5.3
 */