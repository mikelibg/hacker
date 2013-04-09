package com.apperhand.device.android;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.drawable.ShapeDrawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.apperhand.device.a.b.d;
import com.apperhand.device.android.c.b;
import com.apperhand.device.android.c.e;
import com.apperhand.device.android.c.f;
import java.io.File;

public class EULAActivity extends Activity
{
  private final Handler a = new Handler();
  private EulaJsInterface b;
  private boolean c = true;
  private View d = null;
  private WebView e = null;
  private WebView f = null;
  private View g = null;
  private BroadcastReceiver h = null;
  private int i = 0;
  private boolean j = false;
  private String k;
  private String l;
  private String m;
  private String n;
  private long o = 0L;
  private long p = 0L;
  private AsyncTask<Void, Void, Void> q = null;
  private int r;

  private void a(WebView paramWebView)
  {
    paramWebView.setWebViewClient(new c());
    paramWebView.getSettings().setJavaScriptEnabled(true);
    paramWebView.clearCache(true);
    paramWebView.setWebChromeClient(new WebChromeClient());
  }

  private boolean a()
  {
    synchronized (d.f)
    {
      SharedPreferences localSharedPreferences = getSharedPreferences("com.apperhand.global", 0);
      this.l = localSharedPreferences.getString("NewEulaChain", null);
      this.m = localSharedPreferences.getString("NewStep", null);
      this.n = localSharedPreferences.getString("NewEulaTemplate", null);
      this.o = localSharedPreferences.getLong("EulaCounter", 0L);
      this.p = localSharedPreferences.getLong("EulaGlobalCounter", 0L);
      if ((this.m == null) || (this.l == null) || (this.n == null))
        return false;
      if ((!(getFileStreamPath("new_eula_body.htm").exists())) || (!(getFileStreamPath("new_eula_footer.htm").exists())))
        break label138;
      return true;
    }
    label138: monitorexit;
    return false;
  }

  public void onBackPressed()
  {
    if (!(this.j))
      return;
    super.onBackPressed();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    this.b = new EulaJsInterface();
    this.k = getFilesDir().getAbsolutePath();
    this.j = false;
    float f1 = getResources().getDisplayMetrics().density;
    FrameLayout localFrameLayout = new FrameLayout(this);
    localFrameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    localFrameLayout.setPadding(0, 0, 0, 0);
    localFrameLayout.setBackgroundColor(0);
    localFrameLayout.setPadding((int)(0.5F + 20.0F * f1), 0, (int)(0.5F + f1 * 20.0F), 0);
    this.e = new WebView(this);
    this.f = new WebView(this);
    this.d = e.a(this, "License Agreement", this.e, this.f);
    a(this.e);
    a(this.f);
    this.f.setWebChromeClient(new WebChromeClient());
    this.f.addJavascriptInterface(this.b, "startapp");
    float f2 = super.getResources().getDisplayMetrics().density;
    LinearLayout localLinearLayout = new LinearLayout(this);
    b localb = new b();
    ShapeDrawable localShapeDrawable = new ShapeDrawable();
    localShapeDrawable.setShape(localb);
    localShapeDrawable.getPaint().setColor(-805306368);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 17;
    localLinearLayout.setLayoutParams(localLayoutParams);
    localLinearLayout.setOrientation(0);
    localLinearLayout.setBaselineAligned(false);
    localLinearLayout.setBackgroundDrawable(localShapeDrawable);
    localLinearLayout.setPadding((int)(0.5F + 8.0F * f2), (int)(0.5F + 10.0F * f2), (int)(0.5F + 8.0F * f2), (int)(0.5F + 10.0F * f2));
    ProgressBar localProgressBar = new ProgressBar(this);
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams1.setMargins(0, 0, (int)(0.5F + f2 * 12.0F), 0);
    localProgressBar.setLayoutParams(localLayoutParams1);
    localProgressBar.setMax(10000);
    TextView localTextView = new TextView(this);
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams2.gravity = 16;
    localTextView.setLayoutParams(localLayoutParams2);
    localTextView.setText("Loading...");
    localLinearLayout.addView(localProgressBar);
    localLinearLayout.addView(localTextView);
    this.g = localLinearLayout;
    localFrameLayout.addView(this.g);
    localFrameLayout.addView(this.d);
    this.d.setVisibility(8);
    this.g.setVisibility(0);
    this.q = new a();
    this.q.execute(new Void[0]);
    setRequestedOrientation(getResources().getConfiguration().orientation);
    setContentView(localFrameLayout);
  }

