package com.pad.android.richmedia.view;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.pad.android.iappad.AdController;
import com.pad.android.iappad.controller.AdUtilityController;
import com.pad.android.util.AdLog;

final class i extends WebViewClient
{
  public final void onLoadResource(WebView paramWebView, String paramString)
  {
    AdLog.d("LBAdController", "lr:" + paramString);
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    if ((AdView.d(this.a) != null) && (AdView.d(this.a).isShowing()))
      AdView.d(this.a).dismiss();
    AdView.a(this.a, (int)(this.a.getHeight() / AdView.e(this.a)));
    AdView.b(this.a, (int)(this.a.getWidth() / AdView.e(this.a)));
    AdView.f(this.a).init(AdView.e(this.a));
    if (paramString.contains("#app_close"));
    try
    {
      Thread.sleep(1000L);
      AdView.g(this.a).destroyAd();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    AdLog.d("LBAdController", "error: " + paramString1 + ", Failing URL = " + paramString2);
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Log.d("AdView", "shouldOverride - URL: " + paramString);
    Uri localUri = Uri.parse(paramString);
    try
    {
      if ((AdView.a(this.a) != null) && (AdView.a(this.a, localUri)))
      {
        AdView.a(this.a).handleRequest(paramString);
        return true;
      }
      if (!(paramString.startsWith("tel:")))
        break label164;
      Intent localIntent2 = new Intent("android.intent.action.DIAL", Uri.parse(paramString));
      localIntent2.addFlags(268435456);
      this.a.getContext().startActivity(localIntent2);
      label164: return true;
    }
    catch (Exception localException1)
    {
      try
      {
        Intent localIntent1 = new Intent();
        localIntent1.setAction("android.intent.action.VIEW");
        localIntent1.setData(localUri);
        localIntent1.addFlags(268435456);
        this.a.getContext().startActivity(localIntent1);
        return true;
      }
      catch (Exception localException2)
      {
        return false;
      }
      if (paramString.startsWith("mailto:"))
      {
        Intent localIntent3 = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
        localIntent3.addFlags(268435456);
        this.a.getContext().startActivity(localIntent3);
        return true;
      }
      Intent localIntent4 = new Intent();
      localIntent4.setAction("android.intent.action.VIEW");
      localIntent4.setData(localUri);
      localIntent4.addFlags(268435456);
      this.a.getContext().startActivity(localIntent4);
    }
    return true;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.pad.android.richmedia.view.i
 * JD-Core Version:    0.5.3
 */