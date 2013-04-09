package com.pad.android.iappad;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Handler;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.pad.android.listener.AdListener;
import com.pad.android.listener.AdOptinListener;
import com.pad.android.util.AdLog;
import com.pad.android.util.AdOptinRequest;
import com.pad.android.util.AdUtilFuncs;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.List;
import java.util.TimerTask;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONObject;

public class AdController
{
  public static final String LB_LOG = "LBAdController";
  public static final String SDK_LEVEL = "06b";
  public static final String SDK_VERSION = "3";
  private final int LB_MAX_POLL;
  private final int LB_SET_MANUAL_AFTER;
  private Activity activity;
  private boolean adDestroyed;
  private String adDisplayInterval;
  private boolean adLoaded;
  private OfferPolling adPolling;
  private int additionalDockingMargin;
  private Button backBtn;
  private Button closeBtn;
  private boolean completed;
  private Context context;
  private View footer;
  private TextView footerTitle;
  private Button fwdBtn;
  private Button homeBtn;
  private boolean homeLoaded;
  private boolean initialized;
  private RelativeLayout layout;
  private boolean linkClicked;
  private AdListener listener;
  private boolean loadAd;
  private Runnable loadProgress;
  private String loadUrl;
  private boolean loading;
  private ProgressDialog loadingDialog;
  private RelativeLayout.LayoutParams lpC;
  private WebView mainView;
  private ViewGroup mainViewParent;
  private View mask;
  private ViewGroup.MarginLayoutParams mlpC;
  private boolean nativeOpen;
  private boolean onAdLoaded;
  private Button pollBtn;
  private int pollCount;
  private int pollManual;
  private int pollMax;
  private Handler pollingHandler;
  private boolean pollingInitialized;
  private Handler progressHandler;
  private int progressInterval;
  private Button refreshBtn;
  private JSONObject results;
  private int sHeight;
  private int sWidth;
  private String sectionid;
  private String subid;
  private TextView title;
  private List<NameValuePair> tokens;
  private View toolbar;
  private boolean useLocation;
  private AdWebView webview;

  public AdController(Activity paramActivity, String paramString)
  {
    this(paramActivity, paramString, new RelativeLayout(paramActivity));
  }

  public AdController(Activity paramActivity, String paramString, WebView paramWebView)
  {
    this.LB_MAX_POLL = 500;
    this.LB_SET_MANUAL_AFTER = 10;
    this.completed = false;
    this.homeLoaded = false;
    this.linkClicked = false;
    this.pollingInitialized = false;
    this.useLocation = false;
    this.nativeOpen = false;
    this.initialized = false;
    this.additionalDockingMargin = 0;
    this.loadAd = true;
    this.listener = null;
    this.progressInterval = 0;
    this.adLoaded = false;
    this.adDestroyed = false;
    this.pollCount = 0;
    this.pollMax = 0;
    this.pollManual = 0;
    this.onAdLoaded = false;
    this.activity = paramActivity;
    this.sectionid = paramString;
    this.mainView = paramWebView;
    this.layout = new RelativeLayout(this.activity);
  }

  public AdController(Activity paramActivity, String paramString, RelativeLayout paramRelativeLayout)
  {
    this.LB_MAX_POLL = 500;
    this.LB_SET_MANUAL_AFTER = 10;
    this.completed = false;
    this.homeLoaded = false;
    this.linkClicked = false;
    this.pollingInitialized = false;
    this.useLocation = false;
    this.nativeOpen = false;
    this.initialized = false;
    this.additionalDockingMargin = 0;
    this.loadAd = true;
    this.listener = null;
    this.progressInterval = 0;
    this.adLoaded = false;
    this.adDestroyed = false;
    this.pollCount = 0;
    this.pollMax = 0;
    this.pollManual = 0;
    this.onAdLoaded = false;
    this.activity = paramActivity;
    this.sectionid = paramString;
    if (paramRelativeLayout == null)
      paramRelativeLayout = new RelativeLayout(paramActivity);
    this.layout = paramRelativeLayout;
    this.mainView = null;
  }

  public AdController(Activity paramActivity, String paramString, AdListener paramAdListener)
  {
    this(paramActivity, paramString, new RelativeLayout(paramActivity));
    this.listener = paramAdListener;
  }

  private void closeUnlocker()
  {
    if (getAdVisibility() != 0)
      label7: return;
    if ((this.listener != null) && (!(this.completed)));
    try
    {
      AdLog.i("LBAdController", "onAdClosed triggered");
      this.listener.onAdClosed();
      this.adDestroyed = true;
      AdLog.i("LBAdController", "closeUnlocker called");
      this.homeLoaded = false;
      this.linkClicked = false;
      this.pollingInitialized = false;
      label103: if (this.pollingHandler != null)
        this.pollingHandler.removeCallbacks(this.adPolling);
    }
    catch (Exception localException3)
    {
      try
      {
        while (true)
        {
          Class.forName("android.webkit.WebView").getMethod("onPause", null).invoke(this.webview, null);
          try
          {
            this.layout.removeAllViews();
            if (this.mainView != null);
            this.mainView.setOnTouchListener(null);
          }
          catch (Exception localException2)
          {
            AdLog.e("LBAdController", "CloseUnlocker error - " + localException2.getMessage());
          }
        }
        break label7:
        localException3 = localException3;
        AdLog.e("LBAdController", "error when onAdClosed triggered");
        AdLog.printStackTrace("LBAdController", localException3);
      }
      catch (Exception localException1)
      {
        break label103:
      }
    }
  }

