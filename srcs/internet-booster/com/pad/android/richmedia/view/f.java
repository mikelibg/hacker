package com.pad.android.richmedia.view;

import android.app.Activity;
import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.Toast;

final class f extends WebViewClient
{
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    ImageButton localImageButton = (ImageButton)this.a.findViewById(102);
    if (paramWebView.canGoForward())
    {
      localImageButton.setImageBitmap(this.a.bitmapFromJar("bitmaps/rightarrow.png"));
      return;
    }
    localImageButton.setImageBitmap(this.a.bitmapFromJar("bitmaps/unrightarrow.png"));
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    ((ImageButton)this.a.findViewById(102)).setImageBitmap(this.a.bitmapFromJar("bitmaps/unrightarrow.png"));
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    Toast.makeText((Activity)paramWebView.getContext(), "AdOrmma Error:" + paramString1, 0).show();
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView.loadUrl(paramString);
    return true;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.richmedia.view.f
 * JD-Core Version:    0.5.3
 */