package com.applovin.impl.adview;

import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.Logger;

class k extends WebChromeClient
{
  private final Logger a;

  public k(AppLovinSdk paramAppLovinSdk)
  {
    this.a = paramAppLovinSdk.getLogger();
  }

  public boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
  {
    String str = paramConsoleMessage.sourceId() + ": " + paramConsoleMessage.lineNumber() + ": " + paramConsoleMessage.message();
    this.a.d("AdWebView", str);
    return true;
  }

  public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    this.a.w("AdWebView", "Alert reported: " + paramString2);
    return super.onJsAlert(paramWebView, paramString1, paramString2, paramJsResult);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.k
 * JD-Core Version:    0.5.3
 */