  // ERROR //
  private void displayAd()
  {
    // Byte code:
    //   0: ldc 8
    //   2: ldc_w 305
    //   5: invokestatic 308	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   8: aload_0
    //   9: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   12: ifnonnull +12 -> 24
    //   15: ldc 8
    //   17: ldc_w 310
    //   20: invokestatic 295	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   23: return
    //   24: aload_0
    //   25: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   28: ldc_w 312
    //   31: invokevirtual 318	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   34: ifne +79 -> 113
    //   37: aload_0
    //   38: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   41: ldc_w 312
    //   44: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   47: ldc_w 324
    //   50: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   53: ifeq +60 -> 113
    //   56: aload_0
    //   57: iconst_0
    //   58: putfield 332	com/pad/android/iappad/AdController:loading	Z
    //   61: aload_0
    //   62: iconst_0
    //   63: putfield 111	com/pad/android/iappad/AdController:linkClicked	Z
    //   66: ldc 8
    //   68: ldc_w 334
    //   71: invokestatic 230	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   74: aload_0
    //   75: invokespecial 336	com/pad/android/iappad/AdController:linkClicked	()V
    //   78: goto -55 -> 23
    //   81: astore_1
    //   82: ldc 8
    //   84: aload_1
    //   85: invokestatic 301	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   88: ldc 8
    //   90: new 276	java/lang/StringBuilder
    //   93: dup
    //   94: ldc_w 338
    //   97: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   100: aload_1
    //   101: invokevirtual 285	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   104: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: invokestatic 295	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   113: aload_0
    //   114: getfield 109	com/pad/android/iappad/AdController:homeLoaded	Z
    //   117: ifne -94 -> 23
    //   120: ldc 8
    //   122: ldc_w 340
    //   125: invokestatic 308	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   128: aload_0
    //   129: iconst_1
    //   130: putfield 109	com/pad/android/iappad/AdController:homeLoaded	Z
    //   133: aload_0
    //   134: iconst_0
    //   135: putfield 111	com/pad/android/iappad/AdController:linkClicked	Z
    //   138: aload_0
    //   139: iconst_1
    //   140: putfield 332	com/pad/android/iappad/AdController:loading	Z
    //   143: aload_0
    //   144: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   147: ldc_w 342
    //   150: invokevirtual 346	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   153: ldc_w 324
    //   156: invokevirtual 347	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   159: ifeq +1992 -> 2151
    //   162: aload_0
    //   163: getfield 107	com/pad/android/iappad/AdController:completed	Z
    //   166: istore 8
    //   168: iload 8
    //   170: ifne +1969 -> 2139
    //   173: aload_0
    //   174: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   177: aload_0
    //   178: getfield 259	com/pad/android/iappad/AdController:webview	Lcom/pad/android/iappad/AdWebView;
    //   181: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   184: aload_0
    //   185: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   188: aload_0
    //   189: getfield 353	com/pad/android/iappad/AdController:toolbar	Landroid/view/View;
    //   192: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   195: aload_0
    //   196: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   199: aload_0
    //   200: getfield 355	com/pad/android/iappad/AdController:title	Landroid/widget/TextView;
    //   203: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   206: aload_0
    //   207: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   210: aload_0
    //   211: getfield 357	com/pad/android/iappad/AdController:footer	Landroid/view/View;
    //   214: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   217: aload_0
    //   218: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   221: aload_0
    //   222: getfield 359	com/pad/android/iappad/AdController:footerTitle	Landroid/widget/TextView;
    //   225: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   228: aload_0
    //   229: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   232: aload_0
    //   233: getfield 361	com/pad/android/iappad/AdController:backBtn	Landroid/widget/Button;
    //   236: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   239: aload_0
    //   240: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   243: aload_0
    //   244: getfield 363	com/pad/android/iappad/AdController:fwdBtn	Landroid/widget/Button;
    //   247: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   250: aload_0
    //   251: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   254: aload_0
    //   255: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   258: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   261: aload_0
    //   262: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   265: aload_0
    //   266: getfield 367	com/pad/android/iappad/AdController:homeBtn	Landroid/widget/Button;
    //   269: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   272: aload_0
    //   273: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   276: aload_0
    //   277: getfield 369	com/pad/android/iappad/AdController:refreshBtn	Landroid/widget/Button;
    //   280: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   283: aload_0
    //   284: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   287: aload_0
    //   288: getfield 371	com/pad/android/iappad/AdController:mask	Landroid/view/View;
    //   291: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   294: aload_0
    //   295: getfield 373	com/pad/android/iappad/AdController:pollBtn	Landroid/widget/Button;
    //   298: ifnull +10 -> 308
    //   301: aload_0
    //   302: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   305: invokevirtual 268	android/widget/RelativeLayout:removeAllViews	()V
    //   308: aload_0
    //   309: new 375	android/view/View
    //   312: dup
    //   313: aload_0
    //   314: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   317: invokespecial 376	android/view/View:<init>	(Landroid/content/Context;)V
    //   320: putfield 371	com/pad/android/iappad/AdController:mask	Landroid/view/View;
    //   323: aload_0
    //   324: getfield 371	com/pad/android/iappad/AdController:mask	Landroid/view/View;
    //   327: iconst_m1
    //   328: invokevirtual 380	android/view/View:setMinimumHeight	(I)V
    //   331: aload_0
    //   332: getfield 371	com/pad/android/iappad/AdController:mask	Landroid/view/View;
    //   335: iconst_m1
    //   336: invokevirtual 383	android/view/View:setMinimumWidth	(I)V
    //   339: aload_0
    //   340: getfield 371	com/pad/android/iappad/AdController:mask	Landroid/view/View;
    //   343: ldc_w 384
    //   346: invokevirtual 387	android/view/View:setBackgroundColor	(I)V
    //   349: ldc2_w 388
    //   352: aload_0
    //   353: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   356: ldc_w 391
    //   359: invokevirtual 395	org/json/JSONObject:getDouble	(Ljava/lang/String;)D
    //   362: dmul
    //   363: dstore 56
    //   365: aload_0
    //   366: getfield 371	com/pad/android/iappad/AdController:mask	Landroid/view/View;
    //   369: invokevirtual 399	android/view/View:getBackground	()Landroid/graphics/drawable/Drawable;
    //   372: dload 56
    //   374: d2i
    //   375: invokevirtual 404	android/graphics/drawable/Drawable:setAlpha	(I)V
    //   378: aload_0
    //   379: getfield 371	com/pad/android/iappad/AdController:mask	Landroid/view/View;
    //   382: astore 58
    //   384: new 406	com/pad/android/iappad/AdController$2
    //   387: dup
    //   388: aload_0
    //   389: invokespecial 408	com/pad/android/iappad/AdController$2:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   392: astore 59
    //   394: aload 58
    //   396: aload 59
    //   398: invokevirtual 412	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   401: new 414	android/view/ViewGroup$MarginLayoutParams
    //   404: dup
    //   405: iconst_m1
    //   406: iconst_m1
    //   407: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   410: astore 11
    //   412: aload 11
    //   414: iconst_0
    //   415: iconst_0
    //   416: iconst_0
    //   417: iconst_0
    //   418: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   421: new 423	android/widget/RelativeLayout$LayoutParams
    //   424: dup
    //   425: aload 11
    //   427: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   430: astore 12
    //   432: aload_0
    //   433: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   436: ldc_w 428
    //   439: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   442: istore 13
    //   444: ldc_w 434
    //   447: astore 14
    //   449: aload_0
    //   450: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   453: ldc_w 436
    //   456: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   459: astore 55
    //   461: aload 55
    //   463: astore 14
    //   465: aload_0
    //   466: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   469: ldc_w 438
    //   472: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   475: ifne +87 -> 562
    //   478: aload_0
    //   479: getfield 259	com/pad/android/iappad/AdController:webview	Lcom/pad/android/iappad/AdWebView;
    //   482: ifnull +11 -> 493
    //   485: aload_0
    //   486: getfield 259	com/pad/android/iappad/AdController:webview	Lcom/pad/android/iappad/AdWebView;
    //   489: iconst_0
    //   490: invokevirtual 441	com/pad/android/iappad/AdWebView:setBackgroundColor	(I)V
    //   493: aload_0
    //   494: getfield 121	com/pad/android/iappad/AdController:additionalDockingMargin	I
    //   497: ifle +65 -> 562
    //   500: aload 14
    //   502: ldc_w 434
    //   505: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   508: ifne +54 -> 562
    //   511: ldc 8
    //   513: new 276	java/lang/StringBuilder
    //   516: dup
    //   517: ldc_w 443
    //   520: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   523: aload_0
    //   524: getfield 121	com/pad/android/iappad/AdController:additionalDockingMargin	I
    //   527: invokevirtual 446	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   530: ldc_w 448
    //   533: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   536: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   539: invokestatic 230	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   542: aload 14
    //   544: ldc_w 450
    //   547: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   550: ifeq +1438 -> 1988
    //   553: iload 13
    //   555: aload_0
    //   556: getfield 121	com/pad/android/iappad/AdController:additionalDockingMargin	I
    //   559: iadd
    //   560: istore 13
    //   562: new 414	android/view/ViewGroup$MarginLayoutParams
    //   565: dup
    //   566: aload_0
    //   567: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   570: ldc_w 452
    //   573: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   576: aload_0
    //   577: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   580: ldc_w 454
    //   583: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   586: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   589: astore 16
    //   591: aload 16
    //   593: aload_0
    //   594: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   597: ldc_w 456
    //   600: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   603: iload 13
    //   605: iconst_0
    //   606: iconst_0
    //   607: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   610: new 423	android/widget/RelativeLayout$LayoutParams
    //   613: dup
    //   614: aload 16
    //   616: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   619: astore 17
    //   621: aload_0
    //   622: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   625: ldc_w 458
    //   628: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   631: istore 18
    //   633: aload_0
    //   634: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   637: ldc_w 460
    //   640: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   643: istore 19
    //   645: aload_0
    //   646: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   649: ldc_w 462
    //   652: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   655: istore 20
    //   657: aload_0
    //   658: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   661: ldc_w 464
    //   664: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   667: istore 21
    //   669: new 414	android/view/ViewGroup$MarginLayoutParams
    //   672: dup
    //   673: iload 20
    //   675: iload 21
    //   677: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   680: astore 22
    //   682: aload 22
    //   684: iload 18
    //   686: iload 19
    //   688: iconst_0
    //   689: iconst_0
    //   690: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   693: new 423	android/widget/RelativeLayout$LayoutParams
    //   696: dup
    //   697: aload 22
    //   699: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   702: astore 23
    //   704: aload_0
    //   705: new 375	android/view/View
    //   708: dup
    //   709: aload_0
    //   710: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   713: invokespecial 376	android/view/View:<init>	(Landroid/content/Context;)V
    //   716: putfield 353	com/pad/android/iappad/AdController:toolbar	Landroid/view/View;
    //   719: aload_0
    //   720: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   723: ldc_w 466
    //   726: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   729: astore 24
    //   731: aload 24
    //   733: ldc_w 468
    //   736: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   739: ifne +1492 -> 2231
    //   742: aload 24
    //   744: ifnonnull +6 -> 750
    //   747: goto +1484 -> 2231
    //   750: aload_0
    //   751: getfield 353	com/pad/android/iappad/AdController:toolbar	Landroid/view/View;
    //   754: aload 24
    //   756: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   759: invokevirtual 387	android/view/View:setBackgroundColor	(I)V
    //   762: aload_0
    //   763: new 475	android/widget/TextView
    //   766: dup
    //   767: aload_0
    //   768: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   771: invokespecial 476	android/widget/TextView:<init>	(Landroid/content/Context;)V
    //   774: putfield 355	com/pad/android/iappad/AdController:title	Landroid/widget/TextView;
    //   777: aload_0
    //   778: getfield 355	com/pad/android/iappad/AdController:title	Landroid/widget/TextView;
    //   781: aload_0
    //   782: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   785: ldc_w 478
    //   788: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   791: invokevirtual 482	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   794: aload_0
    //   795: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   798: ldc_w 484
    //   801: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   804: astore 25
    //   806: aload 25
    //   808: ldc_w 468
    //   811: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   814: ifne +1425 -> 2239
    //   817: aload 25
    //   819: ifnonnull +6 -> 825
    //   822: goto +1417 -> 2239
    //   825: aload_0
    //   826: getfield 355	com/pad/android/iappad/AdController:title	Landroid/widget/TextView;
    //   829: aload 25
    //   831: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   834: invokevirtual 487	android/widget/TextView:setTextColor	(I)V
    //   837: aload_0
    //   838: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   841: ldc_w 489
    //   844: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   847: istore 26
    //   849: new 414	android/view/ViewGroup$MarginLayoutParams
    //   852: dup
    //   853: aload_0
    //   854: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   857: ldc_w 491
    //   860: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   863: iload 26
    //   865: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   868: astore 27
    //   870: aload 27
    //   872: iload 18
    //   874: bipush 20
    //   876: iadd
    //   877: iconst_4
    //   878: iload 19
    //   880: iload 21
    //   882: iload 26
    //   884: isub
    //   885: iconst_2
    //   886: idiv
    //   887: iadd
    //   888: iadd
    //   889: iconst_0
    //   890: iconst_0
    //   891: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   894: new 423	android/widget/RelativeLayout$LayoutParams
    //   897: dup
    //   898: aload 27
    //   900: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   903: astore 28
    //   905: aload_0
    //   906: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   909: ldc_w 493
    //   912: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   915: istore 29
    //   917: aload_0
    //   918: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   921: ldc_w 495
    //   924: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   927: istore 30
    //   929: aload_0
    //   930: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   933: ldc_w 497
    //   936: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   939: istore 31
    //   941: new 414	android/view/ViewGroup$MarginLayoutParams
    //   944: dup
    //   945: aload_0
    //   946: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   949: ldc_w 499
    //   952: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   955: iload 31
    //   957: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   960: astore 32
    //   962: aload 32
    //   964: iload 29
    //   966: iload 30
    //   968: iconst_0
    //   969: iconst_0
    //   970: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   973: new 423	android/widget/RelativeLayout$LayoutParams
    //   976: dup
    //   977: aload 32
    //   979: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   982: astore 33
    //   984: aload_0
    //   985: new 375	android/view/View
    //   988: dup
    //   989: aload_0
    //   990: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   993: invokespecial 376	android/view/View:<init>	(Landroid/content/Context;)V
    //   996: putfield 357	com/pad/android/iappad/AdController:footer	Landroid/view/View;
    //   999: aload_0
    //   1000: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1003: ldc_w 501
    //   1006: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1009: astore 34
    //   1011: aload 34
    //   1013: ldc_w 468
    //   1016: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1019: ifne +1228 -> 2247
    //   1022: aload 34
    //   1024: ifnonnull +6 -> 1030
    //   1027: goto +1220 -> 2247
    //   1030: aload_0
    //   1031: getfield 357	com/pad/android/iappad/AdController:footer	Landroid/view/View;
    //   1034: aload 34
    //   1036: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1039: invokevirtual 387	android/view/View:setBackgroundColor	(I)V
    //   1042: aload_0
    //   1043: new 475	android/widget/TextView
    //   1046: dup
    //   1047: aload_0
    //   1048: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   1051: invokespecial 476	android/widget/TextView:<init>	(Landroid/content/Context;)V
    //   1054: putfield 359	com/pad/android/iappad/AdController:footerTitle	Landroid/widget/TextView;
    //   1057: aload_0
    //   1058: getfield 359	com/pad/android/iappad/AdController:footerTitle	Landroid/widget/TextView;
    //   1061: aload_0
    //   1062: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1065: ldc_w 503
    //   1068: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1071: invokevirtual 482	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   1074: aload_0
    //   1075: getfield 359	com/pad/android/iappad/AdController:footerTitle	Landroid/widget/TextView;
    //   1078: ldc_w 504
    //   1081: invokevirtual 508	android/widget/TextView:setTextSize	(F)V
    //   1084: aload_0
    //   1085: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1088: ldc_w 510
    //   1091: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1094: istore 35
    //   1096: aload_0
    //   1097: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1100: ldc_w 512
    //   1103: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1106: astore 36
    //   1108: aload 36
    //   1110: ldc_w 468
    //   1113: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1116: ifne +1139 -> 2255
    //   1119: aload 36
    //   1121: ifnonnull +6 -> 1127
    //   1124: goto +1131 -> 2255
    //   1127: aload_0
    //   1128: getfield 359	com/pad/android/iappad/AdController:footerTitle	Landroid/widget/TextView;
    //   1131: aload 36
    //   1133: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1136: invokevirtual 487	android/widget/TextView:setTextColor	(I)V
    //   1139: new 414	android/view/ViewGroup$MarginLayoutParams
    //   1142: dup
    //   1143: aload_0
    //   1144: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1147: ldc_w 514
    //   1150: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1153: iload 35
    //   1155: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1158: astore 37
    //   1160: aload 37
    //   1162: iload 29
    //   1164: bipush 20
    //   1166: iadd
    //   1167: iload 30
    //   1169: iload 31
    //   1171: iload 35
    //   1173: isub
    //   1174: iconst_2
    //   1175: idiv
    //   1176: iadd
    //   1177: iconst_0
    //   1178: iconst_0
    //   1179: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1182: new 423	android/widget/RelativeLayout$LayoutParams
    //   1185: dup
    //   1186: aload 37
    //   1188: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1191: astore 38
    //   1193: iload 21
    //   1195: iconst_5
    //   1196: isub
    //   1197: iconst_0
    //   1198: invokestatic 520	java/lang/Math:max	(II)I
    //   1201: istore 39
    //   1203: iload 39
    //   1205: iconst_2
    //   1206: idiv
    //   1207: i2f
    //   1208: fstore 40
    //   1210: aload_0
    //   1211: new 522	android/widget/Button
    //   1214: dup
    //   1215: aload_0
    //   1216: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   1219: invokespecial 523	android/widget/Button:<init>	(Landroid/content/Context;)V
    //   1222: putfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1225: aload_0
    //   1226: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1229: ldc_w 525
    //   1232: invokevirtual 526	android/widget/Button:setText	(Ljava/lang/CharSequence;)V
    //   1235: aload_0
    //   1236: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1239: fload 40
    //   1241: invokevirtual 527	android/widget/Button:setTextSize	(F)V
    //   1244: aload_0
    //   1245: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1248: aload 25
    //   1250: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1253: invokevirtual 528	android/widget/Button:setTextColor	(I)V
    //   1256: aload_0
    //   1257: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1260: iconst_0
    //   1261: iconst_0
    //   1262: iconst_0
    //   1263: iconst_0
    //   1264: invokevirtual 531	android/widget/Button:setPadding	(IIII)V
    //   1267: aload_0
    //   1268: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1271: aload 24
    //   1273: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1276: invokevirtual 532	android/widget/Button:setBackgroundColor	(I)V
    //   1279: aload_0
    //   1280: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1283: astore 41
    //   1285: new 534	com/pad/android/iappad/AdController$3
    //   1288: dup
    //   1289: aload_0
    //   1290: invokespecial 535	com/pad/android/iappad/AdController$3:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   1293: astore 42
    //   1295: aload 41
    //   1297: aload 42
    //   1299: invokevirtual 536	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1302: new 414	android/view/ViewGroup$MarginLayoutParams
    //   1305: dup
    //   1306: bipush 55
    //   1308: iload 39
    //   1310: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1313: astore 43
    //   1315: aload_0
    //   1316: aload 43
    //   1318: putfield 538	com/pad/android/iappad/AdController:mlpC	Landroid/view/ViewGroup$MarginLayoutParams;
    //   1321: bipush 251
    //   1323: bipush 201
    //   1325: iload 20
    //   1327: iload 18
    //   1329: iadd
    //   1330: iadd
    //   1331: iadd
    //   1332: istore 44
    //   1334: iconst_2
    //   1335: iload 19
    //   1337: iload 21
    //   1339: iload 39
    //   1341: isub
    //   1342: iconst_2
    //   1343: idiv
    //   1344: iadd
    //   1345: iadd
    //   1346: istore 45
    //   1348: aload_0
    //   1349: getfield 538	com/pad/android/iappad/AdController:mlpC	Landroid/view/ViewGroup$MarginLayoutParams;
    //   1352: iload 44
    //   1354: iload 45
    //   1356: iconst_0
    //   1357: iconst_0
    //   1358: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1361: aload_0
    //   1362: new 423	android/widget/RelativeLayout$LayoutParams
    //   1365: dup
    //   1366: aload_0
    //   1367: getfield 538	com/pad/android/iappad/AdController:mlpC	Landroid/view/ViewGroup$MarginLayoutParams;
    //   1370: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1373: putfield 540	com/pad/android/iappad/AdController:lpC	Landroid/widget/RelativeLayout$LayoutParams;
    //   1376: aload_0
    //   1377: getfield 145	com/pad/android/iappad/AdController:mainView	Landroid/webkit/WebView;
    //   1380: ifnull +39 -> 1419
    //   1383: aload_0
    //   1384: aload_0
    //   1385: getfield 145	com/pad/android/iappad/AdController:mainView	Landroid/webkit/WebView;
    //   1388: invokevirtual 544	android/webkit/WebView:getParent	()Landroid/view/ViewParent;
    //   1391: checkcast 546	android/view/ViewGroup
    //   1394: putfield 548	com/pad/android/iappad/AdController:mainViewParent	Landroid/view/ViewGroup;
    //   1397: aload_0
    //   1398: getfield 548	com/pad/android/iappad/AdController:mainViewParent	Landroid/view/ViewGroup;
    //   1401: aload_0
    //   1402: getfield 145	com/pad/android/iappad/AdController:mainView	Landroid/webkit/WebView;
    //   1405: invokevirtual 549	android/view/ViewGroup:removeView	(Landroid/view/View;)V
    //   1408: aload_0
    //   1409: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1412: aload_0
    //   1413: getfield 145	com/pad/android/iappad/AdController:mainView	Landroid/webkit/WebView;
    //   1416: invokevirtual 552	android/widget/RelativeLayout:addView	(Landroid/view/View;)V
    //   1419: aload_0
    //   1420: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1423: ldc_w 554
    //   1426: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1429: iconst_1
    //   1430: if_icmpne +46 -> 1476
    //   1433: aload_0
    //   1434: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1437: aload_0
    //   1438: getfield 371	com/pad/android/iappad/AdController:mask	Landroid/view/View;
    //   1441: aload 12
    //   1443: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1446: aload_0
    //   1447: getfield 145	com/pad/android/iappad/AdController:mainView	Landroid/webkit/WebView;
    //   1450: ifnull +26 -> 1476
    //   1453: aload_0
    //   1454: getfield 145	com/pad/android/iappad/AdController:mainView	Landroid/webkit/WebView;
    //   1457: astore 53
    //   1459: new 559	com/pad/android/iappad/AdController$4
    //   1462: dup
    //   1463: aload_0
    //   1464: invokespecial 560	com/pad/android/iappad/AdController$4:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   1467: astore 54
    //   1469: aload 53
    //   1471: aload 54
    //   1473: invokevirtual 274	android/webkit/WebView:setOnTouchListener	(Landroid/view/View$OnTouchListener;)V
    //   1476: ldc 8
    //   1478: ldc_w 562
    //   1481: invokestatic 308	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   1484: aload_0
    //   1485: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1488: aload_0
    //   1489: getfield 259	com/pad/android/iappad/AdController:webview	Lcom/pad/android/iappad/AdWebView;
    //   1492: aload 17
    //   1494: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1497: ldc 8
    //   1499: ldc_w 564
    //   1502: invokestatic 308	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   1505: aload_0
    //   1506: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1509: ldc_w 438
    //   1512: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1515: iconst_1
    //   1516: if_icmpne +77 -> 1593
    //   1519: aload_0
    //   1520: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1523: aload_0
    //   1524: getfield 353	com/pad/android/iappad/AdController:toolbar	Landroid/view/View;
    //   1527: aload 23
    //   1529: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1532: aload_0
    //   1533: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1536: ldc_w 478
    //   1539: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1542: ldc_w 468
    //   1545: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1548: ifne +16 -> 1564
    //   1551: aload_0
    //   1552: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1555: aload_0
    //   1556: getfield 355	com/pad/android/iappad/AdController:title	Landroid/widget/TextView;
    //   1559: aload 28
    //   1561: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1564: aload_0
    //   1565: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1568: ldc_w 566
    //   1571: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1574: iconst_1
    //   1575: if_icmpne +18 -> 1593
    //   1578: aload_0
    //   1579: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1582: aload_0
    //   1583: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1586: aload_0
    //   1587: getfield 540	com/pad/android/iappad/AdController:lpC	Landroid/widget/RelativeLayout$LayoutParams;
    //   1590: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1593: aload_0
    //   1594: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1597: ldc_w 568
    //   1600: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1603: iconst_1
    //   1604: if_icmpne +48 -> 1652
    //   1607: aload_0
    //   1608: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1611: aload_0
    //   1612: getfield 357	com/pad/android/iappad/AdController:footer	Landroid/view/View;
    //   1615: aload 33
    //   1617: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1620: aload_0
    //   1621: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1624: ldc_w 503
    //   1627: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1630: ldc_w 468
    //   1633: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1636: ifne +16 -> 1652
    //   1639: aload_0
    //   1640: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1643: aload_0
    //   1644: getfield 359	com/pad/android/iappad/AdController:footerTitle	Landroid/widget/TextView;
    //   1647: aload 38
    //   1649: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1652: aload_0
    //   1653: new 276	java/lang/StringBuilder
    //   1656: dup
    //   1657: aload_0
    //   1658: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1661: ldc_w 570
    //   1664: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1667: invokestatic 574	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1670: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1673: aload_0
    //   1674: getfield 143	com/pad/android/iappad/AdController:sectionid	Ljava/lang/String;
    //   1677: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1680: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1683: putfield 576	com/pad/android/iappad/AdController:loadUrl	Ljava/lang/String;
    //   1686: aload_0
    //   1687: getfield 259	com/pad/android/iappad/AdController:webview	Lcom/pad/android/iappad/AdWebView;
    //   1690: aload_0
    //   1691: getfield 576	com/pad/android/iappad/AdController:loadUrl	Ljava/lang/String;
    //   1694: invokevirtual 579	com/pad/android/iappad/AdWebView:setLoadingURL	(Ljava/lang/String;)V
    //   1697: aload_0
    //   1698: getfield 259	com/pad/android/iappad/AdController:webview	Lcom/pad/android/iappad/AdWebView;
    //   1701: aload_0
    //   1702: getfield 576	com/pad/android/iappad/AdController:loadUrl	Ljava/lang/String;
    //   1705: invokevirtual 581	com/pad/android/iappad/AdWebView:loadUrl	(Ljava/lang/String;)V
    //   1708: aload_0
    //   1709: iconst_1
    //   1710: putfield 332	com/pad/android/iappad/AdController:loading	Z
    //   1713: new 414	android/view/ViewGroup$MarginLayoutParams
    //   1716: dup
    //   1717: aload_0
    //   1718: getfield 583	com/pad/android/iappad/AdController:sWidth	I
    //   1721: aload_0
    //   1722: getfield 585	com/pad/android/iappad/AdController:sHeight	I
    //   1725: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1728: astore 47
    //   1730: aload 47
    //   1732: iconst_0
    //   1733: iconst_0
    //   1734: iconst_0
    //   1735: iconst_0
    //   1736: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1739: new 423	android/widget/RelativeLayout$LayoutParams
    //   1742: dup
    //   1743: aload 47
    //   1745: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1748: astore 48
    //   1750: aload_0
    //   1751: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   1754: aload_0
    //   1755: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1758: aload 48
    //   1760: invokevirtual 590	android/app/Activity:addContentView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1763: aload_0
    //   1764: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1767: ldc_w 592
    //   1770: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1773: iconst_1
    //   1774: if_icmpne +331 -> 2105
    //   1777: aload_0
    //   1778: getfield 113	com/pad/android/iappad/AdController:pollingInitialized	Z
    //   1781: ifne +324 -> 2105
    //   1784: aload_0
    //   1785: getfield 133	com/pad/android/iappad/AdController:pollCount	I
    //   1788: aload_0
    //   1789: getfield 135	com/pad/android/iappad/AdController:pollMax	I
    //   1792: if_icmpgt +313 -> 2105
    //   1795: aload_0
    //   1796: getfield 133	com/pad/android/iappad/AdController:pollCount	I
    //   1799: aload_0
    //   1800: getfield 137	com/pad/android/iappad/AdController:pollManual	I
    //   1803: if_icmpge +302 -> 2105
    //   1806: ldc 8
    //   1808: ldc_w 594
    //   1811: invokestatic 308	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   1814: aload_0
    //   1815: iconst_1
    //   1816: putfield 113	com/pad/android/iappad/AdController:pollingInitialized	Z
    //   1819: new 596	com/pad/android/iappad/AdController$OfferPolling
    //   1822: dup
    //   1823: aload_0
    //   1824: invokespecial 597	com/pad/android/iappad/AdController$OfferPolling:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   1827: astore 50
    //   1829: aload_0
    //   1830: aload 50
    //   1832: putfield 158	com/pad/android/iappad/AdController:adPolling	Lcom/pad/android/iappad/AdController$OfferPolling;
    //   1835: aload_0
    //   1836: new 239	android/os/Handler
    //   1839: dup
    //   1840: invokespecial 598	android/os/Handler:<init>	()V
    //   1843: putfield 206	com/pad/android/iappad/AdController:pollingHandler	Landroid/os/Handler;
    //   1846: ldc 8
    //   1848: new 276	java/lang/StringBuilder
    //   1851: dup
    //   1852: ldc_w 600
    //   1855: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1858: aload_0
    //   1859: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1862: ldc_w 602
    //   1865: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1868: invokevirtual 446	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1871: ldc_w 604
    //   1874: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1877: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1880: invokestatic 308	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   1883: aload_0
    //   1884: getfield 206	com/pad/android/iappad/AdController:pollingHandler	Landroid/os/Handler;
    //   1887: aload_0
    //   1888: getfield 158	com/pad/android/iappad/AdController:adPolling	Lcom/pad/android/iappad/AdController$OfferPolling;
    //   1891: sipush 1000
    //   1894: aload_0
    //   1895: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1898: ldc_w 602
    //   1901: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1904: imul
    //   1905: i2l
    //   1906: invokevirtual 608	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   1909: pop
    //   1910: goto -1887 -> 23
    //   1913: astore 51
    //   1915: ldc 8
    //   1917: new 276	java/lang/StringBuilder
    //   1920: dup
    //   1921: ldc_w 610
    //   1924: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1927: aload 51
    //   1929: invokevirtual 285	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1932: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1935: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1938: invokestatic 295	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1941: ldc 8
    //   1943: aload 51
    //   1945: invokestatic 301	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1948: goto -1925 -> 23
    //   1951: astore 4
    //   1953: aload_0
    //   1954: invokespecial 169	com/pad/android/iappad/AdController:closeUnlocker	()V
    //   1957: ldc_w 612
    //   1960: new 276	java/lang/StringBuilder
    //   1963: dup
    //   1964: ldc_w 614
    //   1967: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1970: aload 4
    //   1972: invokevirtual 615	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   1975: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1978: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1981: invokestatic 620	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   1984: pop
    //   1985: goto -1962 -> 23
    //   1988: aload 14
    //   1990: ldc_w 622
    //   1993: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1996: ifeq -1434 -> 562
    //   1999: iload 13
    //   2001: aload_0
    //   2002: getfield 121	com/pad/android/iappad/AdController:additionalDockingMargin	I
    //   2005: isub
    //   2006: istore 13
    //   2008: iload 13
    //   2010: ifge -1448 -> 562
    //   2013: iconst_0
    //   2014: istore 13
    //   2016: goto -1454 -> 562
    //   2019: astore 46
    //   2021: aload_0
    //   2022: invokespecial 169	com/pad/android/iappad/AdController:closeUnlocker	()V
    //   2025: aload_0
    //   2026: iconst_0
    //   2027: putfield 332	com/pad/android/iappad/AdController:loading	Z
    //   2030: goto -317 -> 1713
    //   2033: astore_2
    //   2034: aload_0
    //   2035: invokespecial 169	com/pad/android/iappad/AdController:closeUnlocker	()V
    //   2038: ldc 8
    //   2040: aload_2
    //   2041: invokestatic 301	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   2044: ldc_w 612
    //   2047: new 276	java/lang/StringBuilder
    //   2050: dup
    //   2051: ldc_w 624
    //   2054: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2057: aload_2
    //   2058: invokevirtual 285	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   2061: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2064: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2067: invokestatic 620	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   2070: pop
    //   2071: goto -2048 -> 23
    //   2074: astore 49
    //   2076: ldc 8
    //   2078: new 276	java/lang/StringBuilder
    //   2081: dup
    //   2082: ldc_w 626
    //   2085: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2088: aload 49
    //   2090: invokevirtual 285	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   2093: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2096: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2099: invokestatic 295	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   2102: goto -339 -> 1763
    //   2105: aload_0
    //   2106: getfield 133	com/pad/android/iappad/AdController:pollCount	I
    //   2109: aload_0
    //   2110: getfield 135	com/pad/android/iappad/AdController:pollMax	I
    //   2113: if_icmple -2090 -> 23
    //   2116: aload_0
    //   2117: getfield 133	com/pad/android/iappad/AdController:pollCount	I
    //   2120: aload_0
    //   2121: getfield 137	com/pad/android/iappad/AdController:pollManual	I
    //   2124: if_icmplt -2101 -> 23
    //   2127: aload_0
    //   2128: iconst_0
    //   2129: putfield 113	com/pad/android/iappad/AdController:pollingInitialized	Z
    //   2132: aload_0
    //   2133: invokespecial 163	com/pad/android/iappad/AdController:showManualPoll	()V
    //   2136: goto -2113 -> 23
    //   2139: aload_0
    //   2140: iconst_0
    //   2141: putfield 332	com/pad/android/iappad/AdController:loading	Z
    //   2144: aload_0
    //   2145: invokespecial 169	com/pad/android/iappad/AdController:closeUnlocker	()V
    //   2148: goto -2125 -> 23
    //   2151: aload_0
    //   2152: iconst_0
    //   2153: putfield 332	com/pad/android/iappad/AdController:loading	Z
    //   2156: aload_0
    //   2157: invokespecial 169	com/pad/android/iappad/AdController:closeUnlocker	()V
    //   2160: aload_0
    //   2161: getfield 125	com/pad/android/iappad/AdController:listener	Lcom/pad/android/listener/AdListener;
    //   2164: astore 6
    //   2166: aload 6
    //   2168: ifnull -2145 -> 23
    //   2171: ldc 8
    //   2173: ldc_w 628
    //   2176: invokestatic 230	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   2179: aload_0
    //   2180: getfield 125	com/pad/android/iappad/AdController:listener	Lcom/pad/android/listener/AdListener;
    //   2183: invokeinterface 631 1 0
    //   2188: aload_0
    //   2189: iconst_1
    //   2190: putfield 129	com/pad/android/iappad/AdController:adLoaded	Z
    //   2193: goto -2170 -> 23
    //   2196: astore 7
    //   2198: ldc 8
    //   2200: ldc_w 633
    //   2203: invokestatic 230	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   2206: ldc 8
    //   2208: aload 7
    //   2210: invokestatic 301	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   2213: goto -2190 -> 23
    //   2216: astore 15
    //   2218: goto -1753 -> 465
    //   2221: astore 10
    //   2223: goto -1822 -> 401
    //   2226: astore 9
    //   2228: goto -1920 -> 308
    //   2231: ldc_w 635
    //   2234: astore 24
    //   2236: goto -1486 -> 750
    //   2239: ldc_w 635
    //   2242: astore 25
    //   2244: goto -1419 -> 825
    //   2247: ldc_w 635
    //   2250: astore 34
    //   2252: goto -1222 -> 1030
    //   2255: ldc_w 635
    //   2258: astore 36
    //   2260: goto -1133 -> 1127
    //
    // Exception table:
    //   from	to	target	type
    //   24	78	81	java/lang/Exception
    //   1846	1910	1913	java/lang/Exception
    //   138	168	1951	org/json/JSONException
    //   173	308	1951	org/json/JSONException
    //   308	401	1951	org/json/JSONException
    //   401	449	1951	org/json/JSONException
    //   449	461	1951	org/json/JSONException
    //   465	1652	1951	org/json/JSONException
    //   1652	1713	1951	org/json/JSONException
    //   1713	1750	1951	org/json/JSONException
    //   1750	1763	1951	org/json/JSONException
    //   1763	1846	1951	org/json/JSONException
    //   1846	1910	1951	org/json/JSONException
    //   1915	1948	1951	org/json/JSONException
    //   1988	2030	1951	org/json/JSONException
    //   2076	2166	1951	org/json/JSONException
    //   2171	2193	1951	org/json/JSONException
    //   2198	2213	1951	org/json/JSONException
    //   1652	1713	2019	java/lang/Exception
    //   138	168	2033	java/lang/Exception
    //   401	449	2033	java/lang/Exception
    //   465	1652	2033	java/lang/Exception
    //   1713	1750	2033	java/lang/Exception
    //   1763	1846	2033	java/lang/Exception
    //   1915	1948	2033	java/lang/Exception
    //   1988	2030	2033	java/lang/Exception
    //   2076	2166	2033	java/lang/Exception
    //   2198	2213	2033	java/lang/Exception
    //   1750	1763	2074	java/lang/Exception
    //   2171	2193	2196	java/lang/Exception
    //   449	461	2216	java/lang/Exception
    //   308	401	2221	java/lang/Exception
    //   173	308	2226	java/lang/Exception
  }

