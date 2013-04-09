package com.eMVeQv.NFmMPJ121641;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

public class OptinActivity extends Activity
{
  private static final String OPT_IN_TEXT = "<html><body style='background:#C4C4C4;font-family:Arial;font-size:11pt;line-height:18px'><p align='justify'>Thank you for downloading this free, ad-supported application! Please read carefully. This application is ad-supported and our advertising partner, Airpush, Inc., may place ads within applications and in your device's notification tray and home screen.  Airpush collects certain information in accordance with the permissions you just granted through the prior screen.  When you click on advertisements delivered by Airpush, you will typically be directed to a third party's web page and we may pass certain of your information to the third parties operating or hosting these pages, including your email address, phone number and a list of the apps on your device.</p><p align='justify'>  For more information on how Airpush collects, uses and shares your information, and to learn about your information choices, please visit the <a href='http://m.airpush.com/privacypolicy'><i>Airpush Privacy Policy</i> </a>. If you do not wish to receive ads delivered by Airpush in the future, you may visit the <a href='http://m.airpush.com/optout'><i>Airpush opt-out page</i></a> or delete this app.</p></body></html>";
  private static String TAG = "AirpushSDK";
  private static final String TITLE = "Privacy Policy & Advertising Terms";
  private static String event = "optOut";
  private static WebView webView;
  private String adType;
  AsyncTaskCompleteListener<String> asyncTaskCompleteListener = new AsyncTaskCompleteListener()
  {
    public void lauchNewHttpTask()
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new BasicNameValuePair("event", OptinActivity.event));
      localArrayList.add(new BasicNameValuePair("imei", "" + Util.getImei()));
      localArrayList.add(new BasicNameValuePair("appId", Util.getAppID()));
      Log.i(OptinActivity.TAG, OptinActivity.event + " Data: " + localArrayList);
      new HttpPostDataTask(OptinActivity.this, localArrayList, "https://api.airpush.com/optin/", this).execute(new Void[0]);
    }

    public void onTaskComplete(String paramString)
    {
      Log.i(OptinActivity.TAG, OptinActivity.event + " data sent: " + paramString);
      OptinActivity.this.finish();
    }
  };
  private OptinDialog dialog;
  private Intent intent;

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    try
    {
      this.intent = getIntent();
      if ((this.intent != null) && (((this.intent.getStringExtra("adtype").equalsIgnoreCase("DAU")) || (this.intent.getStringExtra("adtype").equalsIgnoreCase("DCM")) || (this.intent.getStringExtra("adtype").equalsIgnoreCase("DCC")))))
      {
        this.adType = this.intent.getStringExtra("adtype");
        new DialogAd(this.intent, this);
      }
      return;
    }
    catch (Exception localException)
    {
      if (SetPreferences.isShowOptinDialog(getApplicationContext()));
      this.dialog = new OptinDialog(this);
      this.dialog.show();
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    try
    {
      if ((this.adType != null) && (((this.adType.equalsIgnoreCase("DAU")) || (this.adType.equalsIgnoreCase("DCM")) || (this.adType.equalsIgnoreCase("DCC")))) && (paramInt == 4) && (paramKeyEvent.getAction() == 0))
        return false;
      if ((paramInt == 4) && (paramKeyEvent.getAction() == 0))
      {
        if (this.dialog != null)
          this.dialog.dismiss();
        if (webView != null)
          webView.destroy();
        finish();
      }
      return true;
    }
    catch (Exception localException)
    {
    }
  }

  protected void onUserLeaveHint()
  {
    try
    {
      if ((this.adType != null) && (((this.adType.equalsIgnoreCase("DAU")) || (this.adType.equalsIgnoreCase("DCM")) || (this.adType.equalsIgnoreCase("DCC")))))
      {
        DialogAd.getDialog().dismiss();
        finish();
      }
      super.onUserLeaveHint();
      return;
    }
    catch (Exception localException)
    {
      finish();
    }
  }

  private class MyWebViewClient extends WebViewClient
  {
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      try
      {
        Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
        OptinActivity.this.startActivity(localIntent);
        return true;
      }
      catch (Exception localException)
      {
      }
    }
  }

  public class OptinDialog extends AlertDialog
  {
    Context context;

    protected OptinDialog(Context paramContext)
    {
      super(paramContext);
      this.context = paramContext;
      showOptinDialog();
    }

    private void showOptinDialog()
    {
      Log.i(OptinActivity.TAG, "Display Privacy & Terms");
      try
      {
        setTitle("Privacy Policy & Advertising Terms");
        int[] arrayOfInt = new int[3];
        arrayOfInt[0] = Color.parseColor("#A5A5A5");
        arrayOfInt[1] = Color.parseColor("#9C9C9C");
        arrayOfInt[2] = Color.parseColor("#929493");
        GradientDrawable localGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, arrayOfInt);
        LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-1, -1);
        LinearLayout localLinearLayout1 = new LinearLayout(this.context);
        localLinearLayout1.setLayoutParams(localLayoutParams1);
        localLinearLayout1.setOrientation(1);
        float f = this.context.getResources().getDisplayMetrics().density;
        LinearLayout localLinearLayout2 = new LinearLayout(this.context);
        localLinearLayout2.setGravity(17);
        localLinearLayout2.setBackgroundDrawable(localGradientDrawable);
        LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-1, (int)(60.0F * f), 2.0F);
        localLayoutParams2.topMargin = (int)(-(60.0F * f));
        localLayoutParams2.gravity = 80;
        localLinearLayout2.setOrientation(0);
        localLinearLayout2.setLayoutParams(localLayoutParams2);
        TextView localTextView = new TextView(this.context);
        localTextView.setGravity(17);
        LinearLayout.LayoutParams localLayoutParams3 = new LinearLayout.LayoutParams(-1, -2, 2.0F);
        localLayoutParams3.gravity = 17;
        localTextView.setLayoutParams(localLayoutParams3);
        localTextView.setTextColor(-16777216);
        localTextView.setTextAppearance(this.context, 16843271);
        SpannableString localSpannableString = new SpannableString("Close");
        localSpannableString.setSpan(new UnderlineSpan(), 0, localSpannableString.length(), 0);
        localTextView.setText(localSpannableString);
        localTextView.setId(-2);
        localLinearLayout2.addView(localTextView);
        Button localButton = new Button(this.context);
        localButton.setId(-1);
        localButton.setLayoutParams(new LinearLayout.LayoutParams(-1, -2, 2.0F));
        localButton.setText("Ok");
        localLinearLayout2.addView(localButton);
        localLinearLayout2.setBackgroundColor(-3355444);
        LinearLayout localLinearLayout3 = new LinearLayout(this.context);
        LinearLayout.LayoutParams localLayoutParams4 = new LinearLayout.LayoutParams(-1, -1);
        localLayoutParams4.bottomMargin = (int)(60.0F * f);
        localLinearLayout3.setLayoutParams(localLayoutParams4);
        OptinActivity.access$102(new WebView(this.context));
        OptinActivity.webView.loadData("<html><body style='background:#C4C4C4;font-family:Arial;font-size:11pt;line-height:18px'><p align='justify'>Thank you for downloading this free, ad-supported application! Please read carefully. This application is ad-supported and our advertising partner, Airpush, Inc., may place ads within applications and in your device's notification tray and home screen.  Airpush collects certain information in accordance with the permissions you just granted through the prior screen.  When you click on advertisements delivered by Airpush, you will typically be directed to a third party's web page and we may pass certain of your information to the third parties operating or hosting these pages, including your email address, phone number and a list of the apps on your device.</p><p align='justify'>  For more information on how Airpush collects, uses and shares your information, and to learn about your information choices, please visit the <a href='http://m.airpush.com/privacypolicy'><i>Airpush Privacy Policy</i> </a>. If you do not wish to receive ads delivered by Airpush in the future, you may visit the <a href='http://m.airpush.com/optout'><i>Airpush opt-out page</i></a> or delete this app.</p></body></html>", "text/html", "utf-8");
        OptinActivity.webView.setWebChromeClient(new WebChromeClient());
        OptinActivity.webView.setWebViewClient(new OptinActivity.MyWebViewClient(OptinActivity.this, null));
        OptinActivity.webView.setScrollBarStyle(33554432);
        localLinearLayout3.addView(OptinActivity.webView);
        localLinearLayout1.addView(localLinearLayout3);
        localLinearLayout1.addView(localLinearLayout2);
        setView(localLinearLayout1);
        setCancelable(true);
        1 local1 = new View.OnClickListener()
        {
          public void onClick(View paramView)
          {
            try
            {
              if (Util.checkInternetConnection(OptinActivity.this))
              {
                OptinActivity.access$302("optOut");
                OptinActivity.OptinDialog.this.dismiss();
                OptinActivity.this.asyncTaskCompleteListener.lauchNewHttpTask();
                Airpush.startNewAdThread(false);
                return;
              }
              OptinActivity.OptinDialog.this.dismiss();
              Airpush.startNewAdThread(false);
              OptinActivity.this.finish();
              return;
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
            }
          }
        };
        localTextView.setOnClickListener(local1);
        2 local2 = new View.OnClickListener()
        {
          public void onClick(View paramView)
          {
            try
            {
              OptinActivity.OptinDialog.this.dismiss();
              if (Util.checkInternetConnection(OptinActivity.OptinDialog.this.context))
              {
                OptinActivity.access$302("optIn");
                OptinActivity.this.asyncTaskCompleteListener.lauchNewHttpTask();
                Airpush.startNewAdThread(true);
                return;
              }
              Airpush.startNewAdThread(true);
              OptinActivity.this.finish();
              return;
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
            }
          }
        };
        localButton.setOnClickListener(local2);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        OptinActivity.this.finish();
      }
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.OptinActivity
 * JD-Core Version:    0.5.3
 */