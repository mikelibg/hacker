package com.chartboost.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Window;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import org.json.JSONException;
import org.json.JSONObject;

public class CBDialogActivity extends Activity
{
  public static final String BUNDLE_KEY_CONFIGOBJECT = "bk_cfgo";
  public static final String BUNDLE_KEY_TYPE = "bk_type";
  public static final int OVERLAY_OPACITY = 75;
  public static final String TAG = "CBDialogActivity";
  protected JSONObject cbConfiguration;
  protected RelativeLayout cbContainer;
  protected ChartBoost cbObject;
  protected int cbViewType;
  protected Context ctx;
  public CBWebView webView;
  private CBWebViewClient webViewClient = null;

  private void display()
  {
    this.webView = null;
    if (this.cbViewType == CBWebView.CBViewType.CBViewTypeInterstitial.ordinal())
    {
      this.webView = new CBWebView(this, CBWebView.CBViewType.CBViewTypeInterstitial);
      label33: this.cbObject = ChartBoost.getSharedChartBoost(this);
      if ((this.webView == null) || (this.cbObject == null))
        finish();
      this.webViewClient = new CBWebViewClient(this);
      this.webView.setState(CBWebView.CBViewState.CBViewStateWaitingForDisplay);
      this.webView.setResponseContext(this.cbConfiguration);
      this.webView.setWebViewClient(this.webViewClient);
    }
    while (true)
    {
      try
      {
        String str = this.cbConfiguration.getString("html");
        if ((str != null) && (str.length() != 0))
          break label171;
        throw new Exception("html content is blank!");
      }
      catch (Exception localException)
      {
        finish();
        return;
      }
      if (this.cbViewType == CBWebView.CBViewType.CBViewTypeMoreApps.ordinal());
      this.webView = new CBWebView(this, CBWebView.CBViewType.CBViewTypeMoreApps);
      break label33:
      label171: this.webView.loadDataWithBaseURL("file:///android_asset/", this.cbConfiguration.getString("html"), "text/html", "utf-8", null);
    }
  }

  public void close()
  {
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    if (Build.VERSION.SDK_INT > 8)
      getWindow().setFlags(1024, 1024);
    this.cbContainer = new RelativeLayout(this);
    this.cbContainer.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    this.cbContainer.setBackgroundColor(-16777216);
    this.cbContainer.getBackground().setAlpha(75);
    this.cbContainer.setGravity(49);
    if (!(getIntent().hasExtra("bk_type")))
      finish();
    this.cbViewType = getIntent().getExtras().getInt("bk_type");
    try
    {
      this.cbConfiguration = new JSONObject(getIntent().getExtras().getString("bk_cfgo"));
      this.ctx = this;
      this.cbContainer.post(new Runnable()
      {
        public void run()
        {
          CBDialogActivity.this.display();
        }
      });
      setContentView(this.cbContainer);
      return;
    }
    catch (JSONException localJSONException)
    {
      finish();
    }
  }

  protected void onDestroy()
  {
    this.cbContainer.removeAllViews();
    this.cbContainer = null;
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.webViewClient != null))
      this.webViewClient.handleChartBoostRequest("chartboost://close");
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.chartboost.sdk.CBDialogActivity
 * JD-Core Version:    0.5.3
 */