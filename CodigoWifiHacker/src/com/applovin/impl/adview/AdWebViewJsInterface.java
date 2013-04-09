package com.applovin.impl.adview;

import android.webkit.WebView;

public class AdWebViewJsInterface
{
  private final n a;
  private final WebView b;

  AdWebViewJsInterface(n paramn, WebView paramWebView)
  {
    this.a = paramn;
    this.b = paramWebView;
  }

  public void execute(String paramString)
  {
    showUrl("applovin://com.applovin.sdk/adservice/" + paramString);
  }

  public void showUrl(String paramString)
  {
    this.a.a(this.b, paramString);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.AdWebViewJsInterface
 * JD-Core Version:    0.5.3
 */