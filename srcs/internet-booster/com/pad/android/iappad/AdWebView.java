package com.pad.android.iappad;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import com.pad.android.listener.AdListener;
import org.json.JSONObject;

public class AdWebView extends WebView
{
  private Context a;
  private AdController b;
  private AdListener c;
  private WebSettings d;
  private JSONObject e;
  private String f;
  private boolean g = false;
  private boolean h = false;
  private ProgressDialog i;

  public AdWebView(Activity paramActivity, AdController paramAdController, boolean paramBoolean, AdListener paramAdListener)
  {
    super(paramActivity);
    this.a = paramActivity;
    this.b = paramAdController;
    this.h = paramBoolean;
    this.c = paramAdListener;
    a();
  }

  public AdWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramContext;
    a(paramAttributeSet);
  }

  public AdWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.a = paramContext;
    a(paramAttributeSet);
  }

  private void a()
  {
    this.d = getSettings();
    this.d.setJavaScriptEnabled(true);
    this.d.setJavaScriptCanOpenWindowsAutomatically(true);
    addJavascriptInterface(new AdJSInterface(this.a, this.b, this.c), "LBOUT");
    if (Build.VERSION.SDK_INT >= 8)
      this.d.setPluginState(WebSettings.PluginState.ON);
    setWebChromeClient(new y(this, this.a));
    setWebViewClient(new C(this, this.a, this.b, this));
  }

  private void a(AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null)
      return;
    this.b = new AdController((Activity)this.a, paramAttributeSet.getAttributeValue(null, "sectionid"));
    a();
  }

  public void setLoadingURL(String paramString)
  {
    this.f = paramString;
  }

  public void setResults(JSONObject paramJSONObject)
  {
    this.e = paramJSONObject;
  }

  public void showAd()
  {
    this.b.loadAd();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.iappad.AdWebView
 * JD-Core Version:    0.5.3
 */