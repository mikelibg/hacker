package com.eMVeQv.NFmMPJ121641;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;

public class SmartWallActivity extends Activity
{
  private String adType;
  private ProgressDialog dialog;
  private WebView mWebView;

  private void LandingPageAd()
  {
    try
    {
      float f = getResources().getDisplayMetrics().density;
      LinearLayout localLinearLayout = new LinearLayout(this);
      localLinearLayout.setOrientation(1);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
      localLinearLayout.setLayoutParams(localLayoutParams);
      ImageView localImageView = new ImageView(this);
      localImageView.setBackgroundColor(Color.parseColor("#00B0F0"));
      localLinearLayout.addView(localImageView, new LinearLayout.LayoutParams(-1, 7 * (int)f));
      RelativeLayout localRelativeLayout = new RelativeLayout(this);
      localRelativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
      RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams1.addRule(15, -1);
      TextView localTextView = new TextView(this);
      localTextView.setText("Ad ");
      localTextView.setTextColor(-1);
      localTextView.setLayoutParams(localLayoutParams1);
      localTextView.setGravity(16);
      localTextView.setId(11);
      Button localButton = new Button(this);
      RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams2.addRule(11);
      localButton.setLayoutParams(localLayoutParams2);
      localButton.setText("X");
      localButton.setPadding(0, 2 * (int)f, 10 * (int)f, 2 * (int)f);
      localButton.setTextSize(15.0F);
      localButton.setTypeface(Typeface.DEFAULT, 1);
      localButton.setTextColor(-1);
      localButton.setBackgroundColor(Color.parseColor("#31849B"));
      1 local1 = new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          SmartWallActivity.this.finish();
        }
      };
      localButton.setOnClickListener(local1);
      WebView localWebView1 = new WebView(this);
      this.mWebView = localWebView1;
      this.mWebView.getSettings().setJavaScriptEnabled(true);
      this.mWebView.setWebChromeClient(new WebChromeClient());
      this.mWebView.setScrollBarStyle(33554432);
      WebView localWebView2 = this.mWebView;
      AirpushWebClient localAirpushWebClient = new AirpushWebClient(null);
      localWebView2.setWebViewClient(localAirpushWebClient);
      this.mWebView.loadUrl(Util.getLandingPageAdUrl());
      localLinearLayout.addView(localRelativeLayout);
      localRelativeLayout.addView(localTextView);
      localRelativeLayout.addView(localButton);
      localRelativeLayout.setBackgroundColor(Color.parseColor("#31849B"));
      localLinearLayout.addView(this.mWebView, localLayoutParams);
      setContentView(localLinearLayout);
      return;
    }
    catch (Exception localException)
    {
      Log.e("AirpushSDK", "An error occured while starting LandingPageAd.");
      finish();
    }
  }

  private void appWallAd(Intent paramIntent)
  {
    try
    {
      String str = paramIntent.getStringExtra("url");
      this.mWebView = new WebView(getApplicationContext());
      this.mWebView.getSettings().setJavaScriptEnabled(true);
      this.mWebView.setWebChromeClient(new WebChromeClient());
      this.mWebView.setScrollBarStyle(33554432);
      this.mWebView.setWebViewClient(new AirpushWebClient(null));
      this.mWebView.loadUrl(str);
      setContentView(this.mWebView);
      return;
    }
    catch (Throwable localThrowable)
    {
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      this.dialog = ProgressDialog.show(this, null, "Loading....");
      this.dialog.setCancelable(true);
      Intent localIntent = getIntent();
      this.adType = localIntent.getStringExtra("adtype");
      if ((this.adType != null) && (this.adType.equalsIgnoreCase("AW")))
      {
        requestWindowFeature(1);
        Util.printDebugLog("Appwall called: ");
        appWallAd(localIntent);
        return;
      }
      if ((this.adType != null) && (((this.adType.equalsIgnoreCase("DAU")) || (this.adType.equalsIgnoreCase("DCM")) || (this.adType.equalsIgnoreCase("DCC")))))
      {
        requestWindowFeature(1);
        Util.printDebugLog("Dialog Ad called: ");
        setTheme(16973839);
        new DialogAd(localIntent, this);
        return;
      }
      if ((this.adType != null) && (this.adType.equalsIgnoreCase("FP")))
      {
        Util.printDebugLog("Landing page called: ");
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        LandingPageAd();
        return;
      }
      this.dialog.dismiss();
      finish();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    try
    {
      if ((this.adType != null) && (((this.adType.equalsIgnoreCase("DAU")) || (this.adType.equalsIgnoreCase("DCM")) || (this.adType.equalsIgnoreCase("DCC")))) && (paramInt == 4) && (paramKeyEvent.getAction() == 0))
        return false;
      if (paramInt == 4)
      {
        if (this.dialog != null)
          this.dialog.dismiss();
        if (this.mWebView != null)
          this.mWebView.destroy();
        finish();
        return false;
      }
    }
    catch (Exception localException)
    {
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    try
    {
      this.dialog.dismiss();
      super.onPause();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private class AirpushWebClient extends WebViewClient
  {
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      try
      {
        SmartWallActivity.this.dialog.dismiss();
        super.onPageFinished(paramWebView, paramString);
        return;
      }
      catch (Exception localException)
      {
      }
    }

    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      try
      {
        if (SmartWallActivity.this.dialog != null)
          SmartWallActivity.this.dialog.dismiss();
        try
        {
          Util.printDebugLog("SmartWall Url: " + paramString);
          Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
          localIntent.addFlags(268435456);
          SmartWallActivity.this.startActivity(localIntent);
          if (SmartWallActivity.this.mWebView != null)
            SmartWallActivity.this.mWebView.destroy();
          SmartWallActivity.this.finish();
          return true;
        }
        catch (Exception localException2)
        {
          return true;
        }
      }
      catch (Exception localException1)
      {
      }
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.SmartWallActivity
 * JD-Core Version:    0.5.3
 */