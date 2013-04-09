package com.apperhand.device.android.c;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebView;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public final class e
{
  public static View a(Context paramContext, String paramString, WebView paramWebView1, WebView paramWebView2)
  {
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 17;
    localLayoutParams.setMargins(0, 0, 0, 0);
    localLinearLayout.setLayoutParams(localLayoutParams);
    localLinearLayout.setOrientation(1);
    localLinearLayout.setPadding(0, 0, 0, 0);
    localLinearLayout.setBackgroundColor(-16777216);
    float f = paramContext.getResources().getDisplayMetrics().density;
    TextView localTextView = new TextView(paramContext);
    localTextView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
    localTextView.setPadding((int)(0.5F + 2.0F * f), (int)(0.5F + 9.0F * f), (int)(0.5F + 2.0F * f), (int)(0.5F + 9.0F * f));
    localTextView.setText(paramString);
    localTextView.setTextSize(18.0F);
    localTextView.setTextColor(-16777216);
    localTextView.setBackgroundColor(-1644826);
    localTextView.setGravity(17);
    Drawable localDrawable1;
    try
    {
      Drawable localDrawable2 = paramContext.getPackageManager().getApplicationIcon(paramContext.getPackageName());
      localDrawable1 = localDrawable2;
      localTextView.setCompoundDrawablesWithIntrinsicBounds(localDrawable1, null, null, null);
      View localView = new View(paramContext);
      localView.setLayoutParams(new ViewGroup.LayoutParams(-1, (int)(0.5F + f * 3.0F)));
      localView.setBackgroundColor(-3355444);
      LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, 0, 1.0F);
      localLayoutParams1.setMargins(0, 0, 0, 0);
      paramWebView1.setLayoutParams(localLayoutParams1);
      paramWebView1.setScrollBarStyle(0);
      paramWebView1.setPadding(0, 0, 0, 0);
      LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams2.setMargins(0, 0, 0, 0);
      paramWebView2.setLayoutParams(localLayoutParams2);
      paramWebView2.setScrollBarStyle(0);
      paramWebView2.setPadding(0, 0, 0, 0);
      localLinearLayout.addView(localTextView);
      localLinearLayout.addView(localView);
      localLinearLayout.addView(paramWebView1);
      localLinearLayout.addView(paramWebView2);
      return localLinearLayout;
    }
    catch (Exception localException)
    {
      localDrawable1 = null;
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.device.android.c.e
 * JD-Core Version:    0.5.3
 */