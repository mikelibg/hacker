package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.ViewParent;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.adview.AppLovinAdView;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.Logger;

class n extends WebViewClient
{
  private final AppLovinSdk a;
  private final Logger b;
  private AdViewControllerImpl c;

  public n(AdViewControllerImpl paramAdViewControllerImpl, AppLovinSdk paramAppLovinSdk)
  {
    this.a = paramAppLovinSdk;
    this.b = paramAppLovinSdk.getLogger();
    this.c = paramAdViewControllerImpl;
  }

  private void a(Uri paramUri, l paraml)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW", paramUri);
      paraml.getContext().startActivity(localIntent);
      return;
    }
    catch (Throwable localThrowable)
    {
      this.b.e("AdWebViewClient", "Unable to show \"" + paramUri + "\".", localThrowable);
    }
  }

  private void e(l paraml)
  {
    AppLovinAd localAppLovinAd = paraml.a();
    if (localAppLovinAd == null)
      return;
    this.c.a(localAppLovinAd);
  }

  void a(WebView paramWebView, String paramString)
  {
    this.b.d("AdWebViewClient", "Processing click on ad URL \"" + paramString + "\"");
    Uri localUri;
    l locall;
    String str3;
    if ((paramString != null) && (paramWebView instanceof l))
    {
      localUri = Uri.parse(paramString);
      locall = (l)paramWebView;
      String str1 = localUri.getScheme();
      String str2 = localUri.getHost();
      str3 = localUri.getPath();
      if ((!("applovin".equals(str1))) || (!("com.applovin.sdk".equals(str2))))
        break label241;
      if (!("/adservice/track_click".equals(str3)))
        break label112;
      d(locall);
    }
    while (true)
    {
      return;
      if ("/adservice/next_ad".equals(str3))
        label112: b(locall);
      if ("/adservice/close_ad".equals(str3))
        c(locall);
      if (str3.startsWith("/adservice/landing_page/"))
      {
        String str4 = str3.substring(1 + "/adservice/landing_page".length());
        if (str4.length() > 0)
        {
          e(locall);
          a(str4, locall);
        }
        b(locall);
      }
      this.b.e("AdWebViewClient", "Unknown URL: " + paramString);
      continue;
      label241: e(locall);
      a(localUri, locall);
    }
  }

  void a(l paraml)
  {
    AppLovinAd localAppLovinAd = paraml.a();
    if (localAppLovinAd == null)
      return;
    a(paraml, localAppLovinAd.getDestinationUrl());
  }

  protected void a(String paramString, l paraml)
  {
    Context localContext = paraml.getContext();
    if (localContext instanceof Activity)
    {
      Activity localActivity = (Activity)localContext;
      localActivity.runOnUiThread(new o(this, localActivity, paramString));
    }
    while (true)
    {
      return;
      this.b.e("AdWebViewClient", "Unable to show landing page, context is not activity");
    }
  }

  protected void b(l paraml)
  {
    ViewParent localViewParent = paraml.getParent();
    if (!(localViewParent instanceof AppLovinAdView))
      return;
    ((AppLovinAdView)localViewParent).loadNextAd();
  }

  protected void c(l paraml)
  {
    this.c.a(paraml);
  }

  protected void d(l paraml)
  {
    AppLovinAd localAppLovinAd = paraml.a();
    if (localAppLovinAd == null)
      return;
    a(paraml, localAppLovinAd.getDestinationUrl());
  }

  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    this.c.onAdHtmlLoaded(paramWebView);
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    a(paramWebView, paramString);
    return true;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.n
 * JD-Core Version:    0.5.3
 */