  private int getAdVisibility()
  {
    if (this.webview != null);
    for (int i = this.webview.getVisibility(); ; i = 4)
      return i;
  }

  private void goBack()
  {
    if (!(this.webview.canGoBack()))
      return;
    this.webview.goBack();
  }

  private void goForward()
  {
    if (!(this.webview.canGoForward()))
      return;
    this.webview.goForward();
  }

  private void initialize()
  {
    if ((this.loadAd) && (adShowStatus().equals("hidden")))
    {
      AdLog.d("LBAdController", "Ad paused, will not show");
      if (this.listener == null);
    }
    try
    {
      AdLog.i("LBAdController", "onAdPaused triggered");
      this.listener.onAdPaused();
      this.listener.onAdHidden();
      label61: return;
    }
    catch (Exception localException)
    {
      AdLog.i("LBAdController", "Error while calling onAdPaused");
      AdLog.printStackTrace("LBAdController", localException);
      break label61:
      AdLog.i("LBAdController", "initializing...");
      AdTask localAdTask = new AdTask(this, this.activity, this.sectionid);
      localAdTask.setSubId(this.subid);
      localAdTask.setTokens(this.tokens);
      localAdTask.setUseLocation(this.useLocation);
      localAdTask.execute(new String[] { "" });
    }
  }

