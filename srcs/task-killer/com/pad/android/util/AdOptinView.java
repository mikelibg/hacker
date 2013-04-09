package com.pad.android.util;

import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.pad.android.listener.AdOptinListener;

public class AdOptinView extends WebView
{
  private Activity a;
  private String b;
  private AdOptinListener c;
  private RelativeLayout d;

  public AdOptinView(Activity paramActivity, String paramString, AdOptinListener paramAdOptinListener)
  {
    super(paramActivity);
    this.a = paramActivity;
    this.b = paramString;
    this.c = paramAdOptinListener;
    WebSettings localWebSettings = getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
    addJavascriptInterface(new AdOptinJSInterface(this), "LBOPTIN");
    if (Build.VERSION.SDK_INT >= 8)
      localWebSettings.setPluginState(WebSettings.PluginState.ON);
    setWebChromeClient(new a(this));
    setWebViewClient(new c(this));
    loadUrl(this.b);
  }

  public AdOptinView(Context paramContext)
  {
    super(paramContext);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.util.AdOptinView
 * JD-Core Version:    0.5.3
 */