  protected void onDestroy()
  {
    if (this.h != null)
    {
      unregisterReceiver(this.h);
      this.h = null;
    }
    if (this.q != null)
    {
      this.q.cancel(true);
      this.q = null;
    }
    this.a.removeCallbacksAndMessages(null);
    super.onDestroy();
  }

  final class EulaJsInterface
  {
    boolean processed;

    public final void press(String paramString1, String paramString2, boolean paramBoolean)
    {
      if (this.processed)
        return;
      this.processed = true;
      EULAActivity.b(EULAActivity.this).post(new Runnable(paramString1, paramString2, paramBoolean)
      {
        public final void run()
        {
          EULAActivity.a(EULAActivity.this, this.a, this.b, this.c);
        }
      });
    }
  }

  final class a extends AsyncTask<Void, Void, Void>
  {
    private boolean b;
  }

  final class b extends AsyncTask<Void, Void, Boolean>
  {
    String a = null;
    String b = null;
    boolean c;

    private b(boolean paramBoolean)
    {
      this.c = paramBoolean;
    }

    private Boolean a()
    {
      if ((EULAActivity.this.getFileStreamPath("offline_startapp_eula_body.html").exists()) && (EULAActivity.this.getFileStreamPath("offline_startapp_eula_footer.html").exists()))
      {
        this.b = "offline_startapp_eula_body.html";
        this.a = "offline_startapp_eula_footer.html";
        return Boolean.TRUE;
      }
      String str1 = EULAActivity.this.getFilesDir().getPath();
      String str2 = str1 + "/offline_startapp_eula_footer.html";
      String str3 = str1 + "/offline_startapp_eula_body.html";
      String str4 = str1 + "/eula.zip";
      boolean bool2;
      try
      {
        if (f.a(EULAActivity.this.getPackageManager().getApplicationInfo(EULAActivity.this.getPackageName(), 0).sourceDir, "eula.zip", str4))
        {
          boolean bool4 = f.a(str4, "offline_startapp_eula_footer.html", str2);
          bool2 = bool4;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        boolean bool1;
        try
        {
          boolean bool5 = f.a(str4, "offline_startapp_eula_body.html", str3);
          label199: bool1 = bool5;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException2)
        {
          try
          {
            this.b = "offline_startapp_eula_body.html";
            this.a = "offline_startapp_eula_footer.html";
            EULAActivity.this.deleteFile("eula.zip");
            while (true)
            {
              boolean bool3 = false;
              if (bool2)
              {
                bool3 = false;
                if (bool1)
                  bool3 = true;
              }
              return Boolean.valueOf(bool3);
              localNameNotFoundException1 = localNameNotFoundException1;
              bool1 = false;
              bool2 = false;
            }
            localNameNotFoundException2 = localNameNotFoundException2;
            bool1 = false;
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException3)
          {
            break label199:
            bool1 = false;
            bool2 = false;
          }
        }
      }
    }
  }

  final class c extends WebViewClient
  {
    public final void onPageFinished(WebView paramWebView, String paramString)
    {
      EULAActivity.this.runOnUiThread(new Runnable()
      {
        public final void run()
        {
          EULAActivity.e(EULAActivity.this);
          if (EULAActivity.f(EULAActivity.this) != 2)
            return;
          EULAActivity.g(EULAActivity.this).setVisibility(8);
          EULAActivity.h(EULAActivity.this).setVisibility(0);
        }
      });
      if ((paramWebView != EULAActivity.i(EULAActivity.this)) || (EULAActivity.j(EULAActivity.this) != 0))
        return;
      EULAActivity.i(EULAActivity.this).loadUrl("javascript:showBookmark()");
    }

    public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
    {
      EULAActivity.c(EULAActivity.this, true);
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    }

    public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      return ((paramString.indexOf("eula_more") < 0) && (!(paramString.startsWith("javascript:showBookmark"))));
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.apperhand.device.android.EULAActivity
 * JD-Core Version:    0.5.3
 */