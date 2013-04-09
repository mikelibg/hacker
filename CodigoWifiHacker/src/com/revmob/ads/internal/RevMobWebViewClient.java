package com.revmob.ads.internal;

import android.webkit.WebView;
import android.webkit.WebViewClient;

public class RevMobWebViewClient extends WebViewClient
{
  private RevMobClientActions actions;

  public RevMobWebViewClient(RevMobClientActions paramRevMobClientActions)
  {
    this.actions = paramRevMobClientActions;
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.endsWith("#close"));
    for (boolean bool = this.actions.onClose(); ; bool = super.shouldOverrideUrlLoading(paramWebView, paramString))
      while (true)
      {
        return bool;
        if (!(paramString.endsWith("#click")))
          break;
        bool = this.actions.onClick();
      }
  }

  public static abstract interface RevMobClientActions
  {
    public abstract boolean onClick();

    public abstract boolean onClose();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.internal.RevMobWebViewClient
 * JD-Core Version:    0.5.3
 */