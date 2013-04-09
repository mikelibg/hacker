package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.Rect;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.Logger;

class l extends WebView
{
  private final Logger a;
  private AppLovinAd b = null;
  private boolean c = false;

  l(AppLovinAdSize paramAppLovinAdSize, n paramn, AppLovinSdk paramAppLovinSdk, Context paramContext)
  {
    super(paramContext);
    this.a = paramAppLovinSdk.getLogger();
    setBackgroundColor(0);
    WebSettings localWebSettings = getSettings();
    localWebSettings.setSupportMultipleWindows(false);
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setSavePassword(false);
    setWebViewClient(paramn);
    setWebChromeClient(new k(paramAppLovinSdk));
    setVerticalScrollBarEnabled(false);
    setHorizontalScrollBarEnabled(false);
    setScrollBarStyle(33554432);
    setOnTouchListener(new m(this, paramAppLovinAdSize, paramn));
  }

  private static String a(String paramString)
  {
    return paramString.replace("%", "&#37;");
  }

  AppLovinAd a()
  {
    return this.b;
  }

  public void a(AppLovinAd paramAppLovinAd)
  {
    if (!(this.c))
      this.b = paramAppLovinAd;
    try
    {
      loadDataWithBaseURL("/", a(paramAppLovinAd.getHtml()), "text/html", null, "");
      this.a.d("AdWebView", "AppLovinAd rendered");
      return;
      this.a.userError("AdWebView", "Ad can not be loaded in a destoyed we view");
    }
    catch (Exception localException)
    {
    }
  }

  public void destroy()
  {
    this.a.d("AdWebView", "Destroying web view...");
    this.c = true;
    try
    {
      super.destroy();
      return;
    }
    catch (Exception localException)
    {
      this.a.e("AdWebView", "destroy() threw exception", localException);
    }
  }

  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    try
    {
      super.onFocusChanged(paramBoolean, paramInt, paramRect);
      return;
    }
    catch (Exception localException)
    {
      this.a.e("AdWebView", "onFocusChanged() threw exception", localException);
    }
  }

  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    try
    {
      super.onWindowFocusChanged(paramBoolean);
      return;
    }
    catch (Exception localException)
    {
      this.a.e("AdWebView", "onWindowFocusChanged() threw exception", localException);
    }
  }

  protected void onWindowVisibilityChanged(int paramInt)
  {
    try
    {
      super.onWindowVisibilityChanged(paramInt);
      return;
    }
    catch (Exception localException)
    {
      this.a.e("AdWebView", "onWindowVisibilityChanged() threw exception", localException);
    }
  }

  public boolean requestFocus(int paramInt, Rect paramRect)
  {
    boolean bool1;
    try
    {
      boolean bool2 = super.requestFocus(paramInt, paramRect);
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      this.a.e("AdWebView", "requestFocus() threw exception", localException);
      bool1 = false;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.l
 * JD-Core Version:    0.5.3
 */