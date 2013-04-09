package com.millennialmedia.android;

import android.webkit.WebView;
import android.webkit.WebViewClient;

class MMWebViewClient extends WebViewClient
{
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    boolean bool = paramString.substring(0, 6).equalsIgnoreCase("mmsdk:");
    int i = 0;
    if (bool)
    {
      MMAdViewSDK.Log.v("Running JS bridge command: " + paramString);
      new Thread(new MMCommand(paramWebView, paramString)).start();
      i = 1;
    }
    return i;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMWebViewClient
 * JD-Core Version:    0.5.3
 */