  // ERROR //
  private void linkClicked()
  {
    // Byte code:
    //   0: ldc 8
    //   2: ldc_w 693
    //   5: invokestatic 230	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   8: aload_0
    //   9: getfield 111	com/pad/android/iappad/AdController:linkClicked	Z
    //   12: ifne +2139 -> 2151
    //   15: ldc 8
    //   17: ldc_w 695
    //   20: invokestatic 230	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   23: aload_0
    //   24: iconst_0
    //   25: putfield 109	com/pad/android/iappad/AdController:homeLoaded	Z
    //   28: aload_0
    //   29: iconst_1
    //   30: putfield 111	com/pad/android/iappad/AdController:linkClicked	Z
    //   33: aload_0
    //   34: getfield 332	com/pad/android/iappad/AdController:loading	Z
    //   37: ifne +2114 -> 2151
    //   40: ldc 8
    //   42: ldc_w 697
    //   45: invokestatic 230	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   48: aload_0
    //   49: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   52: aload_0
    //   53: getfield 259	com/pad/android/iappad/AdController:webview	Lcom/pad/android/iappad/AdWebView;
    //   56: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   59: aload_0
    //   60: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   63: aload_0
    //   64: getfield 353	com/pad/android/iappad/AdController:toolbar	Landroid/view/View;
    //   67: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   70: aload_0
    //   71: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   74: aload_0
    //   75: getfield 355	com/pad/android/iappad/AdController:title	Landroid/widget/TextView;
    //   78: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   81: aload_0
    //   82: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   85: aload_0
    //   86: getfield 357	com/pad/android/iappad/AdController:footer	Landroid/view/View;
    //   89: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   92: aload_0
    //   93: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   96: aload_0
    //   97: getfield 359	com/pad/android/iappad/AdController:footerTitle	Landroid/widget/TextView;
    //   100: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   103: aload_0
    //   104: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   107: aload_0
    //   108: getfield 361	com/pad/android/iappad/AdController:backBtn	Landroid/widget/Button;
    //   111: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   114: aload_0
    //   115: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   118: aload_0
    //   119: getfield 363	com/pad/android/iappad/AdController:fwdBtn	Landroid/widget/Button;
    //   122: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   125: aload_0
    //   126: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   129: aload_0
    //   130: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   133: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   136: aload_0
    //   137: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   140: aload_0
    //   141: getfield 367	com/pad/android/iappad/AdController:homeBtn	Landroid/widget/Button;
    //   144: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   147: aload_0
    //   148: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   151: aload_0
    //   152: getfield 369	com/pad/android/iappad/AdController:refreshBtn	Landroid/widget/Button;
    //   155: invokevirtual 351	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   158: aload_0
    //   159: getfield 373	com/pad/android/iappad/AdController:pollBtn	Landroid/widget/Button;
    //   162: ifnull +10 -> 172
    //   165: aload_0
    //   166: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   169: invokevirtual 268	android/widget/RelativeLayout:removeAllViews	()V
    //   172: aload_0
    //   173: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   176: ldc_w 699
    //   179: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   182: istore_3
    //   183: aload_0
    //   184: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   187: ldc_w 701
    //   190: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   193: istore 4
    //   195: new 414	android/view/ViewGroup$MarginLayoutParams
    //   198: dup
    //   199: aload_0
    //   200: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   203: ldc_w 703
    //   206: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   209: aload_0
    //   210: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   213: ldc_w 705
    //   216: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   219: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   222: astore 5
    //   224: aload 5
    //   226: iload_3
    //   227: iload 4
    //   229: iconst_0
    //   230: iconst_0
    //   231: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   234: new 423	android/widget/RelativeLayout$LayoutParams
    //   237: dup
    //   238: aload 5
    //   240: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   243: astore 6
    //   245: aload_0
    //   246: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   249: ldc_w 707
    //   252: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   255: istore 7
    //   257: aload_0
    //   258: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   261: ldc_w 709
    //   264: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   267: istore 8
    //   269: aload_0
    //   270: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   273: ldc_w 711
    //   276: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   279: istore 9
    //   281: aload_0
    //   282: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   285: ldc_w 713
    //   288: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   291: istore 10
    //   293: new 414	android/view/ViewGroup$MarginLayoutParams
    //   296: dup
    //   297: iload 7
    //   299: iload 8
    //   301: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   304: astore 11
    //   306: aload 11
    //   308: iload 9
    //   310: iload 10
    //   312: iconst_0
    //   313: iconst_0
    //   314: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   317: new 423	android/widget/RelativeLayout$LayoutParams
    //   320: dup
    //   321: aload 11
    //   323: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   326: astore 12
    //   328: aload_0
    //   329: getfield 353	com/pad/android/iappad/AdController:toolbar	Landroid/view/View;
    //   332: invokevirtual 716	android/view/View:invalidate	()V
    //   335: aload_0
    //   336: new 375	android/view/View
    //   339: dup
    //   340: aload_0
    //   341: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   344: invokespecial 376	android/view/View:<init>	(Landroid/content/Context;)V
    //   347: putfield 353	com/pad/android/iappad/AdController:toolbar	Landroid/view/View;
    //   350: aload_0
    //   351: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   354: ldc_w 718
    //   357: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   360: astore 14
    //   362: aload 14
    //   364: ldc_w 468
    //   367: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   370: ifne +1988 -> 2358
    //   373: aload 14
    //   375: ifnonnull +6 -> 381
    //   378: goto +1980 -> 2358
    //   381: aload_0
    //   382: getfield 353	com/pad/android/iappad/AdController:toolbar	Landroid/view/View;
    //   385: aload 14
    //   387: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   390: invokevirtual 387	android/view/View:setBackgroundColor	(I)V
    //   393: aload_0
    //   394: getfield 355	com/pad/android/iappad/AdController:title	Landroid/widget/TextView;
    //   397: invokevirtual 719	android/widget/TextView:invalidate	()V
    //   400: aload_0
    //   401: new 475	android/widget/TextView
    //   404: dup
    //   405: aload_0
    //   406: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   409: invokespecial 476	android/widget/TextView:<init>	(Landroid/content/Context;)V
    //   412: putfield 355	com/pad/android/iappad/AdController:title	Landroid/widget/TextView;
    //   415: aload_0
    //   416: getfield 355	com/pad/android/iappad/AdController:title	Landroid/widget/TextView;
    //   419: aload_0
    //   420: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   423: ldc_w 721
    //   426: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   429: invokevirtual 482	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   432: aload_0
    //   433: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   436: ldc_w 723
    //   439: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   442: astore 16
    //   444: aload 16
    //   446: ldc_w 468
    //   449: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   452: ifne +1914 -> 2366
    //   455: aload 16
    //   457: ifnonnull +6 -> 463
    //   460: goto +1906 -> 2366
    //   463: aload_0
    //   464: getfield 355	com/pad/android/iappad/AdController:title	Landroid/widget/TextView;
    //   467: aload 16
    //   469: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   472: invokevirtual 487	android/widget/TextView:setTextColor	(I)V
    //   475: new 414	android/view/ViewGroup$MarginLayoutParams
    //   478: dup
    //   479: aload_0
    //   480: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   483: ldc_w 725
    //   486: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   489: iload 8
    //   491: iconst_2
    //   492: isub
    //   493: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   496: astore 17
    //   498: aload 17
    //   500: iload 9
    //   502: bipush 20
    //   504: iadd
    //   505: iload 10
    //   507: bipush 8
    //   509: iadd
    //   510: iconst_0
    //   511: iconst_0
    //   512: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   515: new 423	android/widget/RelativeLayout$LayoutParams
    //   518: dup
    //   519: aload 17
    //   521: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   524: astore 18
    //   526: aload_0
    //   527: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   530: ldc_w 727
    //   533: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   536: istore 19
    //   538: aload_0
    //   539: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   542: ldc_w 729
    //   545: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   548: istore 20
    //   550: aload_0
    //   551: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   554: ldc_w 731
    //   557: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   560: istore 21
    //   562: new 414	android/view/ViewGroup$MarginLayoutParams
    //   565: dup
    //   566: aload_0
    //   567: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   570: ldc_w 733
    //   573: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   576: iload 21
    //   578: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   581: astore 22
    //   583: aload 22
    //   585: iload 19
    //   587: iload 20
    //   589: iconst_0
    //   590: iconst_0
    //   591: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   594: new 423	android/widget/RelativeLayout$LayoutParams
    //   597: dup
    //   598: aload 22
    //   600: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   603: astore 23
    //   605: aload_0
    //   606: new 375	android/view/View
    //   609: dup
    //   610: aload_0
    //   611: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   614: invokespecial 376	android/view/View:<init>	(Landroid/content/Context;)V
    //   617: putfield 357	com/pad/android/iappad/AdController:footer	Landroid/view/View;
    //   620: aload_0
    //   621: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   624: ldc_w 735
    //   627: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   630: astore 24
    //   632: aload 24
    //   634: ldc_w 468
    //   637: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   640: ifne +1734 -> 2374
    //   643: aload 24
    //   645: ifnonnull +6 -> 651
    //   648: goto +1726 -> 2374
    //   651: aload_0
    //   652: getfield 357	com/pad/android/iappad/AdController:footer	Landroid/view/View;
    //   655: aload 24
    //   657: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   660: invokevirtual 387	android/view/View:setBackgroundColor	(I)V
    //   663: aload_0
    //   664: new 475	android/widget/TextView
    //   667: dup
    //   668: aload_0
    //   669: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   672: invokespecial 476	android/widget/TextView:<init>	(Landroid/content/Context;)V
    //   675: putfield 359	com/pad/android/iappad/AdController:footerTitle	Landroid/widget/TextView;
    //   678: aload_0
    //   679: getfield 359	com/pad/android/iappad/AdController:footerTitle	Landroid/widget/TextView;
    //   682: aload_0
    //   683: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   686: ldc_w 737
    //   689: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   692: invokevirtual 482	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   695: aload_0
    //   696: getfield 359	com/pad/android/iappad/AdController:footerTitle	Landroid/widget/TextView;
    //   699: ldc_w 504
    //   702: invokevirtual 508	android/widget/TextView:setTextSize	(F)V
    //   705: aload_0
    //   706: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   709: ldc_w 739
    //   712: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   715: astore 25
    //   717: aload 25
    //   719: ldc_w 468
    //   722: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   725: ifne +1657 -> 2382
    //   728: aload 25
    //   730: ifnonnull +6 -> 736
    //   733: goto +1649 -> 2382
    //   736: aload_0
    //   737: getfield 359	com/pad/android/iappad/AdController:footerTitle	Landroid/widget/TextView;
    //   740: aload 25
    //   742: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   745: invokevirtual 487	android/widget/TextView:setTextColor	(I)V
    //   748: new 414	android/view/ViewGroup$MarginLayoutParams
    //   751: dup
    //   752: aload_0
    //   753: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   756: ldc_w 741
    //   759: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   762: aload_0
    //   763: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   766: ldc_w 743
    //   769: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   772: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   775: astore 26
    //   777: aload_0
    //   778: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   781: ldc_w 745
    //   784: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   787: iconst_1
    //   788: if_icmpne +1364 -> 2152
    //   791: iload 19
    //   793: bipush 70
    //   795: iadd
    //   796: istore 27
    //   798: iload 20
    //   800: iconst_5
    //   801: iadd
    //   802: istore 28
    //   804: aload 26
    //   806: iload 27
    //   808: iload 28
    //   810: iconst_0
    //   811: iconst_0
    //   812: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   815: new 423	android/widget/RelativeLayout$LayoutParams
    //   818: dup
    //   819: aload 26
    //   821: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   824: astore 29
    //   826: iload 8
    //   828: iconst_5
    //   829: isub
    //   830: iconst_0
    //   831: invokestatic 520	java/lang/Math:max	(II)I
    //   834: istore 30
    //   836: iload 30
    //   838: iconst_2
    //   839: idiv
    //   840: i2f
    //   841: fstore 31
    //   843: fload 31
    //   845: ldc_w 504
    //   848: fcmpl
    //   849: ifle +8 -> 857
    //   852: ldc_w 504
    //   855: fstore 31
    //   857: iload 21
    //   859: iconst_5
    //   860: isub
    //   861: iconst_0
    //   862: invokestatic 520	java/lang/Math:max	(II)I
    //   865: istore 32
    //   867: iload 32
    //   869: iconst_2
    //   870: idiv
    //   871: i2f
    //   872: fstore 33
    //   874: fload 33
    //   876: ldc_w 504
    //   879: fcmpl
    //   880: ifle +8 -> 888
    //   883: ldc_w 504
    //   886: fstore 33
    //   888: aload_0
    //   889: getfield 367	com/pad/android/iappad/AdController:homeBtn	Landroid/widget/Button;
    //   892: ifnull +10 -> 902
    //   895: aload_0
    //   896: getfield 367	com/pad/android/iappad/AdController:homeBtn	Landroid/widget/Button;
    //   899: invokevirtual 746	android/widget/Button:invalidate	()V
    //   902: aload_0
    //   903: new 522	android/widget/Button
    //   906: dup
    //   907: aload_0
    //   908: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   911: invokespecial 523	android/widget/Button:<init>	(Landroid/content/Context;)V
    //   914: putfield 367	com/pad/android/iappad/AdController:homeBtn	Landroid/widget/Button;
    //   917: aload_0
    //   918: getfield 367	com/pad/android/iappad/AdController:homeBtn	Landroid/widget/Button;
    //   921: ldc_w 748
    //   924: invokevirtual 526	android/widget/Button:setText	(Ljava/lang/CharSequence;)V
    //   927: aload_0
    //   928: getfield 367	com/pad/android/iappad/AdController:homeBtn	Landroid/widget/Button;
    //   931: fload 33
    //   933: invokevirtual 527	android/widget/Button:setTextSize	(F)V
    //   936: aload_0
    //   937: getfield 367	com/pad/android/iappad/AdController:homeBtn	Landroid/widget/Button;
    //   940: aload 16
    //   942: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   945: invokevirtual 528	android/widget/Button:setTextColor	(I)V
    //   948: aload_0
    //   949: getfield 367	com/pad/android/iappad/AdController:homeBtn	Landroid/widget/Button;
    //   952: iconst_0
    //   953: iconst_0
    //   954: iconst_0
    //   955: iconst_0
    //   956: invokevirtual 531	android/widget/Button:setPadding	(IIII)V
    //   959: aload_0
    //   960: getfield 367	com/pad/android/iappad/AdController:homeBtn	Landroid/widget/Button;
    //   963: aload 24
    //   965: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   968: invokevirtual 532	android/widget/Button:setBackgroundColor	(I)V
    //   971: aload_0
    //   972: getfield 367	com/pad/android/iappad/AdController:homeBtn	Landroid/widget/Button;
    //   975: astore 34
    //   977: new 750	com/pad/android/iappad/AdController$5
    //   980: dup
    //   981: aload_0
    //   982: invokespecial 751	com/pad/android/iappad/AdController$5:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   985: astore 35
    //   987: aload 34
    //   989: aload 35
    //   991: invokevirtual 536	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   994: aload_0
    //   995: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   998: ifnull +10 -> 1008
    //   1001: aload_0
    //   1002: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1005: invokevirtual 746	android/widget/Button:invalidate	()V
    //   1008: aload_0
    //   1009: new 522	android/widget/Button
    //   1012: dup
    //   1013: aload_0
    //   1014: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   1017: invokespecial 523	android/widget/Button:<init>	(Landroid/content/Context;)V
    //   1020: putfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1023: aload_0
    //   1024: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1027: ldc_w 525
    //   1030: invokevirtual 526	android/widget/Button:setText	(Ljava/lang/CharSequence;)V
    //   1033: aload_0
    //   1034: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1037: fload 31
    //   1039: invokevirtual 527	android/widget/Button:setTextSize	(F)V
    //   1042: aload_0
    //   1043: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1046: aload 16
    //   1048: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1051: invokevirtual 528	android/widget/Button:setTextColor	(I)V
    //   1054: aload_0
    //   1055: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1058: iconst_0
    //   1059: iconst_0
    //   1060: iconst_0
    //   1061: iconst_0
    //   1062: invokevirtual 531	android/widget/Button:setPadding	(IIII)V
    //   1065: aload_0
    //   1066: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1069: aload 14
    //   1071: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1074: invokevirtual 532	android/widget/Button:setBackgroundColor	(I)V
    //   1077: aload_0
    //   1078: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1081: astore 36
    //   1083: new 753	com/pad/android/iappad/AdController$6
    //   1086: dup
    //   1087: aload_0
    //   1088: invokespecial 754	com/pad/android/iappad/AdController$6:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   1091: astore 37
    //   1093: aload 36
    //   1095: aload 37
    //   1097: invokevirtual 536	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1100: aload_0
    //   1101: new 522	android/widget/Button
    //   1104: dup
    //   1105: aload_0
    //   1106: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   1109: invokespecial 523	android/widget/Button:<init>	(Landroid/content/Context;)V
    //   1112: putfield 363	com/pad/android/iappad/AdController:fwdBtn	Landroid/widget/Button;
    //   1115: aload_0
    //   1116: getfield 363	com/pad/android/iappad/AdController:fwdBtn	Landroid/widget/Button;
    //   1119: ldc_w 756
    //   1122: invokevirtual 526	android/widget/Button:setText	(Ljava/lang/CharSequence;)V
    //   1125: aload_0
    //   1126: getfield 363	com/pad/android/iappad/AdController:fwdBtn	Landroid/widget/Button;
    //   1129: fload 33
    //   1131: invokevirtual 527	android/widget/Button:setTextSize	(F)V
    //   1134: aload_0
    //   1135: getfield 363	com/pad/android/iappad/AdController:fwdBtn	Landroid/widget/Button;
    //   1138: aload 16
    //   1140: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1143: invokevirtual 528	android/widget/Button:setTextColor	(I)V
    //   1146: aload_0
    //   1147: getfield 363	com/pad/android/iappad/AdController:fwdBtn	Landroid/widget/Button;
    //   1150: iconst_0
    //   1151: iconst_0
    //   1152: iconst_0
    //   1153: iconst_0
    //   1154: invokevirtual 531	android/widget/Button:setPadding	(IIII)V
    //   1157: aload_0
    //   1158: getfield 363	com/pad/android/iappad/AdController:fwdBtn	Landroid/widget/Button;
    //   1161: aload 24
    //   1163: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1166: invokevirtual 532	android/widget/Button:setBackgroundColor	(I)V
    //   1169: aload_0
    //   1170: getfield 363	com/pad/android/iappad/AdController:fwdBtn	Landroid/widget/Button;
    //   1173: astore 38
    //   1175: new 758	com/pad/android/iappad/AdController$7
    //   1178: dup
    //   1179: aload_0
    //   1180: invokespecial 759	com/pad/android/iappad/AdController$7:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   1183: astore 39
    //   1185: aload 38
    //   1187: aload 39
    //   1189: invokevirtual 536	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1192: aload_0
    //   1193: getfield 361	com/pad/android/iappad/AdController:backBtn	Landroid/widget/Button;
    //   1196: ifnull +10 -> 1206
    //   1199: aload_0
    //   1200: getfield 361	com/pad/android/iappad/AdController:backBtn	Landroid/widget/Button;
    //   1203: invokevirtual 746	android/widget/Button:invalidate	()V
    //   1206: aload_0
    //   1207: new 522	android/widget/Button
    //   1210: dup
    //   1211: aload_0
    //   1212: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   1215: invokespecial 523	android/widget/Button:<init>	(Landroid/content/Context;)V
    //   1218: putfield 361	com/pad/android/iappad/AdController:backBtn	Landroid/widget/Button;
    //   1221: aload_0
    //   1222: getfield 361	com/pad/android/iappad/AdController:backBtn	Landroid/widget/Button;
    //   1225: ldc_w 761
    //   1228: invokevirtual 526	android/widget/Button:setText	(Ljava/lang/CharSequence;)V
    //   1231: aload_0
    //   1232: getfield 361	com/pad/android/iappad/AdController:backBtn	Landroid/widget/Button;
    //   1235: fload 33
    //   1237: invokevirtual 527	android/widget/Button:setTextSize	(F)V
    //   1240: aload_0
    //   1241: getfield 361	com/pad/android/iappad/AdController:backBtn	Landroid/widget/Button;
    //   1244: aload 16
    //   1246: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1249: invokevirtual 528	android/widget/Button:setTextColor	(I)V
    //   1252: aload_0
    //   1253: getfield 361	com/pad/android/iappad/AdController:backBtn	Landroid/widget/Button;
    //   1256: iconst_0
    //   1257: iconst_0
    //   1258: iconst_0
    //   1259: iconst_0
    //   1260: invokevirtual 531	android/widget/Button:setPadding	(IIII)V
    //   1263: aload_0
    //   1264: getfield 361	com/pad/android/iappad/AdController:backBtn	Landroid/widget/Button;
    //   1267: aload 24
    //   1269: invokestatic 473	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1272: invokevirtual 532	android/widget/Button:setBackgroundColor	(I)V
    //   1275: aload_0
    //   1276: getfield 361	com/pad/android/iappad/AdController:backBtn	Landroid/widget/Button;
    //   1279: astore 40
    //   1281: new 763	com/pad/android/iappad/AdController$8
    //   1284: dup
    //   1285: aload_0
    //   1286: invokespecial 764	com/pad/android/iappad/AdController$8:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   1289: astore 41
    //   1291: aload 40
    //   1293: aload 41
    //   1295: invokevirtual 536	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1298: new 414	android/view/ViewGroup$MarginLayoutParams
    //   1301: dup
    //   1302: bipush 30
    //   1304: iload 32
    //   1306: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1309: astore 42
    //   1311: iconst_3
    //   1312: iload 20
    //   1314: aload_0
    //   1315: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1318: ldc_w 731
    //   1321: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1324: iload 32
    //   1326: isub
    //   1327: iconst_2
    //   1328: idiv
    //   1329: iadd
    //   1330: iadd
    //   1331: istore 43
    //   1333: aload 42
    //   1335: iload 19
    //   1337: iconst_5
    //   1338: iadd
    //   1339: iload 43
    //   1341: iconst_0
    //   1342: iconst_0
    //   1343: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1346: new 423	android/widget/RelativeLayout$LayoutParams
    //   1349: dup
    //   1350: aload 42
    //   1352: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1355: astore 44
    //   1357: aload 42
    //   1359: bipush 30
    //   1361: iload 19
    //   1363: iconst_5
    //   1364: iadd
    //   1365: iadd
    //   1366: iload 43
    //   1368: iconst_0
    //   1369: iconst_0
    //   1370: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1373: new 423	android/widget/RelativeLayout$LayoutParams
    //   1376: dup
    //   1377: aload 42
    //   1379: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1382: astore 45
    //   1384: aload_0
    //   1385: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1388: aload_0
    //   1389: getfield 259	com/pad/android/iappad/AdController:webview	Lcom/pad/android/iappad/AdWebView;
    //   1392: aload 6
    //   1394: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1397: aload_0
    //   1398: getfield 125	com/pad/android/iappad/AdController:listener	Lcom/pad/android/listener/AdListener;
    //   1401: astore 46
    //   1403: aload 46
    //   1405: ifnull +39 -> 1444
    //   1408: aload_0
    //   1409: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1412: ldc_w 312
    //   1415: invokevirtual 346	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   1418: ldc_w 324
    //   1421: invokevirtual 347	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   1424: ifne +20 -> 1444
    //   1427: ldc 8
    //   1429: ldc_w 766
    //   1432: invokestatic 230	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1435: aload_0
    //   1436: getfield 125	com/pad/android/iappad/AdController:listener	Lcom/pad/android/listener/AdListener;
    //   1439: invokeinterface 769 1 0
    //   1444: aload_0
    //   1445: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1448: ldc_w 771
    //   1451: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1454: iconst_1
    //   1455: if_icmpne +151 -> 1606
    //   1458: aload_0
    //   1459: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1462: aload_0
    //   1463: getfield 353	com/pad/android/iappad/AdController:toolbar	Landroid/view/View;
    //   1466: aload 12
    //   1468: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1471: aload_0
    //   1472: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1475: ldc_w 721
    //   1478: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1481: ldc_w 468
    //   1484: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1487: ifne +16 -> 1503
    //   1490: aload_0
    //   1491: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1494: aload_0
    //   1495: getfield 355	com/pad/android/iappad/AdController:title	Landroid/widget/TextView;
    //   1498: aload 18
    //   1500: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1503: aload_0
    //   1504: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1507: ldc_w 566
    //   1510: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1513: iconst_1
    //   1514: if_icmpne +92 -> 1606
    //   1517: new 414	android/view/ViewGroup$MarginLayoutParams
    //   1520: dup
    //   1521: bipush 55
    //   1523: iload 30
    //   1525: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1528: astore 63
    //   1530: aload_0
    //   1531: aload 63
    //   1533: putfield 538	com/pad/android/iappad/AdController:mlpC	Landroid/view/ViewGroup$MarginLayoutParams;
    //   1536: bipush 251
    //   1538: bipush 201
    //   1540: iload 7
    //   1542: iload 9
    //   1544: iadd
    //   1545: iadd
    //   1546: iadd
    //   1547: istore 64
    //   1549: iconst_2
    //   1550: iload 10
    //   1552: iload 8
    //   1554: iload 30
    //   1556: isub
    //   1557: iconst_2
    //   1558: idiv
    //   1559: iadd
    //   1560: iadd
    //   1561: istore 65
    //   1563: aload_0
    //   1564: getfield 538	com/pad/android/iappad/AdController:mlpC	Landroid/view/ViewGroup$MarginLayoutParams;
    //   1567: iload 64
    //   1569: iload 65
    //   1571: iconst_0
    //   1572: iconst_0
    //   1573: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1576: aload_0
    //   1577: new 423	android/widget/RelativeLayout$LayoutParams
    //   1580: dup
    //   1581: aload_0
    //   1582: getfield 538	com/pad/android/iappad/AdController:mlpC	Landroid/view/ViewGroup$MarginLayoutParams;
    //   1585: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1588: putfield 540	com/pad/android/iappad/AdController:lpC	Landroid/widget/RelativeLayout$LayoutParams;
    //   1591: aload_0
    //   1592: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1595: aload_0
    //   1596: getfield 365	com/pad/android/iappad/AdController:closeBtn	Landroid/widget/Button;
    //   1599: aload_0
    //   1600: getfield 540	com/pad/android/iappad/AdController:lpC	Landroid/widget/RelativeLayout$LayoutParams;
    //   1603: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1606: aload_0
    //   1607: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1610: ldc_w 773
    //   1613: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1616: iconst_1
    //   1617: if_icmpne +177 -> 1794
    //   1620: aload_0
    //   1621: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1624: aload_0
    //   1625: getfield 357	com/pad/android/iappad/AdController:footer	Landroid/view/View;
    //   1628: aload 23
    //   1630: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1633: aload_0
    //   1634: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1637: ldc_w 737
    //   1640: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1643: ldc_w 468
    //   1646: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1649: ifne +16 -> 1665
    //   1652: aload_0
    //   1653: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1656: aload_0
    //   1657: getfield 359	com/pad/android/iappad/AdController:footerTitle	Landroid/widget/TextView;
    //   1660: aload 29
    //   1662: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1665: aload_0
    //   1666: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1669: ldc_w 745
    //   1672: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1675: iconst_1
    //   1676: if_icmpne +29 -> 1705
    //   1679: aload_0
    //   1680: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1683: aload_0
    //   1684: getfield 361	com/pad/android/iappad/AdController:backBtn	Landroid/widget/Button;
    //   1687: aload 44
    //   1689: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1692: aload_0
    //   1693: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1696: aload_0
    //   1697: getfield 363	com/pad/android/iappad/AdController:fwdBtn	Landroid/widget/Button;
    //   1700: aload 45
    //   1702: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1705: aload_0
    //   1706: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1709: ldc_w 775
    //   1712: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1715: iconst_1
    //   1716: if_icmpne +78 -> 1794
    //   1719: new 414	android/view/ViewGroup$MarginLayoutParams
    //   1722: dup
    //   1723: bipush 55
    //   1725: iload 32
    //   1727: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1730: astore 61
    //   1732: aload 61
    //   1734: bipush 251
    //   1736: bipush 201
    //   1738: iload 19
    //   1740: aload_0
    //   1741: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1744: ldc_w 733
    //   1747: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1750: iadd
    //   1751: iadd
    //   1752: iadd
    //   1753: iconst_2
    //   1754: iload 20
    //   1756: iload 21
    //   1758: iload 32
    //   1760: isub
    //   1761: iconst_2
    //   1762: idiv
    //   1763: iadd
    //   1764: iadd
    //   1765: iconst_0
    //   1766: iconst_0
    //   1767: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1770: new 423	android/widget/RelativeLayout$LayoutParams
    //   1773: dup
    //   1774: aload 61
    //   1776: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1779: astore 62
    //   1781: aload_0
    //   1782: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1785: aload_0
    //   1786: getfield 367	com/pad/android/iappad/AdController:homeBtn	Landroid/widget/Button;
    //   1789: aload 62
    //   1791: invokevirtual 557	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1794: aload_0
    //   1795: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1798: ldc_w 312
    //   1801: invokevirtual 346	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   1804: ldc_w 324
    //   1807: invokevirtual 347	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   1810: istore 47
    //   1812: iload 47
    //   1814: ifeq +114 -> 1928
    //   1817: aload_0
    //   1818: new 276	java/lang/StringBuilder
    //   1821: dup
    //   1822: aload_0
    //   1823: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1826: ldc_w 570
    //   1829: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1832: invokestatic 574	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1835: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1838: aload_0
    //   1839: getfield 143	com/pad/android/iappad/AdController:sectionid	Ljava/lang/String;
    //   1842: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1845: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1848: putfield 576	com/pad/android/iappad/AdController:loadUrl	Ljava/lang/String;
    //   1851: aload_0
    //   1852: getfield 259	com/pad/android/iappad/AdController:webview	Lcom/pad/android/iappad/AdWebView;
    //   1855: aload_0
    //   1856: getfield 576	com/pad/android/iappad/AdController:loadUrl	Ljava/lang/String;
    //   1859: invokevirtual 579	com/pad/android/iappad/AdWebView:setLoadingURL	(Ljava/lang/String;)V
    //   1862: aload_0
    //   1863: getfield 259	com/pad/android/iappad/AdController:webview	Lcom/pad/android/iappad/AdWebView;
    //   1866: aload_0
    //   1867: getfield 576	com/pad/android/iappad/AdController:loadUrl	Ljava/lang/String;
    //   1870: invokevirtual 581	com/pad/android/iappad/AdWebView:loadUrl	(Ljava/lang/String;)V
    //   1873: aload_0
    //   1874: iconst_1
    //   1875: putfield 332	com/pad/android/iappad/AdController:loading	Z
    //   1878: new 414	android/view/ViewGroup$MarginLayoutParams
    //   1881: dup
    //   1882: aload_0
    //   1883: getfield 583	com/pad/android/iappad/AdController:sWidth	I
    //   1886: aload_0
    //   1887: getfield 585	com/pad/android/iappad/AdController:sHeight	I
    //   1890: invokespecial 417	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1893: astore 57
    //   1895: aload 57
    //   1897: iconst_0
    //   1898: iconst_0
    //   1899: iconst_0
    //   1900: iconst_0
    //   1901: invokevirtual 421	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1904: new 423	android/widget/RelativeLayout$LayoutParams
    //   1907: dup
    //   1908: aload 57
    //   1910: invokespecial 426	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1913: astore 59
    //   1915: aload_0
    //   1916: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   1919: aload_0
    //   1920: getfield 147	com/pad/android/iappad/AdController:layout	Landroid/widget/RelativeLayout;
    //   1923: aload 59
    //   1925: invokevirtual 590	android/app/Activity:addContentView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1928: ldc 8
    //   1930: new 276	java/lang/StringBuilder
    //   1933: dup
    //   1934: ldc_w 777
    //   1937: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1940: aload_0
    //   1941: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   1944: ldc_w 592
    //   1947: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1950: invokevirtual 446	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1953: ldc_w 779
    //   1956: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1959: aload_0
    //   1960: getfield 113	com/pad/android/iappad/AdController:pollingInitialized	Z
    //   1963: invokevirtual 782	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   1966: ldc_w 784
    //   1969: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1972: aload_0
    //   1973: getfield 133	com/pad/android/iappad/AdController:pollCount	I
    //   1976: invokevirtual 446	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1979: ldc_w 786
    //   1982: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1985: aload_0
    //   1986: getfield 135	com/pad/android/iappad/AdController:pollMax	I
    //   1989: invokevirtual 446	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1992: ldc_w 788
    //   1995: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1998: aload_0
    //   1999: getfield 137	com/pad/android/iappad/AdController:pollManual	I
    //   2002: invokevirtual 446	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   2005: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2008: invokestatic 230	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   2011: aload_0
    //   2012: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   2015: ldc_w 592
    //   2018: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   2021: iconst_1
    //   2022: if_icmpne +209 -> 2231
    //   2025: aload_0
    //   2026: getfield 113	com/pad/android/iappad/AdController:pollingInitialized	Z
    //   2029: ifne +202 -> 2231
    //   2032: aload_0
    //   2033: getfield 133	com/pad/android/iappad/AdController:pollCount	I
    //   2036: ifle +195 -> 2231
    //   2039: iconst_1
    //   2040: istore 50
    //   2042: iload 50
    //   2044: ifeq +265 -> 2309
    //   2047: ldc 8
    //   2049: ldc_w 790
    //   2052: invokestatic 230	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   2055: aload_0
    //   2056: iconst_1
    //   2057: putfield 113	com/pad/android/iappad/AdController:pollingInitialized	Z
    //   2060: new 596	com/pad/android/iappad/AdController$OfferPolling
    //   2063: dup
    //   2064: aload_0
    //   2065: invokespecial 597	com/pad/android/iappad/AdController$OfferPolling:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   2068: astore 53
    //   2070: aload_0
    //   2071: aload 53
    //   2073: putfield 158	com/pad/android/iappad/AdController:adPolling	Lcom/pad/android/iappad/AdController$OfferPolling;
    //   2076: aload_0
    //   2077: new 239	android/os/Handler
    //   2080: dup
    //   2081: invokespecial 598	android/os/Handler:<init>	()V
    //   2084: putfield 206	com/pad/android/iappad/AdController:pollingHandler	Landroid/os/Handler;
    //   2087: ldc 8
    //   2089: new 276	java/lang/StringBuilder
    //   2092: dup
    //   2093: ldc_w 600
    //   2096: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2099: aload_0
    //   2100: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   2103: ldc_w 602
    //   2106: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   2109: invokevirtual 446	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   2112: ldc_w 604
    //   2115: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2118: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2121: invokestatic 308	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   2124: aload_0
    //   2125: getfield 206	com/pad/android/iappad/AdController:pollingHandler	Landroid/os/Handler;
    //   2128: aload_0
    //   2129: getfield 158	com/pad/android/iappad/AdController:adPolling	Lcom/pad/android/iappad/AdController$OfferPolling;
    //   2132: sipush 1000
    //   2135: aload_0
    //   2136: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   2139: ldc_w 602
    //   2142: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   2145: imul
    //   2146: i2l
    //   2147: invokevirtual 608	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   2150: pop
    //   2151: return
    //   2152: iload 19
    //   2154: bipush 20
    //   2156: iadd
    //   2157: istore 27
    //   2159: goto -1361 -> 798
    //   2162: astore 66
    //   2164: ldc 8
    //   2166: ldc_w 792
    //   2169: invokestatic 295	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   2172: ldc 8
    //   2174: aload 66
    //   2176: invokestatic 301	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   2179: goto -735 -> 1444
    //   2182: astore_2
    //   2183: ldc 8
    //   2185: aload_2
    //   2186: invokestatic 301	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   2189: ldc 8
    //   2191: new 276	java/lang/StringBuilder
    //   2194: dup
    //   2195: ldc_w 794
    //   2198: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2201: aload_2
    //   2202: invokevirtual 615	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   2205: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2208: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2211: invokestatic 295	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   2214: goto -63 -> 2151
    //   2217: astore 56
    //   2219: aload_0
    //   2220: invokespecial 169	com/pad/android/iappad/AdController:closeUnlocker	()V
    //   2223: aload_0
    //   2224: iconst_0
    //   2225: putfield 332	com/pad/android/iappad/AdController:loading	Z
    //   2228: goto -350 -> 1878
    //   2231: aload_0
    //   2232: getfield 133	com/pad/android/iappad/AdController:pollCount	I
    //   2235: aload_0
    //   2236: getfield 135	com/pad/android/iappad/AdController:pollMax	I
    //   2239: if_icmpgt +20 -> 2259
    //   2242: aload_0
    //   2243: getfield 133	com/pad/android/iappad/AdController:pollCount	I
    //   2246: aload_0
    //   2247: getfield 137	com/pad/android/iappad/AdController:pollManual	I
    //   2250: if_icmpge +9 -> 2259
    //   2253: iconst_1
    //   2254: istore 50
    //   2256: goto -214 -> 2042
    //   2259: aload_0
    //   2260: getfield 133	com/pad/android/iappad/AdController:pollCount	I
    //   2263: istore 48
    //   2265: aload_0
    //   2266: getfield 135	com/pad/android/iappad/AdController:pollMax	I
    //   2269: istore 49
    //   2271: iconst_0
    //   2272: istore 50
    //   2274: iload 48
    //   2276: iload 49
    //   2278: if_icmple -236 -> 2042
    //   2281: aload_0
    //   2282: getfield 133	com/pad/android/iappad/AdController:pollCount	I
    //   2285: istore 51
    //   2287: aload_0
    //   2288: getfield 137	com/pad/android/iappad/AdController:pollManual	I
    //   2291: istore 52
    //   2293: iconst_0
    //   2294: istore 50
    //   2296: iload 51
    //   2298: iload 52
    //   2300: if_icmplt -258 -> 2042
    //   2303: iconst_0
    //   2304: istore 50
    //   2306: goto -264 -> 2042
    //   2309: ldc 8
    //   2311: ldc_w 796
    //   2314: invokestatic 230	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   2317: aload_0
    //   2318: iconst_0
    //   2319: putfield 113	com/pad/android/iappad/AdController:pollingInitialized	Z
    //   2322: aload_0
    //   2323: invokespecial 163	com/pad/android/iappad/AdController:showManualPoll	()V
    //   2326: goto -175 -> 2151
    //   2329: astore 54
    //   2331: goto -180 -> 2151
    //   2334: astore 58
    //   2336: goto -408 -> 1928
    //   2339: astore 60
    //   2341: goto -413 -> 1928
    //   2344: astore 15
    //   2346: goto -1946 -> 400
    //   2349: astore 13
    //   2351: goto -2016 -> 335
    //   2354: astore_1
    //   2355: goto -2183 -> 172
    //   2358: ldc_w 635
    //   2361: astore 14
    //   2363: goto -1982 -> 381
    //   2366: ldc_w 798
    //   2369: astore 16
    //   2371: goto -1908 -> 463
    //   2374: ldc_w 635
    //   2377: astore 24
    //   2379: goto -1728 -> 651
    //   2382: ldc_w 798
    //   2385: astore 25
    //   2387: goto -1651 -> 736
    //
    // Exception table:
    //   from	to	target	type
    //   1408	1444	2162	java/lang/Exception
    //   48	172	2182	org/json/JSONException
    //   172	328	2182	org/json/JSONException
    //   328	335	2182	org/json/JSONException
    //   335	393	2182	org/json/JSONException
    //   393	400	2182	org/json/JSONException
    //   400	1403	2182	org/json/JSONException
    //   1408	1444	2182	org/json/JSONException
    //   1444	1812	2182	org/json/JSONException
    //   1817	1878	2182	org/json/JSONException
    //   1878	1915	2182	org/json/JSONException
    //   1915	1928	2182	org/json/JSONException
    //   1928	2087	2182	org/json/JSONException
    //   2087	2151	2182	org/json/JSONException
    //   2164	2179	2182	org/json/JSONException
    //   2219	2326	2182	org/json/JSONException
    //   1817	1878	2217	java/lang/Exception
    //   2087	2151	2329	java/lang/Exception
    //   1878	1915	2334	java/lang/Exception
    //   1915	1928	2339	java/lang/Exception
    //   393	400	2344	java/lang/Exception
    //   328	335	2349	java/lang/Exception
    //   48	172	2354	java/lang/Exception
  }

