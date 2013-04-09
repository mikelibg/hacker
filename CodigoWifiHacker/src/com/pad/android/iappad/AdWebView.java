package com.pad.android.iappad;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.pad.android.listener.AdListener;
import com.pad.android.util.AdLog;
import org.json.JSONObject;

public class AdWebView extends WebView
{
  private static final String LB_LOG = "LBAdController";
  private Context activity;
  private AdController controller;
  private AdListener listener;
  private String loadUrl;
  private boolean loading = false;
  private ProgressDialog loadingDialog;
  private boolean nativeOpen = false;
  private JSONObject results;
  private WebSettings settings;

  public AdWebView(Activity paramActivity, AdController paramAdController, boolean paramBoolean, AdListener paramAdListener)
  {
    super(paramActivity);
    this.activity = paramActivity;
    this.controller = paramAdController;
    this.nativeOpen = paramBoolean;
    this.listener = paramAdListener;
    initialize();
  }

  public AdWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.activity = paramContext;
    buildFromXML(paramAttributeSet);
  }

  public AdWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.activity = paramContext;
    buildFromXML(paramAttributeSet);
  }

  private void buildFromXML(AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null)
      return;
    this.controller = new AdController((Activity)this.activity, paramAttributeSet.getAttributeValue(null, "sectionid"));
    initialize();
  }

  private void initialize()
  {
    this.settings = getSettings();
    this.settings.setJavaScriptEnabled(true);
    this.settings.setJavaScriptCanOpenWindowsAutomatically(true);
    addJavascriptInterface(new AdJSInterface(this.activity, this.controller, this.listener), "LBOUT");
    if (Build.VERSION.SDK_INT >= 8)
      this.settings.setPluginState(WebSettings.PluginState.ON);
    setWebChromeClient(new AdWebChromeClient(this.activity));
    setWebViewClient(new AdWebClient(this.activity, this.controller, this));
  }

  public void setLoadingURL(String paramString)
  {
    this.loadUrl = paramString;
  }

  public void setResults(JSONObject paramJSONObject)
  {
    this.results = paramJSONObject;
  }

  public void showAd()
  {
    this.controller.loadAd();
  }

  private class AdWebChromeClient extends WebChromeClient
  {
    private Context ctx;

    public AdWebChromeClient(Context paramContext)
    {
      this.ctx = paramContext;
    }

    public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
    {
      new AlertDialog.Builder(this.ctx).setTitle("Alert").setMessage(paramString2).setPositiveButton(17039370, new DialogInterface.OnClickListener(paramJsResult)
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          this.val$result.confirm();
        }
      }).setCancelable(false).create().show();
      return true;
    }

    public boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
    {
      new AlertDialog.Builder(this.ctx).setTitle("Confirm").setMessage(paramString2).setPositiveButton(17039370, new DialogInterface.OnClickListener(paramJsResult)
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          this.val$result.confirm();
        }
      }).setNegativeButton(17039360, new DialogInterface.OnClickListener(paramJsResult)
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          this.val$result.cancel();
        }
      }).create().show();
      return true;
    }
  }

  private class AdWebClient extends WebViewClient
  {
    private Context activity;
    private AdWebView adView;
    private AdController controller;

    public AdWebClient(Context paramContext, AdController paramAdController, AdWebView paramAdWebView)
    {
      this.activity = paramContext;
      this.controller = paramAdController;
      this.adView = paramAdWebView;
    }

    public void onPageFinished(WebView paramWebView, String paramString)
    {
      AdLog.d("LBAdController", "onPageFinished called");
      if ((AdWebView.this.loadingDialog != null) && (AdWebView.this.loadingDialog.isShowing()))
        AdWebView.this.loadingDialog.dismiss();
      Account[] arrayOfAccount;
      int i;
      if (paramString.equals(AdWebView.this.loadUrl))
      {
        paramWebView.setBackgroundColor(-1);
        this.adView.loadUrl("javascript:window.LBOUT.processHTML(document.getElementsByTagName('body')[0].getAttribute('ad_count'))");
        if (this.activity.checkCallingOrSelfPermission("android.permission.GET_ACCOUNTS") != 0)
          break label225;
        arrayOfAccount = AccountManager.get(this.activity).getAccounts();
        i = 0;
        label95: if (i < arrayOfAccount.length)
          break label159;
      }
      while (true)
      {
        AdWebView.this.loading = false;
        this.controller.setLoading(AdWebView.this.loading);
        this.adView.requestFocus(130);
        if (paramString.contains("#app_close"));
        try
        {
          Thread.sleep(1000L);
          this.controller.destroyAd();
          label158: return;
          label159: Account localAccount = arrayOfAccount[i];
          if (localAccount.type.equals("com.google"))
            this.adView.loadUrl("javascript:(function() {var input = document.getElementsByName('Email')[0];input.select();input.focus();input.value = '" + localAccount.name + "';" + "})()");
          ++i;
          break label95:
          label225: AdLog.d("LBAdController", "Get Accounts permission not granted");
        }
        catch (Exception localException)
        {
          break label158:
        }
      }
    }

    // ERROR //
    public void onPageStarted(WebView paramWebView, String paramString, android.graphics.Bitmap paramBitmap)
    {
      // Byte code:
      //   0: aload_1
      //   1: iconst_0
      //   2: iconst_0
      //   3: iconst_0
      //   4: iconst_0
      //   5: invokevirtual 165	android/webkit/WebView:setPadding	(IIII)V
      //   8: aload_1
      //   9: bipush 100
      //   11: invokevirtual 168	android/webkit/WebView:setInitialScale	(I)V
      //   14: aload_1
      //   15: iconst_0
      //   16: invokevirtual 171	android/webkit/WebView:setVerticalScrollBarEnabled	(Z)V
      //   19: aload_1
      //   20: iconst_0
      //   21: invokevirtual 174	android/webkit/WebView:setHorizontalScrollBarEnabled	(Z)V
      //   24: aload_0
      //   25: getfield 20	com/pad/android/iappad/AdWebView$AdWebClient:activity	Landroid/content/Context;
      //   28: ldc 176
      //   30: invokevirtual 180	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
      //   33: checkcast 182	android/view/inputmethod/InputMethodManager
      //   36: invokevirtual 185	android/view/inputmethod/InputMethodManager:isAcceptingText	()Z
      //   39: ifeq +8 -> 47
      //   42: aload_1
      //   43: iconst_1
      //   44: invokevirtual 171	android/webkit/WebView:setVerticalScrollBarEnabled	(Z)V
      //   47: aload_2
      //   48: aload_0
      //   49: getfield 15	com/pad/android/iappad/AdWebView$AdWebClient:this$0	Lcom/pad/android/iappad/AdWebView;
      //   52: invokestatic 57	com/pad/android/iappad/AdWebView:access$0	(Lcom/pad/android/iappad/AdWebView;)Ljava/lang/String;
      //   55: invokevirtual 63	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   58: ifeq +147 -> 205
      //   61: ldc 30
      //   63: new 138	java/lang/StringBuilder
      //   66: dup
      //   67: ldc 187
      //   69: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   72: aload_0
      //   73: getfield 15	com/pad/android/iappad/AdWebView$AdWebClient:this$0	Lcom/pad/android/iappad/AdWebView;
      //   76: invokestatic 101	com/pad/android/iappad/AdWebView:access$1	(Lcom/pad/android/iappad/AdWebView;)Z
      //   79: invokevirtual 190	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
      //   82: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   85: invokestatic 193	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
      //   88: aload_0
      //   89: getfield 15	com/pad/android/iappad/AdWebView$AdWebClient:this$0	Lcom/pad/android/iappad/AdWebView;
      //   92: invokestatic 101	com/pad/android/iappad/AdWebView:access$1	(Lcom/pad/android/iappad/AdWebView;)Z
      //   95: ifne +383 -> 478
      //   98: aload_0
      //   99: getfield 15	com/pad/android/iappad/AdWebView$AdWebClient:this$0	Lcom/pad/android/iappad/AdWebView;
      //   102: invokestatic 197	com/pad/android/iappad/AdWebView:access$2	(Lcom/pad/android/iappad/AdWebView;)Lorg/json/JSONObject;
      //   105: ldc 199
      //   107: invokevirtual 203	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
      //   110: ldc 205
      //   112: invokevirtual 208	java/lang/Object:equals	(Ljava/lang/Object;)Z
      //   115: ifeq +50 -> 165
      //   118: ldc 30
      //   120: ldc 210
      //   122: invokestatic 193	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
      //   125: aload_0
      //   126: getfield 22	com/pad/android/iappad/AdWebView$AdWebClient:controller	Lcom/pad/android/iappad/AdController;
      //   129: iconst_1
      //   130: invokevirtual 213	com/pad/android/iappad/AdController:setHomeLoaded	(Z)V
      //   133: aload_0
      //   134: getfield 15	com/pad/android/iappad/AdWebView$AdWebClient:this$0	Lcom/pad/android/iappad/AdWebView;
      //   137: iconst_0
      //   138: invokestatic 97	com/pad/android/iappad/AdWebView:access$3	(Lcom/pad/android/iappad/AdWebView;Z)V
      //   141: aload_0
      //   142: getfield 22	com/pad/android/iappad/AdWebView$AdWebClient:controller	Lcom/pad/android/iappad/AdController;
      //   145: aload_0
      //   146: getfield 15	com/pad/android/iappad/AdWebView$AdWebClient:this$0	Lcom/pad/android/iappad/AdWebView;
      //   149: invokestatic 101	com/pad/android/iappad/AdWebView:access$1	(Lcom/pad/android/iappad/AdWebView;)Z
      //   152: invokevirtual 107	com/pad/android/iappad/AdController:setLoading	(Z)V
      //   155: aload_0
      //   156: getfield 22	com/pad/android/iappad/AdWebView$AdWebClient:controller	Lcom/pad/android/iappad/AdController;
      //   159: invokevirtual 216	com/pad/android/iappad/AdController:onLinkClicked	()V
      //   162: goto +316 -> 478
      //   165: ldc 30
      //   167: ldc 218
      //   169: invokestatic 193	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
      //   172: goto +306 -> 478
      //   175: astore 6
      //   177: ldc 30
      //   179: new 138	java/lang/StringBuilder
      //   182: dup
      //   183: ldc 220
      //   185: invokespecial 142	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   188: aload 6
      //   190: invokevirtual 223	java/lang/Exception:getMessage	()Ljava/lang/String;
      //   193: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   196: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   199: invokestatic 226	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
      //   202: goto +276 -> 478
      //   205: ldc 30
      //   207: ldc 228
      //   209: invokestatic 38	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
      //   212: aload_0
      //   213: getfield 15	com/pad/android/iappad/AdWebView$AdWebClient:this$0	Lcom/pad/android/iappad/AdWebView;
      //   216: invokestatic 101	com/pad/android/iappad/AdWebView:access$1	(Lcom/pad/android/iappad/AdWebView;)Z
      //   219: ifne +259 -> 478
      //   222: aload_0
      //   223: getfield 15	com/pad/android/iappad/AdWebView$AdWebClient:this$0	Lcom/pad/android/iappad/AdWebView;
      //   226: invokestatic 231	com/pad/android/iappad/AdWebView:access$4	(Lcom/pad/android/iappad/AdWebView;)Z
      //   229: ifne +48 -> 277
      //   232: aload_2
      //   233: ldc 233
      //   235: invokevirtual 237	java/lang/String:startsWith	(Ljava/lang/String;)Z
      //   238: ifne +39 -> 277
      //   241: aload_2
      //   242: ldc 239
      //   244: invokevirtual 237	java/lang/String:startsWith	(Ljava/lang/String;)Z
      //   247: ifne +30 -> 277
      //   250: aload_2
      //   251: ldc 241
      //   253: invokevirtual 237	java/lang/String:startsWith	(Ljava/lang/String;)Z
      //   256: ifne +21 -> 277
      //   259: aload_2
      //   260: ldc 243
      //   262: invokevirtual 237	java/lang/String:startsWith	(Ljava/lang/String;)Z
      //   265: ifne +12 -> 277
      //   268: aload_2
      //   269: ldc 245
      //   271: invokevirtual 237	java/lang/String:startsWith	(Ljava/lang/String;)Z
      //   274: ifeq +66 -> 340
      //   277: ldc 30
      //   279: ldc 247
      //   281: invokestatic 193	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
      //   284: aload_1
      //   285: invokevirtual 250	android/webkit/WebView:stopLoading	()V
      //   288: aload_1
      //   289: aload_0
      //   290: getfield 15	com/pad/android/iappad/AdWebView$AdWebClient:this$0	Lcom/pad/android/iappad/AdWebView;
      //   293: invokestatic 197	com/pad/android/iappad/AdWebView:access$2	(Lcom/pad/android/iappad/AdWebView;)Lorg/json/JSONObject;
      //   296: ldc 252
      //   298: invokevirtual 256	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
      //   301: invokevirtual 257	android/webkit/WebView:loadUrl	(Ljava/lang/String;)V
      //   304: aload_0
      //   305: getfield 20	com/pad/android/iappad/AdWebView$AdWebClient:activity	Landroid/content/Context;
      //   308: new 259	android/content/Intent
      //   311: dup
      //   312: ldc_w 261
      //   315: aload_2
      //   316: invokestatic 267	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
      //   319: invokespecial 270	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
      //   322: invokevirtual 274	android/content/Context:startActivity	(Landroid/content/Intent;)V
      //   325: goto +153 -> 478
      //   328: astore 4
      //   330: aload_0
      //   331: getfield 22	com/pad/android/iappad/AdWebView$AdWebClient:controller	Lcom/pad/android/iappad/AdController;
      //   334: invokevirtual 128	com/pad/android/iappad/AdController:destroyAd	()V
      //   337: goto +141 -> 478
      //   340: aload_2
      //   341: ldc_w 276
      //   344: invokevirtual 117	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
      //   347: ifeq +31 -> 378
      //   350: aload_1
      //   351: invokevirtual 250	android/webkit/WebView:stopLoading	()V
      //   354: aload_0
      //   355: getfield 20	com/pad/android/iappad/AdWebView$AdWebClient:activity	Landroid/content/Context;
      //   358: new 259	android/content/Intent
      //   361: dup
      //   362: ldc_w 261
      //   365: aload_2
      //   366: invokestatic 267	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
      //   369: invokespecial 270	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
      //   372: invokevirtual 274	android/content/Context:startActivity	(Landroid/content/Intent;)V
      //   375: goto +103 -> 478
      //   378: aload_2
      //   379: ldc_w 278
      //   382: invokevirtual 237	java/lang/String:startsWith	(Ljava/lang/String;)Z
      //   385: ifeq +34 -> 419
      //   388: aload_0
      //   389: getfield 22	com/pad/android/iappad/AdWebView$AdWebClient:controller	Lcom/pad/android/iappad/AdController;
      //   392: invokevirtual 128	com/pad/android/iappad/AdController:destroyAd	()V
      //   395: aload_0
      //   396: getfield 20	com/pad/android/iappad/AdWebView$AdWebClient:activity	Landroid/content/Context;
      //   399: new 259	android/content/Intent
      //   402: dup
      //   403: ldc_w 261
      //   406: aload_2
      //   407: invokestatic 267	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
      //   410: invokespecial 270	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
      //   413: invokevirtual 274	android/content/Context:startActivity	(Landroid/content/Intent;)V
      //   416: goto +62 -> 478
      //   419: aload_0
      //   420: getfield 15	com/pad/android/iappad/AdWebView$AdWebClient:this$0	Lcom/pad/android/iappad/AdWebView;
      //   423: invokestatic 44	com/pad/android/iappad/AdWebView:access$5	(Lcom/pad/android/iappad/AdWebView;)Landroid/app/ProgressDialog;
      //   426: ifnull +16 -> 442
      //   429: aload_0
      //   430: getfield 15	com/pad/android/iappad/AdWebView$AdWebClient:this$0	Lcom/pad/android/iappad/AdWebView;
      //   433: invokestatic 44	com/pad/android/iappad/AdWebView:access$5	(Lcom/pad/android/iappad/AdWebView;)Landroid/app/ProgressDialog;
      //   436: invokevirtual 50	android/app/ProgressDialog:isShowing	()Z
      //   439: ifne +24 -> 463
      //   442: aload_0
      //   443: getfield 15	com/pad/android/iappad/AdWebView$AdWebClient:this$0	Lcom/pad/android/iappad/AdWebView;
      //   446: aload_0
      //   447: getfield 20	com/pad/android/iappad/AdWebView$AdWebClient:activity	Landroid/content/Context;
      //   450: ldc_w 280
      //   453: ldc_w 282
      //   456: iconst_1
      //   457: invokestatic 286	android/app/ProgressDialog:show	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
      //   460: invokestatic 290	com/pad/android/iappad/AdWebView:access$6	(Lcom/pad/android/iappad/AdWebView;Landroid/app/ProgressDialog;)V
      //   463: aload_0
      //   464: getfield 22	com/pad/android/iappad/AdWebView$AdWebClient:controller	Lcom/pad/android/iappad/AdController;
      //   467: invokevirtual 216	com/pad/android/iappad/AdController:onLinkClicked	()V
      //   470: goto +8 -> 478
      //   473: astore 5
      //   475: goto -171 -> 304
      //   478: return
      //
      // Exception table:
      //   from	to	target	type
      //   98	172	175	java/lang/Exception
      //   277	288	328	java/lang/Exception
      //   304	325	328	java/lang/Exception
      //   288	304	473	java/lang/Exception
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.pad.android.iappad.AdWebView
 * JD-Core Version:    0.5.3
 */