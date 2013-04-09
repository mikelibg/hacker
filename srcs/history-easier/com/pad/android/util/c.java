package com.pad.android.util;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

final class c extends WebViewClient
{
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    this.a.requestFocus(130);
    DisplayMetrics localDisplayMetrics;
    int i;
    int j;
    if (paramString.equals(AdOptinView.d(this.a)))
    {
      AdOptinView.a(this.a, new RelativeLayout(AdOptinView.a(this.a)));
      paramWebView.setBackgroundColor(0);
      localDisplayMetrics = new DisplayMetrics();
      AdOptinView.a(this.a).getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      Rect localRect = new Rect();
      Window localWindow = AdOptinView.a(this.a).getWindow();
      localWindow.getDecorView().getWindowVisibleDisplayFrame(localRect);
      i = localRect.top;
      j = localWindow.findViewById(16908290).getTop();
      if (j <= i)
        break label222;
    }
    for (int k = j - i; ; k = 0)
    {
      ViewGroup.MarginLayoutParams localMarginLayoutParams = new ViewGroup.MarginLayoutParams(localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels - i - k);
      localMarginLayoutParams.setMargins(0, 0, 0, 0);
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(localMarginLayoutParams);
      AdOptinView.e(this.a).addView(paramWebView, localLayoutParams);
      AdOptinView.a(this.a).addContentView(AdOptinView.e(this.a), localLayoutParams);
      label222: return;
    }
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    if (paramString.equals(AdOptinView.d(this.a)))
      return;
    paramWebView.stopLoading();
    AdOptinView.a(this.a).startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.util.c
 * JD-Core Version:    0.5.3
 */