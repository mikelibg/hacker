package com.pad.android.iappad;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class y extends WebChromeClient
{
  private Context a;

  public y(AdWebView paramAdWebView, Context paramContext)
  {
    this.a = paramContext;
  }

  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    new AlertDialog.Builder(this.a).setTitle("Alert").setMessage(paramString2).setPositiveButton(17039370, new z(this, paramJsResult)).setCancelable(false).create().show();
    return true;
  }

  public final boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    new AlertDialog.Builder(this.a).setTitle("Confirm").setMessage(paramString2).setPositiveButton(17039370, new A(this, paramJsResult)).setNegativeButton(17039360, new B(this, paramJsResult)).create().show();
    return true;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.iappad.y
 * JD-Core Version:    0.5.3
 */