package com.pad.android.richmedia.view;

import android.app.Activity;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class g extends WebChromeClient
{
  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    Activity localActivity = (Activity)paramWebView.getContext();
    localActivity.setTitle("Loading...");
    localActivity.setProgress(paramInt * 100);
    if (paramInt != 100)
      return;
    localActivity.setTitle(paramWebView.getUrl());
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.richmedia.view.g
 * JD-Core Version:    0.5.3
 */