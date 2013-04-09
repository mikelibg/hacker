package com.mopub.mobileads;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.Toast;

public class MraidBrowser extends Activity
{
  public static final String URL_EXTRA = "extra_url";

  private void enableCookies()
  {
    CookieSyncManager.createInstance(this);
    CookieSyncManager.getInstance().startSync();
  }

  private void initializeButtons(Intent paramIntent)
  {
    ImageButton localImageButton1 = (ImageButton)findViewById(R.id.browserBackButton);
    localImageButton1.setBackgroundColor(0);
    localImageButton1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        WebView localWebView = (WebView)MraidBrowser.this.findViewById(R.id.webView);
        if (!(localWebView.canGoBack()))
          return;
        localWebView.goBack();
      }
    });
    ImageButton localImageButton2 = (ImageButton)findViewById(R.id.browserForwardButton);
    localImageButton2.setBackgroundColor(0);
    localImageButton2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        WebView localWebView = (WebView)MraidBrowser.this.findViewById(R.id.webView);
        if (!(localWebView.canGoForward()))
          return;
        localWebView.goForward();
      }
    });
    ImageButton localImageButton3 = (ImageButton)findViewById(R.id.browserRefreshButton);
    localImageButton3.setBackgroundColor(0);
    localImageButton3.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ((WebView)MraidBrowser.this.findViewById(R.id.webView)).reload();
      }
    });
    ImageButton localImageButton4 = (ImageButton)findViewById(R.id.browserCloseButton);
    localImageButton4.setBackgroundColor(0);
    localImageButton4.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        MraidBrowser.this.finish();
      }
    });
  }

  private void initializeWebView(Intent paramIntent)
  {
    WebView localWebView = (WebView)findViewById(R.id.webView);
    WebSettings localWebSettings = localWebView.getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setSupportZoom(true);
    localWebSettings.setBuiltInZoomControls(true);
    localWebSettings.setUseWideViewPort(true);
    localWebView.loadUrl(paramIntent.getStringExtra("extra_url"));
    localWebView.setWebViewClient(new WebViewClient()
    {
      public void onPageFinished(WebView paramWebView, String paramString)
      {
        super.onPageFinished(paramWebView, paramString);
        ImageButton localImageButton1 = (ImageButton)MraidBrowser.this.findViewById(R.id.browserBackButton);
        int i;
        label32: ImageButton localImageButton2;
        if (paramWebView.canGoBack())
        {
          i = R.drawable.leftarrow;
          localImageButton1.setImageResource(i);
          localImageButton2 = (ImageButton)MraidBrowser.this.findViewById(R.id.browserForwardButton);
          if (!(paramWebView.canGoForward()))
            break label81;
        }
        for (int j = R.drawable.rightarrow; ; j = R.drawable.unrightarrow)
        {
          localImageButton2.setImageResource(j);
          return;
          i = R.drawable.unleftarrow;
          label81: break label32:
        }
      }

      public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
      {
        super.onPageStarted(paramWebView, paramString, paramBitmap);
        ((ImageButton)MraidBrowser.this.findViewById(R.id.browserForwardButton)).setImageResource(R.drawable.unrightarrow);
      }

      public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
      {
        Toast.makeText((Activity)paramWebView.getContext(), "MRAID error: " + paramString1, 0).show();
      }

      public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
      {
        int i = 0;
        if (paramString == null);
        while (true)
        {
          return i;
          if ((!(paramString.startsWith("market:"))) && (!(paramString.startsWith("tel:"))) && (!(paramString.startsWith("voicemail:"))) && (!(paramString.startsWith("sms:"))) && (!(paramString.startsWith("mailto:"))) && (!(paramString.startsWith("geo:"))))
          {
            boolean bool = paramString.startsWith("google.streetview:");
            i = 0;
            if (!(bool))
              continue;
          }
          MraidBrowser.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
          MraidBrowser.this.finish();
          i = 1;
        }
      }
    });
    localWebView.setWebChromeClient(new WebChromeClient()
    {
      public void onProgressChanged(WebView paramWebView, int paramInt)
      {
        Activity localActivity = (Activity)paramWebView.getContext();
        localActivity.setTitle("Loading...");
        localActivity.setProgress(paramInt * 100);
        if (paramInt != 100)
          return;
        localActivity.setTitle(paramWebView.getUrl());
      }
    });
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().requestFeature(2);
    getWindow().setFeatureInt(2, -1);
    setContentView(R.layout.mraid_browser);
    Intent localIntent = getIntent();
    initializeWebView(localIntent);
    initializeButtons(localIntent);
    enableCookies();
  }

  protected void onPause()
  {
    super.onPause();
    CookieSyncManager.getInstance().stopSync();
  }

  protected void onResume()
  {
    super.onResume();
    CookieSyncManager.getInstance().startSync();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidBrowser
 * JD-Core Version:    0.5.3
 */