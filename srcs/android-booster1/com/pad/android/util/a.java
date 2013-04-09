package com.pad.android.util;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class a extends WebChromeClient
{
  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    new AlertDialog.Builder(AdOptinView.a(this.a)).setTitle("Alert").setMessage(paramString2).setPositiveButton(17039370, new b(this, paramJsResult)).setCancelable(false).create().show();
    return true;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.pad.android.util.a
 * JD-Core Version:    0.5.3
 */