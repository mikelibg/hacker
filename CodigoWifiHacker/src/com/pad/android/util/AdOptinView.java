package com.pad.android.util;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.pad.android.listener.AdOptinListener;
import java.lang.reflect.Method;

public class AdOptinView extends WebView
{
  private Activity activity;
  private RelativeLayout layout;
  private ProgressDialog loadingDialog;
  private AdOptinListener oListener;
  private String optinUrl;

  public AdOptinView(Activity paramActivity, String paramString, AdOptinListener paramAdOptinListener)
  {
    super(paramActivity);
    this.activity = paramActivity;
    this.optinUrl = paramString;
    this.oListener = paramAdOptinListener;
    initialize();
  }

  public AdOptinView(Context paramContext)
  {
    super(paramContext);
  }

  private void closeView()
  {
    this.activity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (AdOptinView.this.layout != null)
          AdOptinView.this.layout.removeAllViews();
        AdOptinView.this.setVisibility(4);
        try
        {
          Class.forName("android.webkit.WebView").getMethod("onPause", null).invoke(this, null);
          return;
        }
        catch (Exception localException)
        {
        }
      }
    });
  }

  private void initialize()
  {
    WebSettings localWebSettings = getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
    addJavascriptInterface(new AdOptinJSInterface(), "LBOPTIN");
    if (Build.VERSION.SDK_INT >= 8)
      localWebSettings.setPluginState(WebSettings.PluginState.ON);
    setWebViewClient(new WebViewClient()
    {
      public void onPageFinished(WebView paramWebView, String paramString)
      {
        AdOptinView.this.requestFocus(130);
        if ((AdOptinView.this.loadingDialog == null) || (!(AdOptinView.this.loadingDialog.isShowing())))
          return;
        AdOptinView.this.loadingDialog.dismiss();
      }

      public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
      {
        if (!(paramString.equals(AdOptinView.this.optinUrl)))
        {
          paramWebView.stopLoading();
          AdOptinView.this.activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
        }
        while (true)
        {
          return;
          if ((AdOptinView.this.loadingDialog != null) && (AdOptinView.this.loadingDialog.isShowing()))
            continue;
          try
          {
            AdOptinView.this.loadingDialog = ProgressDialog.show(AdOptinView.this.activity, "", "Loading....Please wait!", true);
          }
          catch (Exception localException)
          {
            AdLog.e("LBADController", "Error when trying to show dialog - " + localException.getMessage());
          }
        }
      }
    });
    loadUrl(this.optinUrl);
    this.layout = new RelativeLayout(this.activity);
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.activity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    Rect localRect = new Rect();
    Window localWindow = this.activity.getWindow();
    localWindow.getDecorView().getWindowVisibleDisplayFrame(localRect);
    int i = localRect.top;
    int j = localWindow.findViewById(16908290).getTop();
    if (j > i);
    for (int k = j - i; ; k = 0)
    {
      ViewGroup.MarginLayoutParams localMarginLayoutParams = new ViewGroup.MarginLayoutParams(localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels - i - k);
      localMarginLayoutParams.setMargins(0, 0, 0, 0);
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(localMarginLayoutParams);
      this.layout.addView(this, localLayoutParams);
      this.activity.addContentView(this.layout, localLayoutParams);
      return;
    }
  }

  class AdOptinJSInterface
  {
    public void cancelclicked()
    {
      SharedPreferences.Editor localEditor = AdOptinView.this.activity.getSharedPreferences("Preference", 2).edit();
      localEditor.putString("SD_APP_OPTIN", "0");
      localEditor.putString("SD_APP_OPTIN_SHOWN", "1");
      localEditor.commit();
      AdOptinView.this.closeView();
      if (AdOptinView.this.oListener == null)
        return;
      AdOptinView.this.oListener.onAdOptin();
    }

    public void okclicked()
    {
      SharedPreferences.Editor localEditor = AdOptinView.this.activity.getSharedPreferences("Preference", 2).edit();
      localEditor.putString("SD_APP_OPTIN", System.currentTimeMillis());
      localEditor.putString("SD_APP_OPTIN_SHOWN", "1");
      localEditor.commit();
      AdOptinView.this.closeView();
      if (AdOptinView.this.oListener == null)
        return;
      AdOptinView.this.oListener.onAdOptin();
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.pad.android.util.AdOptinView
 * JD-Core Version:    0.5.3
 */