  private void showManualPoll()
  {
    try
    {
      boolean bool2 = this.results.getString("clickfootervisible").equals("1");
      if (bool2)
        break label25;
      label25: label153: label410: label171: return;
    }
    catch (Exception localException1)
    {
      while (true)
      {
        this.pollingInitialized = false;
        if (this.pollingHandler != null)
          this.pollingHandler.removeCallbacks(this.adPolling);
        this.pollBtn = new Button(this.activity);
        this.pollBtn.setText("Refresh");
        String str1 = "#E6E6E6";
        String str2 = "#000000";
        boolean bool1 = this.linkClicked;
        int i = 0;
        if (bool1);
        try
        {
          while (true)
          {
            i = Math.max(-5 + this.results.getInt("clickfooterheight"), 0);
            str1 = this.results.getString("clickfootercolor");
            str2 = this.results.getString("clicktitletextcolor");
            if (str1.equals(""))
              break label410;
            if (str1 == null)
              break label410;
            if ((str2.equals("")) || (str2 == null))
              str2 = "#000000";
            float f = i / 2;
            if (f > 10.0F)
              f = 10.0F;
            this.pollBtn.setPadding(0, 0, 0, 0);
            this.pollBtn.setTextSize(f);
            this.pollBtn.setTextColor(Color.parseColor(str2));
            this.pollBtn.setBackgroundColor(Color.parseColor(str1));
            this.pollBtn.setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramView)
              {
                AdController.this.loadingDialog = ProgressDialog.show(AdController.this.activity, "", "Checking....Please Wait!", true);
                if (AdController.this.adPolling == null)
                  AdController.this.adPolling = new AdController.OfferPolling(AdController.this);
                AdController.this.pollingHandler = new Handler();
                try
                {
                  AdLog.i("LBAdController", "Manually Polling");
                  AdController.this.pollingHandler.post(AdController.this.adPolling);
                  return;
                }
                catch (Exception localException)
                {
                  AdLog.e("LBAdController", "Error in manual polling - " + localException.getMessage());
                  AdLog.printStackTrace("LBAdController", localException);
                }
              }
            });
            if (this.linkClicked);
            try
            {
              int j = this.results.getInt("clickfooterx");
              int k = this.results.getInt("clickfootery");
              int l = this.results.getInt("clickfooterheight");
              ViewGroup.MarginLayoutParams localMarginLayoutParams = new ViewGroup.MarginLayoutParams(55, i);
              localMarginLayoutParams.setMargins(-120 + j + this.results.getInt("clickfooterwidth"), 2 + k + (l - i) / 2, 0, 0);
              RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(localMarginLayoutParams);
              this.layout.addView(this.pollBtn, localLayoutParams);
            }
            catch (Exception localException2)
            {
              AdLog.e("LBAdController", "Error (add Manual Poll btn before click): " + localException2.getMessage());
              AdLog.printStackTrace("LBAdController", localException2);
            }
          }
        }
        catch (Exception localException3)
        {
          break label171:
          str1 = "#E6E6E6";
          break label153:
        }
      }
    }
  }

  public String adShowStatus()
  {
    if (this.activity != null);
    for (Object localObject = this.activity; ; localObject = this.context)
      return ((Context)localObject).getSharedPreferences("Preference", 2).getString("SD_ADSTATUS_" + this.sectionid, "default");
  }

  public void destroyAd()
  {
    AdLog.i("LBAdController", "destroyAd called");
    this.adDestroyed = true;
    closeUnlocker();
  }

  public boolean getAdDestroyed()
  {
    return this.adDestroyed;
  }

  public boolean getAdLoaded()
  {
    return this.adLoaded;
  }

  public boolean getOnAdLoaded()
  {
    return this.onAdLoaded;
  }

  public void hideAd()
  {
    pauseAd();
  }

  // ERROR //
  public void initialized()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: putfield 119	com/pad/android/iappad/AdController:initialized	Z
    //   5: aload_0
    //   6: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   9: ifnull +656 -> 665
    //   12: aload_0
    //   13: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   16: ldc_w 342
    //   19: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   22: ldc_w 836
    //   25: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   28: ifeq +21 -> 49
    //   31: aload_0
    //   32: getfield 125	com/pad/android/iappad/AdController:listener	Lcom/pad/android/listener/AdListener;
    //   35: ifnull +12 -> 47
    //   38: aload_0
    //   39: getfield 125	com/pad/android/iappad/AdController:listener	Lcom/pad/android/listener/AdListener;
    //   42: invokeinterface 631 1 0
    //   47: return
    //   48: astore_1
    //   49: aload_0
    //   50: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   53: ifnull +108 -> 161
    //   56: new 838	android/util/DisplayMetrics
    //   59: dup
    //   60: invokespecial 839	android/util/DisplayMetrics:<init>	()V
    //   63: astore_2
    //   64: aload_0
    //   65: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   68: invokevirtual 843	android/app/Activity:getWindowManager	()Landroid/view/WindowManager;
    //   71: invokeinterface 849 1 0
    //   76: aload_2
    //   77: invokevirtual 855	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   80: new 857	android/graphics/Rect
    //   83: dup
    //   84: invokespecial 858	android/graphics/Rect:<init>	()V
    //   87: astore_3
    //   88: aload_0
    //   89: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   92: invokevirtual 862	android/app/Activity:getWindow	()Landroid/view/Window;
    //   95: astore 4
    //   97: aload 4
    //   99: invokevirtual 868	android/view/Window:getDecorView	()Landroid/view/View;
    //   102: aload_3
    //   103: invokevirtual 872	android/view/View:getWindowVisibleDisplayFrame	(Landroid/graphics/Rect;)V
    //   106: aload_3
    //   107: getfield 875	android/graphics/Rect:top	I
    //   110: istore 5
    //   112: aload 4
    //   114: ldc_w 876
    //   117: invokevirtual 880	android/view/Window:findViewById	(I)Landroid/view/View;
    //   120: invokevirtual 883	android/view/View:getTop	()I
    //   123: istore 6
    //   125: iload 6
    //   127: iload 5
    //   129: if_icmple +392 -> 521
    //   132: iload 6
    //   134: iload 5
    //   136: isub
    //   137: istore 7
    //   139: aload_0
    //   140: aload_2
    //   141: getfield 886	android/util/DisplayMetrics:widthPixels	I
    //   144: putfield 583	com/pad/android/iappad/AdController:sWidth	I
    //   147: aload_0
    //   148: aload_2
    //   149: getfield 889	android/util/DisplayMetrics:heightPixels	I
    //   152: iload 5
    //   154: isub
    //   155: iload 7
    //   157: isub
    //   158: putfield 585	com/pad/android/iappad/AdController:sHeight	I
    //   161: aload_0
    //   162: aload_0
    //   163: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   166: ldc_w 891
    //   169: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   172: putfield 135	com/pad/android/iappad/AdController:pollMax	I
    //   175: aload_0
    //   176: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   179: ldc_w 893
    //   182: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   185: istore 28
    //   187: aload_0
    //   188: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   191: ldc_w 602
    //   194: invokevirtual 432	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   197: istore 29
    //   199: iload 29
    //   201: ifle +326 -> 527
    //   204: aload_0
    //   205: iload 28
    //   207: bipush 60
    //   209: imul
    //   210: iload 29
    //   212: idiv
    //   213: putfield 137	com/pad/android/iappad/AdController:pollManual	I
    //   216: aload_0
    //   217: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   220: ldc_w 895
    //   223: invokevirtual 346	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   226: ldc_w 324
    //   229: invokevirtual 347	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   232: ifeq +8 -> 240
    //   235: aload_0
    //   236: iconst_1
    //   237: putfield 117	com/pad/android/iappad/AdController:nativeOpen	Z
    //   240: aload_0
    //   241: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   244: ldc_w 807
    //   247: iconst_2
    //   248: invokevirtual 896	android/app/Activity:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   251: invokeinterface 900 1 0
    //   256: astore 10
    //   258: aload 10
    //   260: new 276	java/lang/StringBuilder
    //   263: dup
    //   264: ldc_w 902
    //   267: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   270: aload_0
    //   271: getfield 143	com/pad/android/iappad/AdController:sectionid	Ljava/lang/String;
    //   274: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   280: aload_0
    //   281: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   284: ldc_w 904
    //   287: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   290: invokeinterface 910 3 0
    //   295: pop
    //   296: aload 10
    //   298: invokeinterface 913 1 0
    //   303: pop
    //   304: aload_0
    //   305: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   308: ldc_w 915
    //   311: invokevirtual 318	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   314: ifne +57 -> 371
    //   317: ldc_w 836
    //   320: astore 21
    //   322: aload_0
    //   323: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   326: ldc_w 915
    //   329: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   332: astore 25
    //   334: aload 25
    //   336: astore 21
    //   338: aload 21
    //   340: ldc_w 324
    //   343: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   346: ifeq +25 -> 371
    //   349: aload 10
    //   351: ldc_w 917
    //   354: ldc_w 919
    //   357: invokeinterface 910 3 0
    //   362: pop
    //   363: aload 10
    //   365: invokeinterface 913 1 0
    //   370: pop
    //   371: aload_0
    //   372: getfield 259	com/pad/android/iappad/AdController:webview	Lcom/pad/android/iappad/AdWebView;
    //   375: ifnonnull +66 -> 441
    //   378: new 440	com/pad/android/iappad/AdWebView
    //   381: dup
    //   382: aload_0
    //   383: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   386: aload_0
    //   387: aload_0
    //   388: getfield 117	com/pad/android/iappad/AdController:nativeOpen	Z
    //   391: aload_0
    //   392: getfield 125	com/pad/android/iappad/AdController:listener	Lcom/pad/android/listener/AdListener;
    //   395: invokespecial 922	com/pad/android/iappad/AdWebView:<init>	(Landroid/app/Activity;Lcom/pad/android/iappad/AdController;ZLcom/pad/android/listener/AdListener;)V
    //   398: astore 15
    //   400: aload_0
    //   401: aload 15
    //   403: putfield 259	com/pad/android/iappad/AdController:webview	Lcom/pad/android/iappad/AdWebView;
    //   406: getstatic 927	android/os/Build$VERSION:SDK_INT	I
    //   409: bipush 11
    //   411: if_icmplt +19 -> 430
    //   414: aload_0
    //   415: getfield 141	com/pad/android/iappad/AdController:activity	Landroid/app/Activity;
    //   418: invokevirtual 862	android/app/Activity:getWindow	()Landroid/view/Window;
    //   421: ldc_w 928
    //   424: ldc_w 928
    //   427: invokevirtual 931	android/view/Window:setFlags	(II)V
    //   430: aload_0
    //   431: getfield 259	com/pad/android/iappad/AdController:webview	Lcom/pad/android/iappad/AdWebView;
    //   434: aload_0
    //   435: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   438: invokevirtual 935	com/pad/android/iappad/AdWebView:setResults	(Lorg/json/JSONObject;)V
    //   441: new 937	com/pad/android/iappad/AdController$PollRequest
    //   444: dup
    //   445: aload_0
    //   446: aconst_null
    //   447: invokespecial 940	com/pad/android/iappad/AdController$PollRequest:<init>	(Lcom/pad/android/iappad/AdController;Lcom/pad/android/iappad/AdController$PollRequest;)V
    //   450: astore 16
    //   452: iconst_1
    //   453: anewarray 326	java/lang/String
    //   456: astore 18
    //   458: aload 18
    //   460: iconst_0
    //   461: aload_0
    //   462: getfield 154	com/pad/android/iappad/AdController:results	Lorg/json/JSONObject;
    //   465: ldc_w 942
    //   468: invokevirtual 322	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   471: aastore
    //   472: aload 16
    //   474: aload 18
    //   476: invokevirtual 943	com/pad/android/iappad/AdController$PollRequest:execute	([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   479: pop
    //   480: goto -433 -> 47
    //   483: astore 17
    //   485: ldc 8
    //   487: aload 17
    //   489: invokestatic 301	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   492: ldc 8
    //   494: new 276	java/lang/StringBuilder
    //   497: dup
    //   498: ldc_w 945
    //   501: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   504: aload 17
    //   506: invokevirtual 285	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   509: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   512: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   515: invokestatic 295	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   518: goto -471 -> 47
    //   521: iconst_0
    //   522: istore 7
    //   524: goto -385 -> 139
    //   527: aload_0
    //   528: bipush 10
    //   530: putfield 137	com/pad/android/iappad/AdController:pollManual	I
    //   533: goto -317 -> 216
    //   536: astore 8
    //   538: aload_0
    //   539: sipush 500
    //   542: putfield 135	com/pad/android/iappad/AdController:pollMax	I
    //   545: aload_0
    //   546: bipush 10
    //   548: putfield 137	com/pad/android/iappad/AdController:pollManual	I
    //   551: goto -335 -> 216
    //   554: astore 11
    //   556: aload_0
    //   557: getfield 947	com/pad/android/iappad/AdController:adDisplayInterval	Ljava/lang/String;
    //   560: ifnull +51 -> 611
    //   563: aload_0
    //   564: getfield 947	com/pad/android/iappad/AdController:adDisplayInterval	Ljava/lang/String;
    //   567: ldc_w 836
    //   570: invokevirtual 330	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   573: ifne +38 -> 611
    //   576: aload 10
    //   578: new 276	java/lang/StringBuilder
    //   581: dup
    //   582: ldc_w 902
    //   585: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   588: aload_0
    //   589: getfield 143	com/pad/android/iappad/AdController:sectionid	Ljava/lang/String;
    //   592: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   595: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   598: aload_0
    //   599: getfield 947	com/pad/android/iappad/AdController:adDisplayInterval	Ljava/lang/String;
    //   602: invokeinterface 910 3 0
    //   607: pop
    //   608: goto -312 -> 296
    //   611: aload 10
    //   613: new 276	java/lang/StringBuilder
    //   616: dup
    //   617: ldc_w 902
    //   620: invokespecial 281	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   623: aload_0
    //   624: getfield 143	com/pad/android/iappad/AdController:sectionid	Ljava/lang/String;
    //   627: invokevirtual 289	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   630: invokevirtual 292	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   633: ldc_w 836
    //   636: invokeinterface 910 3 0
    //   641: pop
    //   642: goto -346 -> 296
    //   645: astore 20
    //   647: ldc 8
    //   649: ldc_w 949
    //   652: invokestatic 295	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   655: ldc 8
    //   657: aload 20
    //   659: invokestatic 301	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   662: goto -232 -> 430
    //   665: aload_0
    //   666: getfield 125	com/pad/android/iappad/AdController:listener	Lcom/pad/android/listener/AdListener;
    //   669: ifnull -622 -> 47
    //   672: aload_0
    //   673: getfield 125	com/pad/android/iappad/AdController:listener	Lcom/pad/android/listener/AdListener;
    //   676: invokeinterface 631 1 0
    //   681: goto -634 -> 47
    //   684: astore 14
    //   686: goto -315 -> 371
    //   689: astore 22
    //   691: goto -353 -> 338
    //   694: astore 9
    //   696: goto -456 -> 240
    //
    // Exception table:
    //   from	to	target	type
    //   12	47	48	java/lang/Exception
    //   441	480	483	java/lang/Exception
    //   161	216	536	java/lang/Exception
    //   527	533	536	java/lang/Exception
    //   258	296	554	java/lang/Exception
    //   414	430	645	java/lang/Exception
    //   304	322	684	java/lang/Exception
    //   338	371	684	java/lang/Exception
    //   322	334	689	java/lang/Exception
    //   216	240	694	org/json/JSONException
  }

  public void loadAd()
  {
    SharedPreferences localSharedPreferences = this.activity.getSharedPreferences("Preference", 2);
    String str1 = localSharedPreferences.getString("SD_APP_OPTIN_SHOWN", "notset");
    String str2 = localSharedPreferences.getString("SD_APP_OPTIN", "notset");
    if ((!(str1.equals("notset"))) && (str2.equals("0")))
    {
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putString("SD_APP_OPTIN_SHOWN", "invalid");
      localEditor.commit();
    }
    AdLog.i("LBAdController", "loadAd called");
    this.onAdLoaded = false;
    if (!(this.initialized))
    {
      this.loadAd = true;
      initialize();
    }
    while (true)
    {
      if ((this.listener != null) && (this.progressInterval > 0))
      {
        if (this.loadProgress == null)
          this.loadProgress = new Runnable()
          {
            public void run()
            {
              try
              {
                if ((!(AdController.this.adLoaded)) && (!(AdController.this.adDestroyed)))
                {
                  AdLog.i("LBAdController", "onAdProgress triggered");
                  AdController.this.listener.onAdProgress();
                  AdController.this.progressHandler.postDelayed(AdController.this.loadProgress, 1000 * AdController.this.progressInterval);
                }
                return;
              }
              catch (Exception localException)
              {
                AdLog.e("LBAdController", "error when onAdProgress triggered");
                AdLog.printStackTrace("LBAdController", localException);
              }
            }
          };
        if (this.progressHandler == null)
        {
          this.progressHandler = new Handler();
          this.progressHandler.postDelayed(this.loadProgress, 1000 * this.progressInterval);
        }
      }
      return;
      displayAd();
    }
  }

  public void loadOptin(Activity paramActivity, String paramString, AdOptinListener paramAdOptinListener)
  {
    if (paramActivity != null)
    {
      if (!(paramActivity instanceof Activity))
        break label31;
      new AdOptinRequest(paramActivity, paramString, null, paramAdOptinListener).execute(new Void[0]);
    }
    while (true)
    {
      return;
      label31: Log.e("com.pad.android.iappad.AdController", "Activity required for loadOptin - incorrect value passed");
    }
  }

  public boolean onBackPressed()
  {
    if (this.linkClicked)
      loadAd();
    for (int i = 1; ; i = 0)
      return i;
  }

  public void onLinkClicked()
  {
    linkClicked();
  }

  public void pauseAd()
  {
    if (this.activity != null);
    for (Object localObject = this.activity; ; localObject = this.context)
    {
      SharedPreferences.Editor localEditor = ((Context)localObject).getSharedPreferences("Preference", 2).edit();
      localEditor.putString("SD_ADSTATUS_" + this.sectionid, "hidden");
      localEditor.commit();
      return;
    }
  }

  public void resumeAd()
  {
    Object localObject;
    if (this.activity != null)
      localObject = this.activity;
    while (true)
    {
      SharedPreferences.Editor localEditor = ((Context)localObject).getSharedPreferences("Preference", 2).edit();
      localEditor.putString("SD_ADSTATUS_" + this.sectionid, "default");
      localEditor.commit();
      if (this.listener != null);
      try
      {
        this.listener.onAdResumed();
        label79: return;
        localObject = this.context;
      }
      catch (Exception localException)
      {
        AdLog.printStackTrace("LBAdController", localException);
        AdLog.e("LBAdController", "Error while triggering onAdResumed - " + localException.getMessage());
        break label79:
      }
    }
  }

  public void setAdDestroyed(boolean paramBoolean)
  {
    this.adDestroyed = paramBoolean;
  }

  public void setAdLoaded(boolean paramBoolean)
  {
    this.adLoaded = paramBoolean;
  }

  public void setAdditionalDockingMargin(int paramInt)
  {
    this.additionalDockingMargin = paramInt;
    AdLog.i("LBAdController", "setAdditionalDockingMargin: " + paramInt);
  }

  public void setAsynchTask(boolean paramBoolean)
  {
  }

  public void setCompleted(boolean paramBoolean)
  {
    this.completed = paramBoolean;
  }

  public void setHomeLoaded(boolean paramBoolean)
  {
    this.homeLoaded = paramBoolean;
  }

  public void setLayout(RelativeLayout paramRelativeLayout)
  {
    this.layout = paramRelativeLayout;
  }

  public void setLoading(boolean paramBoolean)
  {
    this.loading = paramBoolean;
  }

  public void setOnAdLoaded(boolean paramBoolean)
  {
    this.onAdLoaded = paramBoolean;
  }

  public void setOnProgressInterval(int paramInt)
  {
    this.progressInterval = paramInt;
  }

  public void setResults(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null)
      return;
    this.results = paramJSONObject;
  }

  public void setSubId(String paramString)
  {
    this.subid = paramString;
  }

  public void setTokens(List<NameValuePair> paramList)
  {
    this.tokens = paramList;
  }

  public void setUseLocation(boolean paramBoolean)
  {
    this.useLocation = paramBoolean;
    AdLog.i("LBAdController", "setUseLocation: " + paramBoolean);
  }

  public void showAd()
  {
    resumeAd();
  }

  public void triggerAdCompleted()
  {
    if (this.listener != null);
    try
    {
      AdLog.i("LBAdController", "onAdCompleted triggered");
      this.listener.onAdCompleted();
      return;
    }
    catch (Exception localException)
    {
      AdLog.e("LBAdController", "error when onAdCompleted triggered");
      AdLog.printStackTrace("LBAdController", localException);
    }
  }

  public void triggerAdFailed()
  {
    AdLog.e("LBAdController", "No Internet connection detected. No Ads loaded");
    if (this.listener != null);
    try
    {
      AdLog.i("LBAdController", "onAdFailed triggered");
      this.listener.onAdFailed();
      this.adLoaded = true;
      return;
    }
    catch (Exception localException)
    {
      AdLog.i("LBAdController", "Error while calling onAdFailed");
      AdLog.printStackTrace("LBAdController", localException);
    }
  }

  class OfferPolling extends TimerTask
  {
    public void run()
    {
      AdController.Polling localPolling = new AdController.Polling(AdController.this, null);
      try
      {
        String[] arrayOfString = new String[1];
        arrayOfString[0] = AdController.this.results.getString("pollurl") + AdController.access$0(AdController.this);
        localPolling.execute(arrayOfString);
        return;
      }
      catch (Exception localException)
      {
      }
    }
  }

  private class PollRequest extends AsyncTask<String, Void, String>
  {
    private String pollRes = null;

    protected String doInBackground(String[] paramArrayOfString)
    {
      AdLog.d("LBAdController", "Initial Poll Started....");
      String str1 = paramArrayOfString[0];
      String str2 = null;
      if (str1 != null);
      try
      {
        HttpResponse localHttpResponse = new DefaultHttpClient().execute(new HttpGet(paramArrayOfString[0] + AdController.this.sectionid));
        if (localHttpResponse.getStatusLine().getStatusCode() == 200)
        {
          HttpEntity localHttpEntity = localHttpResponse.getEntity();
          if (localHttpEntity != null)
          {
            InputStream localInputStream = localHttpEntity.getContent();
            this.pollRes = AdUtilFuncs.convertStreamToString(localInputStream);
            AdLog.d("LBAdController", "Result " + this.pollRes);
            localInputStream.close();
          }
        }
        str2 = this.pollRes;
        return str2;
      }
      catch (Exception localException)
      {
        this.pollRes = null;
      }
    }

    protected void onPostExecute(String paramString)
    {
      super.onPostExecute(paramString);
      if ((paramString == null) || (paramString.trim().equals("0")))
      {
        try
        {
          if (AdController.this.results.getInt("timeopen") > 0)
          {
            int i = 1000 * AdController.this.results.getInt("timeopen");
            AdLog.i("LBAdController", "Tease Time used - ad will load after " + i + "ms");
            new Handler().postDelayed(new Runnable()
            {
              public void run()
              {
                AdLog.i("LBAdController", "Tease Time passed - loading Ad");
                AdController.this.displayAd();
              }
            }
            , i);
            return;
          }
          AdController.this.displayAd();
        }
        catch (Exception localException1)
        {
          AdController.this.displayAd();
        }
      }
      else
      {
        if (!(paramString.trim().equals("1")))
          return;
        AdLog.d("LBAdController", "Going to trigger onAdAlreadyCompleted event");
        if (AdController.this.listener == null)
          return;
        try
        {
          AdLog.i("LBAdController", "onAdAlreadyCompleted triggered");
          AdController.this.listener.onAdAlreadyCompleted();
        }
        catch (Exception localException2)
        {
          AdLog.e("LBAdController", "error when onAdAlreadyCompleted triggered");
          AdLog.printStackTrace("LBAdController", localException2);
        }
      }
    }
  }

  private class Polling extends AsyncTask<String, Void, String>
  {
    protected String doInBackground(String[] paramArrayOfString)
    {
      String str = "0";
      if (paramArrayOfString[0] != null)
        AdLog.d("LBAdController", "Polling...");
      try
      {
        HttpResponse localHttpResponse = new DefaultHttpClient().execute(new HttpGet(paramArrayOfString[0] + AdController.this.sectionid));
        if (localHttpResponse.getStatusLine().getStatusCode() == 200)
        {
          HttpEntity localHttpEntity = localHttpResponse.getEntity();
          if (localHttpEntity != null)
          {
            InputStream localInputStream = localHttpEntity.getContent();
            str = AdUtilFuncs.convertStreamToString(localInputStream);
            AdLog.d("LBAdController", "Polling Result - " + str);
            localInputStream.close();
          }
        }
        return str;
      }
      catch (Exception localException)
      {
      }
    }

    protected void onPostExecute(String paramString)
    {
      if ((AdController.this.loadingDialog != null) && (AdController.this.loadingDialog.isShowing()))
        AdController.this.loadingDialog.dismiss();
      AdController localAdController = AdController.this;
      localAdController.pollCount = (1 + localAdController.pollCount);
      if (paramString.contains("0"))
      {
        try
        {
          if ((AdController.this.pollCount <= AdController.this.pollMax) && (AdController.this.pollCount < AdController.this.pollManual))
          {
            AdController.this.pollingHandler.postDelayed(AdController.this.adPolling, 1000 * AdController.this.results.getInt("pollinterval"));
            return;
          }
          AdController.this.showManualPoll();
        }
        catch (Exception localException2)
        {
        }
      }
      else
      {
        if (!(paramString.contains("1")))
          return;
        AdController.this.completed = true;
        AdController.this.closeUnlocker();
        if (AdController.this.listener == null)
          return;
        try
        {
          AdLog.i("LBAdController", "onAdCompleted triggered");
          AdController.this.listener.onAdCompleted();
        }
        catch (Exception localException1)
        {
          AdLog.e("LBAdController", "error when onAdCompleted triggered");
          AdLog.printStackTrace("LBAdController", localException1);
        }
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.pad.android.iappad.AdController
 * JD-Core Version:    0.5.3
 */