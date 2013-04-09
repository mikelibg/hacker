package com.millennialmedia.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import java.util.Hashtable;

public class MMAdView extends FrameLayout
  implements View.OnClickListener
{
  public static final String BANNER_AD_BOTTOM = "MMBannerAdBottom";
  public static final String BANNER_AD_RECTANGLE = "MMBannerAdRectangle";
  public static final String BANNER_AD_TOP = "MMBannerAdTop";
  public static final String FULLSCREEN_AD_LAUNCH = "MMFullScreenAdLaunch";
  public static final String FULLSCREEN_AD_TRANSITION = "MMFullScreenAdTransition";
  public static final String KEY_AGE = "age";
  public static final String KEY_CHILDREN = "children";
  public static final String KEY_EDUCATION = "education";
  public static final String KEY_ETHNICITY = "ethnicity";
  public static final String KEY_GENDER = "gender";
  public static final String KEY_HEIGHT = "height";
  public static final String KEY_INCOME = "income";
  public static final String KEY_KEYWORDS = "keywords";
  public static final String KEY_LATITUDE = "latitude";
  public static final String KEY_LONGITUDE = "longitude";
  public static final String KEY_MARITAL_STATUS = "marital";
  public static final String KEY_ORIENTATION = "orientation";
  public static final String KEY_POLITICS = "politics";
  public static final String KEY_VENDOR = "vendor";
  public static final String KEY_WIDTH = "width";
  public static final String KEY_ZIP_CODE = "zip";
  public static final int REFRESH_INTERVAL_OFF = -1;
  private static long nextAdViewId = 1L;
  String _goalId;
  boolean accelerate;
  String acid;
  String adType;
  Long adViewId;
  String age;
  String apid;
  String children;
  MMAdViewController controller;
  boolean deferedCallForAd;
  boolean deferedFetch;
  String education;
  String ethnicity;
  String gender;
  String height;
  boolean ignoreDensityScaling;
  String income;
  String keywords;
  String latitude;
  MMAdListener listener;
  Location location;
  String longitude;
  String marital;
  String mxsdk;
  String orientation;
  String politics;
  int refreshInterval;
  boolean testMode;
  String vendor;
  boolean vibrate;
  String width;
  boolean xmlLayout;
  String zip;

  public MMAdView(Activity paramActivity)
  {
    super(paramActivity);
    this.refreshInterval = 60;
    this.apid = "28911";
    this.age = null;
    this.gender = null;
    this.zip = null;
    this.marital = null;
    this.income = null;
    this.keywords = null;
    this.latitude = null;
    this.longitude = null;
    this.ethnicity = null;
    this.orientation = null;
    this.education = null;
    this.children = null;
    this.politics = null;
    this.acid = null;
    this.mxsdk = null;
    this.height = null;
    this.width = null;
    this.vendor = null;
    this.accelerate = true;
    this.vibrate = true;
    this.testMode = false;
    this.xmlLayout = false;
    this.ignoreDensityScaling = false;
    MMAdViewSDK.Log.d("Creating new MMAdView for conversion tracking.");
    checkPermissions(paramActivity);
  }

  public MMAdView(Activity paramActivity, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramActivity, paramAttributeSet, paramInt);
    this.refreshInterval = 60;
    this.apid = "28911";
    this.age = null;
    this.gender = null;
    this.zip = null;
    this.marital = null;
    this.income = null;
    this.keywords = null;
    this.latitude = null;
    this.longitude = null;
    this.ethnicity = null;
    this.orientation = null;
    this.education = null;
    this.children = null;
    this.politics = null;
    this.acid = null;
    this.mxsdk = null;
    this.height = null;
    this.width = null;
    this.vendor = null;
    this.accelerate = true;
    this.vibrate = true;
    this.testMode = false;
    this.xmlLayout = false;
    this.ignoreDensityScaling = false;
    MMAdViewSDK.Log.d("Creating MMAdView from XML layout.");
    if (paramAttributeSet != null)
    {
      this.apid = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "apid");
      this.acid = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "acid");
      this.adType = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "adType");
      this.refreshInterval = paramAttributeSet.getAttributeIntValue("http://millennialmedia.com/android/schema", "refreshInterval", 60);
      this.accelerate = paramAttributeSet.getAttributeBooleanValue("http://millennialmedia.com/android/schema", "accelerate", true);
      this.ignoreDensityScaling = paramAttributeSet.getAttributeBooleanValue("http://millennialmedia.com/android/schema", "ignoreDensityScaling", false);
      this.height = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "height");
      this.width = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "width");
      this.age = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "age");
      this.gender = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "gender");
      this.zip = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "zip");
      this.income = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "income");
      this.keywords = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "keywords");
      this.ethnicity = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "ethnicity");
      this.orientation = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "orientation");
      this.marital = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "marital");
      this.children = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "children");
      this.education = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "education");
      this.politics = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "politics");
      this.vendor = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "vendor");
      this._goalId = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "goalId");
    }
    this.xmlLayout = true;
    init(paramActivity);
  }

  public MMAdView(Activity paramActivity, String paramString1, String paramString2, int paramInt)
  {
    super(paramActivity);
    this.refreshInterval = 60;
    this.apid = "28911";
    this.age = null;
    this.gender = null;
    this.zip = null;
    this.marital = null;
    this.income = null;
    this.keywords = null;
    this.latitude = null;
    this.longitude = null;
    this.ethnicity = null;
    this.orientation = null;
    this.education = null;
    this.children = null;
    this.politics = null;
    this.acid = null;
    this.mxsdk = null;
    this.height = null;
    this.width = null;
    this.vendor = null;
    this.accelerate = true;
    this.vibrate = true;
    this.testMode = false;
    this.xmlLayout = false;
    this.ignoreDensityScaling = false;
    MMAdViewSDK.Log.d("Creating new MMAdView.");
    this.apid = paramString1;
    this.adType = paramString2;
    this.refreshInterval = paramInt;
    init(paramActivity);
  }

  public MMAdView(Activity paramActivity, String paramString1, String paramString2, int paramInt, Hashtable<String, String> paramHashtable)
  {
    super(paramActivity);
    this.refreshInterval = 60;
    this.apid = "28911";
    this.age = null;
    this.gender = null;
    this.zip = null;
    this.marital = null;
    this.income = null;
    this.keywords = null;
    this.latitude = null;
    this.longitude = null;
    this.ethnicity = null;
    this.orientation = null;
    this.education = null;
    this.children = null;
    this.politics = null;
    this.acid = null;
    this.mxsdk = null;
    this.height = null;
    this.width = null;
    this.vendor = null;
    this.accelerate = true;
    this.vibrate = true;
    this.testMode = false;
    this.xmlLayout = false;
    this.ignoreDensityScaling = false;
    MMAdViewSDK.Log.d("Creating new MMAdView.");
    this.apid = paramString1;
    this.adType = paramString2;
    this.refreshInterval = paramInt;
    setMetaValues(paramHashtable);
    init(paramActivity);
  }

  public MMAdView(Activity paramActivity, String paramString1, String paramString2, int paramInt, Hashtable<String, String> paramHashtable, boolean paramBoolean)
  {
    super(paramActivity);
    this.refreshInterval = 60;
    this.apid = "28911";
    this.age = null;
    this.gender = null;
    this.zip = null;
    this.marital = null;
    this.income = null;
    this.keywords = null;
    this.latitude = null;
    this.longitude = null;
    this.ethnicity = null;
    this.orientation = null;
    this.education = null;
    this.children = null;
    this.politics = null;
    this.acid = null;
    this.mxsdk = null;
    this.height = null;
    this.width = null;
    this.vendor = null;
    this.accelerate = true;
    this.vibrate = true;
    this.testMode = false;
    this.xmlLayout = false;
    this.ignoreDensityScaling = false;
    MMAdViewSDK.Log.d("Creating new MMAdView.");
    this.apid = paramString1;
    this.adType = paramString2;
    this.refreshInterval = paramInt;
    setMetaValues(paramHashtable);
    this.accelerate = paramBoolean;
    init(paramActivity);
  }

  public MMAdView(Activity paramActivity, String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    super(paramActivity);
    this.refreshInterval = 60;
    this.apid = "28911";
    this.age = null;
    this.gender = null;
    this.zip = null;
    this.marital = null;
    this.income = null;
    this.keywords = null;
    this.latitude = null;
    this.longitude = null;
    this.ethnicity = null;
    this.orientation = null;
    this.education = null;
    this.children = null;
    this.politics = null;
    this.acid = null;
    this.mxsdk = null;
    this.height = null;
    this.width = null;
    this.vendor = null;
    this.accelerate = true;
    this.vibrate = true;
    this.testMode = false;
    this.xmlLayout = false;
    this.ignoreDensityScaling = false;
    MMAdViewSDK.Log.d("Creating new MMAdView.");
    this.apid = paramString1;
    this.adType = paramString2;
    this.refreshInterval = paramInt;
    this.testMode = paramBoolean;
    init(paramActivity);
  }

  public MMAdView(Activity paramActivity, String paramString1, String paramString2, int paramInt, boolean paramBoolean, Hashtable<String, String> paramHashtable)
  {
    super(paramActivity);
    this.refreshInterval = 60;
    this.apid = "28911";
    this.age = null;
    this.gender = null;
    this.zip = null;
    this.marital = null;
    this.income = null;
    this.keywords = null;
    this.latitude = null;
    this.longitude = null;
    this.ethnicity = null;
    this.orientation = null;
    this.education = null;
    this.children = null;
    this.politics = null;
    this.acid = null;
    this.mxsdk = null;
    this.height = null;
    this.width = null;
    this.vendor = null;
    this.accelerate = true;
    this.vibrate = true;
    this.testMode = false;
    this.xmlLayout = false;
    this.ignoreDensityScaling = false;
    MMAdViewSDK.Log.d("Creating new MMAdView.");
    this.apid = paramString1;
    this.adType = paramString2;
    this.testMode = paramBoolean;
    this.refreshInterval = paramInt;
    setMetaValues(paramHashtable);
    init(paramActivity);
  }

  public MMAdView(Activity paramActivity, String paramString1, String paramString2, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramActivity);
    this.refreshInterval = 60;
    this.apid = "28911";
    this.age = null;
    this.gender = null;
    this.zip = null;
    this.marital = null;
    this.income = null;
    this.keywords = null;
    this.latitude = null;
    this.longitude = null;
    this.ethnicity = null;
    this.orientation = null;
    this.education = null;
    this.children = null;
    this.politics = null;
    this.acid = null;
    this.mxsdk = null;
    this.height = null;
    this.width = null;
    this.vendor = null;
    this.accelerate = true;
    this.vibrate = true;
    this.testMode = false;
    this.xmlLayout = false;
    this.ignoreDensityScaling = false;
    MMAdViewSDK.Log.d("Creating new MMAdView.");
    this.apid = paramString1;
    this.adType = paramString2;
    this.refreshInterval = paramInt;
    this.testMode = paramBoolean1;
    this.accelerate = paramBoolean2;
    init(paramActivity);
  }

  public MMAdView(Activity paramActivity, String paramString1, String paramString2, int paramInt, boolean paramBoolean1, boolean paramBoolean2, Hashtable<String, String> paramHashtable)
  {
    super(paramActivity);
    this.refreshInterval = 60;
    this.apid = "28911";
    this.age = null;
    this.gender = null;
    this.zip = null;
    this.marital = null;
    this.income = null;
    this.keywords = null;
    this.latitude = null;
    this.longitude = null;
    this.ethnicity = null;
    this.orientation = null;
    this.education = null;
    this.children = null;
    this.politics = null;
    this.acid = null;
    this.mxsdk = null;
    this.height = null;
    this.width = null;
    this.vendor = null;
    this.accelerate = true;
    this.vibrate = true;
    this.testMode = false;
    this.xmlLayout = false;
    this.ignoreDensityScaling = false;
    MMAdViewSDK.Log.d("Creating new MMAdView.");
    this.apid = paramString1;
    this.adType = paramString2;
    this.refreshInterval = paramInt;
    this.testMode = paramBoolean1;
    this.accelerate = paramBoolean2;
    setMetaValues(paramHashtable);
    init(paramActivity);
  }

  public MMAdView(Activity paramActivity, String paramString1, String paramString2, boolean paramBoolean, Hashtable<String, String> paramHashtable)
  {
    super(paramActivity);
    this.refreshInterval = 60;
    this.apid = "28911";
    this.age = null;
    this.gender = null;
    this.zip = null;
    this.marital = null;
    this.income = null;
    this.keywords = null;
    this.latitude = null;
    this.longitude = null;
    this.ethnicity = null;
    this.orientation = null;
    this.education = null;
    this.children = null;
    this.politics = null;
    this.acid = null;
    this.mxsdk = null;
    this.height = null;
    this.width = null;
    this.vendor = null;
    this.accelerate = true;
    this.vibrate = true;
    this.testMode = false;
    this.xmlLayout = false;
    this.ignoreDensityScaling = false;
    MMAdViewSDK.Log.d("Creating new MMAdView.");
    this.apid = paramString1;
    this.adType = paramString2;
    this.refreshInterval = -1;
    this.accelerate = paramBoolean;
    setMetaValues(paramHashtable);
    init(paramActivity);
  }

  public MMAdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this((Activity)paramContext, paramAttributeSet, 0);
  }

  private void _callForAd(boolean paramBoolean)
  {
    try
    {
      MMAdViewSDK.Log.d("callForAd");
      if ((getWindowToken() == null) && (this.xmlLayout))
      {
        this.deferedCallForAd = true;
        this.deferedFetch = paramBoolean;
        return;
      }
      if (this.refreshInterval < 0)
      {
        MMAdViewController.assignAdViewController(this);
        if (this.controller != null)
          this.controller.chooseCachedAdOrAdCall(paramBoolean);
      }
      this.deferedCallForAd = false;
      this.deferedFetch = false;
    }
    catch (Exception localException)
    {
      Log.e("MillennialMediaSDK", "There was an exception with the ad request. " + localException.getMessage());
      localException.printStackTrace();
    }
  }

  private static void checkPermissions(Activity paramActivity)
  {
    if (paramActivity.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") == -1)
    {
      AlertDialog localAlertDialog3 = new AlertDialog.Builder(paramActivity).create();
      localAlertDialog3.setTitle("Whoops!");
      localAlertDialog3.setMessage("The developer has forgot to declare the READ_PHONE_STATE permission in the manifest file. Please reach out to the developer to remove this error.");
      localAlertDialog3.setButton(-3, "OK", new DialogInterface.OnClickListener(localAlertDialog3)
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          this.val$phoneStateDialog.cancel();
        }
      });
      localAlertDialog3.show();
    }
    if (paramActivity.checkCallingOrSelfPermission("android.permission.INTERNET") == -1)
    {
      AlertDialog localAlertDialog2 = new AlertDialog.Builder(paramActivity).create();
      localAlertDialog2.setTitle("Whoops!");
      localAlertDialog2.setMessage("The developer has forgot to declare the INTERNET permission in the manifest file. Please reach out to the developer to remove this error.");
      localAlertDialog2.setButton(-3, "OK", new DialogInterface.OnClickListener(localAlertDialog2)
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          this.val$internetDialog.cancel();
        }
      });
      localAlertDialog2.show();
    }
    if (paramActivity.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != -1)
      return;
    AlertDialog localAlertDialog1 = new AlertDialog.Builder(paramActivity).create();
    localAlertDialog1.setTitle("Whoops!");
    localAlertDialog1.setMessage("The developer has forgot to declare the ACCESS_NETWORK_STATE permission in the manifest file. Please reach out to the developer to remove this error.");
    localAlertDialog1.setButton(-3, "OK", new DialogInterface.OnClickListener(localAlertDialog1)
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        this.val$networkStateDialog.cancel();
      }
    });
    localAlertDialog1.show();
  }

  static String[] getAdTypes()
  {
    return new String[] { "MMBannerAdTop", "MMBannerAdBottom", "MMBannerAdRectangle", "MMFullScreenAdLaunch", "MMFullScreenAdTransition" };
  }

  // ERROR //
  private void init(Activity paramActivity)
  {
    // Byte code:
    //   0: ldc_w 340
    //   3: invokestatic 166	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   6: ldc 2
    //   8: monitorenter
    //   9: aload_0
    //   10: new 342	java/lang/Long
    //   13: dup
    //   14: getstatic 101	com/millennialmedia/android/MMAdView:nextAdViewId	J
    //   17: invokespecial 345	java/lang/Long:<init>	(J)V
    //   20: putfield 347	com/millennialmedia/android/MMAdView:adViewId	Ljava/lang/Long;
    //   23: lconst_1
    //   24: getstatic 101	com/millennialmedia/android/MMAdView:nextAdViewId	J
    //   27: ladd
    //   28: putstatic 101	com/millennialmedia/android/MMAdView:nextAdViewId	J
    //   31: new 254	java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial 256	java/lang/StringBuilder:<init>	()V
    //   38: ldc_w 349
    //   41: invokevirtual 262	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: aload_0
    //   45: getfield 347	com/millennialmedia/android/MMAdView:adViewId	Ljava/lang/Long;
    //   48: invokevirtual 352	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   51: invokevirtual 269	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: invokestatic 355	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   57: ldc 2
    //   59: monitorexit
    //   60: aload_1
    //   61: invokestatic 169	com/millennialmedia/android/MMAdView:checkPermissions	(Landroid/app/Activity;)V
    //   64: aload_1
    //   65: ldc_w 357
    //   68: invokevirtual 284	android/app/Activity:checkCallingOrSelfPermission	(Ljava/lang/String;)I
    //   71: iconst_m1
    //   72: if_icmpne +8 -> 80
    //   75: aload_0
    //   76: iconst_0
    //   77: putfield 152	com/millennialmedia/android/MMAdView:vibrate	Z
    //   80: aload_1
    //   81: invokevirtual 361	android/app/Activity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   84: astore 5
    //   86: aload 5
    //   88: new 363	android/content/ComponentName
    //   91: dup
    //   92: aload_1
    //   93: ldc_w 365
    //   96: invokespecial 368	android/content/ComponentName:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   99: sipush 128
    //   102: invokevirtual 374	android/content/pm/PackageManager:getActivityInfo	(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    //   105: pop
    //   106: aload 5
    //   108: new 363	android/content/ComponentName
    //   111: dup
    //   112: aload_1
    //   113: ldc_w 376
    //   116: invokespecial 368	android/content/ComponentName:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   119: sipush 128
    //   122: invokevirtual 374	android/content/pm/PackageManager:getActivityInfo	(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    //   125: pop
    //   126: aload_0
    //   127: iconst_0
    //   128: invokevirtual 380	com/millennialmedia/android/MMAdView:setBackgroundColor	(I)V
    //   131: aload_0
    //   132: aload_0
    //   133: invokevirtual 384	com/millennialmedia/android/MMAdView:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   136: aload_0
    //   137: iconst_1
    //   138: invokevirtual 387	com/millennialmedia/android/MMAdView:setFocusable	(Z)V
    //   141: aload_0
    //   142: ldc_w 388
    //   145: invokevirtual 391	com/millennialmedia/android/MMAdView:setDescendantFocusability	(I)V
    //   148: aload_0
    //   149: getfield 112	com/millennialmedia/android/MMAdView:apid	Ljava/lang/String;
    //   152: ifnonnull +257 -> 409
    //   155: ldc 252
    //   157: ldc_w 393
    //   160: invokestatic 275	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   163: pop
    //   164: ldc 110
    //   166: putstatic 396	com/millennialmedia/android/HandShake:apid	Ljava/lang/String;
    //   169: aload_1
    //   170: invokestatic 400	com/millennialmedia/android/HandShake:sharedHandShake	(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;
    //   173: aload_0
    //   174: invokevirtual 403	com/millennialmedia/android/HandShake:overrideAdRefresh	(Lcom/millennialmedia/android/MMAdView;)V
    //   177: aload_0
    //   178: getfield 188	com/millennialmedia/android/MMAdView:adType	Ljava/lang/String;
    //   181: ldc 22
    //   183: if_acmpeq +12 -> 195
    //   186: aload_0
    //   187: getfield 188	com/millennialmedia/android/MMAdView:adType	Ljava/lang/String;
    //   190: ldc 19
    //   192: if_acmpne +25 -> 217
    //   195: aload_0
    //   196: getfield 108	com/millennialmedia/android/MMAdView:refreshInterval	I
    //   199: iconst_m1
    //   200: if_icmpeq +17 -> 217
    //   203: ldc 252
    //   205: ldc_w 405
    //   208: invokestatic 408	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   211: pop
    //   212: aload_0
    //   213: iconst_m1
    //   214: putfield 108	com/millennialmedia/android/MMAdView:refreshInterval	I
    //   217: return
    //   218: astore 4
    //   220: ldc 2
    //   222: monitorexit
    //   223: aload 4
    //   225: athrow
    //   226: astore_2
    //   227: ldc 252
    //   229: new 254	java/lang/StringBuilder
    //   232: dup
    //   233: invokespecial 256	java/lang/StringBuilder:<init>	()V
    //   236: ldc_w 410
    //   239: invokevirtual 262	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   242: aload_2
    //   243: invokevirtual 266	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   246: invokevirtual 262	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   249: invokevirtual 269	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   252: invokestatic 275	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   255: pop
    //   256: aload_2
    //   257: invokevirtual 278	java/lang/Exception:printStackTrace	()V
    //   260: goto -43 -> 217
    //   263: astore 6
    //   265: ldc 252
    //   267: ldc_w 412
    //   270: invokestatic 275	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   273: pop
    //   274: aload 6
    //   276: invokevirtual 413	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   279: new 286	android/app/AlertDialog$Builder
    //   282: dup
    //   283: aload_1
    //   284: invokespecial 287	android/app/AlertDialog$Builder:<init>	(Landroid/content/Context;)V
    //   287: invokevirtual 291	android/app/AlertDialog$Builder:create	()Landroid/app/AlertDialog;
    //   290: astore 8
    //   292: aload 8
    //   294: ldc_w 293
    //   297: invokevirtual 299	android/app/AlertDialog:setTitle	(Ljava/lang/CharSequence;)V
    //   300: aload 8
    //   302: ldc_w 415
    //   305: invokevirtual 304	android/app/AlertDialog:setMessage	(Ljava/lang/CharSequence;)V
    //   308: aload 8
    //   310: bipush 253
    //   312: ldc_w 306
    //   315: new 417	com/millennialmedia/android/MMAdView$1
    //   318: dup
    //   319: aload_0
    //   320: aload 8
    //   322: invokespecial 420	com/millennialmedia/android/MMAdView$1:<init>	(Lcom/millennialmedia/android/MMAdView;Landroid/app/AlertDialog;)V
    //   325: invokevirtual 315	android/app/AlertDialog:setButton	(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    //   328: aload 8
    //   330: invokevirtual 318	android/app/AlertDialog:show	()V
    //   333: goto -227 -> 106
    //   336: astore 9
    //   338: ldc 252
    //   340: ldc_w 422
    //   343: invokestatic 275	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   346: pop
    //   347: aload 9
    //   349: invokevirtual 413	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   352: new 286	android/app/AlertDialog$Builder
    //   355: dup
    //   356: aload_1
    //   357: invokespecial 287	android/app/AlertDialog$Builder:<init>	(Landroid/content/Context;)V
    //   360: invokevirtual 291	android/app/AlertDialog$Builder:create	()Landroid/app/AlertDialog;
    //   363: astore 11
    //   365: aload 11
    //   367: ldc_w 293
    //   370: invokevirtual 299	android/app/AlertDialog:setTitle	(Ljava/lang/CharSequence;)V
    //   373: aload 11
    //   375: ldc_w 424
    //   378: invokevirtual 304	android/app/AlertDialog:setMessage	(Ljava/lang/CharSequence;)V
    //   381: aload 11
    //   383: bipush 253
    //   385: ldc_w 306
    //   388: new 426	com/millennialmedia/android/MMAdView$2
    //   391: dup
    //   392: aload_0
    //   393: aload 11
    //   395: invokespecial 427	com/millennialmedia/android/MMAdView$2:<init>	(Lcom/millennialmedia/android/MMAdView;Landroid/app/AlertDialog;)V
    //   398: invokevirtual 315	android/app/AlertDialog:setButton	(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    //   401: aload 11
    //   403: invokevirtual 318	android/app/AlertDialog:show	()V
    //   406: goto -280 -> 126
    //   409: aload_0
    //   410: getfield 112	com/millennialmedia/android/MMAdView:apid	Ljava/lang/String;
    //   413: putstatic 396	com/millennialmedia/android/HandShake:apid	Ljava/lang/String;
    //   416: goto -247 -> 169
    //
    // Exception table:
    //   from	to	target	type
    //   9	60	218	finally
    //   220	223	218	finally
    //   0	9	226	java/lang/Exception
    //   60	86	226	java/lang/Exception
    //   86	106	226	java/lang/Exception
    //   106	126	226	java/lang/Exception
    //   126	217	226	java/lang/Exception
    //   223	226	226	java/lang/Exception
    //   265	416	226	java/lang/Exception
    //   86	106	263	android/content/pm/PackageManager$NameNotFoundException
    //   106	126	336	android/content/pm/PackageManager$NameNotFoundException
  }

  // ERROR //
  public static void startConversionTrackerWithGoalId(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +14 -> 15
    //   4: aload_1
    //   5: ifnull +10 -> 15
    //   8: aload_1
    //   9: invokevirtual 432	java/lang/String:length	()I
    //   12: ifne +4 -> 16
    //   15: return
    //   16: aload_0
    //   17: monitorenter
    //   18: aload_0
    //   19: ldc_w 434
    //   22: iconst_0
    //   23: invokevirtual 440	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   26: astore_3
    //   27: aload_3
    //   28: new 254	java/lang/StringBuilder
    //   31: dup
    //   32: invokespecial 256	java/lang/StringBuilder:<init>	()V
    //   35: ldc_w 442
    //   38: invokevirtual 262	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: aload_1
    //   42: invokevirtual 262	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 269	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: iconst_1
    //   49: invokeinterface 448 3 0
    //   54: istore 4
    //   56: iload 4
    //   58: ifeq +48 -> 106
    //   61: aload_3
    //   62: invokeinterface 452 1 0
    //   67: astore 7
    //   69: aload 7
    //   71: new 254	java/lang/StringBuilder
    //   74: dup
    //   75: invokespecial 256	java/lang/StringBuilder:<init>	()V
    //   78: ldc_w 442
    //   81: invokevirtual 262	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: aload_1
    //   85: invokevirtual 262	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: invokevirtual 269	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   91: iconst_0
    //   92: invokeinterface 458 3 0
    //   97: pop
    //   98: aload 7
    //   100: invokeinterface 462 1 0
    //   105: pop
    //   106: aload_0
    //   107: checkcast 223	android/app/Activity
    //   110: invokestatic 169	com/millennialmedia/android/MMAdView:checkPermissions	(Landroid/app/Activity;)V
    //   113: aload_0
    //   114: invokestatic 468	com/millennialmedia/android/MMAdViewSDK:getHdid	(Landroid/content/Context;)Ljava/lang/String;
    //   117: astore 5
    //   119: aload_0
    //   120: invokestatic 472	com/millennialmedia/android/MMAdViewSDK:isConnected	(Landroid/content/Context;)Z
    //   123: ifeq +28 -> 151
    //   126: new 474	com/millennialmedia/android/MMAdView$7
    //   129: dup
    //   130: aload_1
    //   131: aload 5
    //   133: iload 4
    //   135: invokespecial 477	com/millennialmedia/android/MMAdView$7:<init>	(Ljava/lang/String;Ljava/lang/String;Z)V
    //   138: invokevirtual 482	java/lang/Thread:start	()V
    //   141: aload_0
    //   142: monitorexit
    //   143: goto -128 -> 15
    //   146: astore_2
    //   147: aload_0
    //   148: monitorexit
    //   149: aload_2
    //   150: athrow
    //   151: ldc 252
    //   153: ldc_w 484
    //   156: invokestatic 408	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   159: pop
    //   160: goto -19 -> 141
    //
    // Exception table:
    //   from	to	target	type
    //   18	149	146	finally
    //   151	160	146	finally
  }

  public void callForAd()
  {
    _callForAd(false);
  }

  public boolean check()
  {
    int i;
    try
    {
      MMAdViewController localMMAdViewController = this.controller;
      i = 0;
      if (localMMAdViewController != null)
      {
        boolean bool = this.controller.check(this);
        i = bool;
      }
      return i;
    }
    catch (Exception localException)
    {
      Log.e("MillennialMediaSDK", "There was an exception checking for a cached ad. " + localException.getMessage());
      localException.printStackTrace();
      i = 0;
    }
  }

  public boolean display()
  {
    int i;
    try
    {
      MMAdViewController localMMAdViewController = this.controller;
      i = 0;
      if (localMMAdViewController != null)
      {
        boolean bool = this.controller.display(this);
        i = bool;
      }
      return i;
    }
    catch (Exception localException)
    {
      Log.e("MillennialMediaSDK", "There was an exception displaying a cached ad. " + localException.getMessage());
      localException.printStackTrace();
      i = 0;
    }
  }

  public void fetch()
  {
    if (check())
    {
      MMAdViewSDK.Log.d("Ad already fetched and ready for display...");
      if (this.listener == null);
    }
    try
    {
      this.listener.MMAdFailed(this);
      label30: return;
    }
    catch (Exception localException)
    {
      Log.w("MillennialMediaSDK", "Exception raised in your MMAdListener: " + localException.getMessage());
      break label30:
      MMAdViewSDK.Log.d("Fetching new ad...");
      _callForAd(true);
    }
  }

  public MMAdListener getListener()
  {
    return this.listener;
  }

  public void halt()
  {
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    MMAdViewSDK.Log.d("onAttachedToWindow");
    MMAdViewController.assignAdViewController(this);
    if (!(this.deferedCallForAd))
      return;
    _callForAd(this.deferedFetch);
  }

  public void onClick(View paramView)
  {
    onTouchEvent(MotionEvent.obtain(0L, System.currentTimeMillis(), 1, 0.0F, 0.0F, 0));
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    MMAdViewSDK.Log.d("onDetachedFromWindow");
    MMAdViewController.removeAdViewController(this, false);
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return true;
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    Bundle localBundle = (Bundle)paramParcelable;
    MMAdViewSDK.Log.d("onRestoreInstanceState");
    this.adViewId = new Long(localBundle.getLong("MMAdView"));
    super.onRestoreInstanceState(localBundle.getParcelable("super"));
  }

  protected Parcelable onSaveInstanceState()
  {
    MMAdViewSDK.Log.d("onSaveInstanceState");
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("super", super.onSaveInstanceState());
    localBundle.putLong("MMAdView", this.adViewId.longValue());
    return localBundle;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    MMAdViewSDK.Log.v(paramMotionEvent.toString());
    if ((this.controller == null) || (!(isClickable())));
    while (true)
    {
      return true;
      if (i != 1)
        continue;
      MMAdViewSDK.Log.v("Ad clicked: action=" + i + " x=" + paramMotionEvent.getX() + " y=" + paramMotionEvent.getY());
      if ((this.controller.nextUrl.startsWith("mmvideo")) || (this.controller.nextUrl.endsWith("content.once")))
        this.controller.shouldLaunchToOverlay = true;
      if (this.controller.shouldLaunchToOverlay == true)
      {
        if (this.listener != null);
        try
        {
          this.listener.MMAdClickedToOverlay(this);
          label150: if (this.controller.nextUrl == null)
            break label193;
          label193: this.controller.handleClick(this.controller.nextUrl);
        }
        catch (Exception localException2)
        {
          Log.w("MillennialMediaSDK", "Exception raised in your MMAdListener: ", localException2);
          break label150:
          Log.e("MillennialMediaSDK", "No ad returned, no overlay launched");
        }
      }
      Activity localActivity;
      if (this.controller.nextUrl != null)
      {
        MMAdViewSDK.Log.d("Ad clicked, launching new browser");
        localActivity = (Activity)getContext();
        if (localActivity == null)
          Log.e("MillennialMediaSDK", "The reference to the ad view was broken.");
      }
      try
      {
        while (true)
        {
          Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(this.controller.nextUrl));
          localIntent.setFlags(603979776);
          localActivity.startActivity(localIntent);
          label285: if (this.listener != null);
          try
          {
            this.listener.MMAdClickedToNewBrowser(this);
          }
          catch (Exception localException1)
          {
            Log.w("MillennialMediaSDK", "Exception raised in your MMAdListener: ", localException1);
          }
        }
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        MMAdViewSDK.Log.d("Could not find activity for: " + this.controller.nextUrl);
        break label285:
        Log.e("MillennialMediaSDK", "No ad returned, no new browser launched");
      }
    }
  }

  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    if (this.controller != null)
    {
      if (paramInt != 0)
        break label59;
      this.controller.resumeTimer(false);
    }
    while (true)
    {
      StringBuilder localStringBuilder = new StringBuilder().append("Window Visibility Changed. Window is visible?: ");
      boolean bool = false;
      if (paramInt == 0)
        bool = true;
      MMAdViewSDK.Log.d(Boolean.toString(bool));
      return;
      label59: this.controller.pauseTimer(false);
    }
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (this.controller != null)
    {
      if (!(paramBoolean))
        break label76;
      this.controller.resumeTimer(false);
    }
    while (true)
    {
      MMAdViewSDK.Log.d("Window Focus Changed. Window in focus?: " + paramBoolean);
      if (!(paramBoolean))
      {
        Activity localActivity = (Activity)getContext();
        if ((localActivity == null) || (localActivity.isFinishing()))
          MMAdViewController.removeAdViewController(this, true);
      }
      return;
      label76: this.controller.pauseTimer(false);
    }
  }

  public void pause()
  {
    if (this.controller == null)
      return;
    this.controller.pauseTimer(true);
  }

  public void resume()
  {
    if (this.controller == null)
      return;
    this.controller.resumeTimer(true);
  }

  public void setAcid(String paramString)
  {
    this.acid = paramString;
  }

  public void setAdType(String paramString)
  {
    this.adType = paramString;
  }

  public void setAge(String paramString)
  {
    this.age = paramString;
  }

  public void setApid(String paramString)
  {
    this.apid = paramString;
  }

  public void setEducation(String paramString)
  {
    this.education = paramString;
  }

  public void setEthnicity(String paramString)
  {
    this.ethnicity = paramString;
  }

  public void setGender(String paramString)
  {
    this.gender = paramString;
  }

  public void setHeight(String paramString)
  {
    this.height = paramString;
  }

  public void setIgnoresDensityScaling(boolean paramBoolean)
  {
    monitorenter;
    try
    {
      this.ignoreDensityScaling = paramBoolean;
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  public void setIncome(String paramString)
  {
    this.income = paramString;
  }

  public void setLatitude(String paramString)
  {
    this.latitude = paramString;
  }

  public void setListener(MMAdListener paramMMAdListener)
  {
    monitorenter;
    try
    {
      this.listener = paramMMAdListener;
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  public void setLongitude(String paramString)
  {
    this.longitude = paramString;
  }

  public void setMarital(String paramString)
  {
    this.marital = paramString;
  }

  public void setMetaValues(Hashtable<String, String> paramHashtable)
  {
    if (paramHashtable == null);
    while (true)
    {
      return;
      if (paramHashtable.containsKey("age"))
        this.age = ((String)paramHashtable.get("age"));
      if (paramHashtable.containsKey("gender"))
        this.gender = ((String)paramHashtable.get("gender"));
      if (paramHashtable.containsKey("zip"))
        this.zip = ((String)paramHashtable.get("zip"));
      if (paramHashtable.containsKey("marital"))
        this.marital = ((String)paramHashtable.get("marital"));
      if (paramHashtable.containsKey("income"))
        this.income = ((String)paramHashtable.get("income"));
      if (paramHashtable.containsKey("keywords"))
        this.keywords = ((String)paramHashtable.get("keywords"));
      if (paramHashtable.containsKey("mmacid"))
        this.acid = ((String)paramHashtable.get("mmacid"));
      if (paramHashtable.containsKey("mxsdk"))
        this.mxsdk = ((String)paramHashtable.get("mxsdk"));
      if (paramHashtable.containsKey("height"))
        this.height = ((String)paramHashtable.get("height"));
      if (paramHashtable.containsKey("width"))
        this.width = ((String)paramHashtable.get("width"));
      if (paramHashtable.containsKey("ethnicity"))
        this.ethnicity = ((String)paramHashtable.get("ethnicity"));
      if (paramHashtable.containsKey("orientation"))
        this.orientation = ((String)paramHashtable.get("orientation"));
      if (paramHashtable.containsKey("education"))
        this.education = ((String)paramHashtable.get("education"));
      if (paramHashtable.containsKey("children"))
        this.children = ((String)paramHashtable.get("children"));
      if (paramHashtable.containsKey("politics"))
        this.politics = ((String)paramHashtable.get("politics"));
      if (!(paramHashtable.containsKey("vendor")))
        continue;
      this.vendor = ((String)paramHashtable.get("vendor"));
    }
  }

  public void setMxsdk(String paramString)
  {
    this.mxsdk = paramString;
  }

  public void setOrientation(String paramString)
  {
    this.orientation = paramString;
  }

  public void setPolitics(String paramString)
  {
    this.politics = paramString;
  }

  public void setVendor(String paramString)
  {
    this.vendor = paramString;
  }

  public void setWidth(String paramString)
  {
    this.width = paramString;
  }

  public void setZip(String paramString)
  {
    this.zip = paramString;
  }

  public void startConversionTrackerWithGoalId(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0));
    while (true)
    {
      return;
      this._goalId = paramString;
      SharedPreferences localSharedPreferences = getContext().getSharedPreferences("MillennialMediaSettings", 0);
      boolean bool = localSharedPreferences.getBoolean("firstLaunch_" + this._goalId, true);
      if (bool)
      {
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        localEditor.putBoolean("firstLaunch_" + this._goalId, false);
        localEditor.commit();
      }
      if (MMAdViewSDK.isConnected(getContext()))
        new Thread(MMAdViewSDK.getAuidOrHdid(getContext()), bool)
        {
          public void run()
          {
            HttpGetRequest localHttpGetRequest = new HttpGetRequest();
            try
            {
              localHttpGetRequest.trackConversion(MMAdView.this._goalId, this.val$auid, this.val$isFirstLaunch);
              return;
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
            }
          }
        }
        .start();
      Log.w("MillennialMediaSDK", "No network available for conversion tracking.");
    }
  }

  public void updateUserLocation(Location paramLocation)
  {
    if (paramLocation == null);
    while (true)
    {
      return;
      this.latitude = String.valueOf(paramLocation.getLatitude());
      this.longitude = String.valueOf(paramLocation.getLongitude());
      this.location = paramLocation;
    }
  }

  public static abstract interface MMAdListener
  {
    public abstract void MMAdCachingCompleted(MMAdView paramMMAdView, boolean paramBoolean);

    public abstract void MMAdClickedToNewBrowser(MMAdView paramMMAdView);

    public abstract void MMAdClickedToOverlay(MMAdView paramMMAdView);

    public abstract void MMAdFailed(MMAdView paramMMAdView);

    public abstract void MMAdOverlayLaunched(MMAdView paramMMAdView);

    public abstract void MMAdRequestIsCaching(MMAdView paramMMAdView);

    public abstract void MMAdReturned(MMAdView paramMMAdView);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMAdView
 * JD-Core Version:    0.5.3
 */