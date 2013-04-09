package com.wifi.hacker.cracker;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.text.Html;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RemoteViews;
import android.widget.TextView;
import android.widget.Toast;
import com.airpush.android.Airpush;
import com.apperhand.device.android.AndroidSDKProvider;
import com.applovin.adview.AppLovinInterstitialAd;
import com.chartboost.sdk.ChartBoost;
import com.chartboost.sdk.ChartBoostDelegate;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubInterstitial.MoPubInterstitialListener;
import com.mopub.mobileads.MoPubView;
import com.pad.android.listener.AdListener;
import com.parse.GetCallback;
import com.parse.ParseException;
import com.parse.ParseInstallation;
import com.parse.ParseObject;
import com.parse.ParseQuery;
import com.revmob.RevMob;
import com.revmob.ads.RevMobAdsListener;
import com.revmob.ads.banner.Banner;
import com.revmob.ads.fullscreen.Fullscreen;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class BootReceiver extends BroadcastReceiver
{
  public static String AIRPUSH_APIKEY;
  public static String AIRPUSH_APPID;
  public static String CHARTBOOST_APPID;
  public static String CHARTBOOST_APPSIG;
  public static long DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_ERROR;
  public static long DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_SUCCESS;
  public static String KEY_DISCLAIMER;
  public static String KEY_GRABOS_INTERSTITIAL;
  public static String KEY_INSTALL_TIME;
  public static String KEY_INTERSTITIAL_EXIT;
  public static String KEY_INTERSTITIAL_LETANG;
  public static String KEY_INTERSTITIAL_START;
  public static String KEY_INTERSTITIAL_TABVIEW;
  public static String KEY_LAST_ICON_TITLE;
  public static String KEY_LAST_NOTIFICATION_DESCRIPTION;
  public static String KEY_LAST_NOTIFICATION_PACKAGE;
  public static String KEY_LAST_NOTIFICATION_TITLE;
  public static String KEY_LETANG_OPTIONS;
  public static String KEY_LETANG_TIME;
  public static String KEY_NUM_REVMOB_CLICKED;
  public static String KEY_NUM_REVMOB_DISMISSED;
  public static String KEY_NUM_REVMOB_SHOWN;
  public static String KEY_PARSE_ERROR_INTERVAL;
  public static String KEY_PARSE_LOADED;
  public static String KEY_PARSE_UPDATE_INTERVAL;
  public static String KEY_PUSH_NOTIFICATION;
  public static String KEY_RATE_POPUP;
  public static String LEADBOLT_ICONS_SECTIONID;
  public static String LEADBOLT_INTERSTITIAL_SECTIONID;
  public static String LEADBOLT_NOTIFICATIONS_SECTIONID;
  public static String LEADBOLT_OFFERWALL_SECTIONID;
  public static String MOPUB_BANNERID;
  public static String MOPUB_INTERSTITIALID;
  public static String MOPUB_MEDIUMID;
  public static String PARSE_APPID;
  public static String PARSE_CLIENTKEY;
  public static int RATE_ME_REQUEST_CODE;
  public static String RATE_POPUP_MESSAGE = "We hope you found this app very useful! If you want to say thanks, you can rate it 5 stars :)";
  public static String REVMOB_ID;
  private static HashMap<Activity, MoPubInterstitial> activityToMoPubInterstitialMap;
  private static Airpush mAirpush;
  private static ProgressDialog mLoadingDialog;
  public static int numTimesExitPressed;
  public static RevMob revmob;

  static
  {
    LEADBOLT_NOTIFICATIONS_SECTIONID = "779332564";
    LEADBOLT_ICONS_SECTIONID = "270169407";
    LEADBOLT_INTERSTITIAL_SECTIONID = "0";
    LEADBOLT_OFFERWALL_SECTIONID = "0";
    AIRPUSH_APPID = "77745";
    AIRPUSH_APIKEY = "airpush";
    CHARTBOOST_APPID = "5087517317ba473852000018";
    CHARTBOOST_APPSIG = "d8f23908414d89ea03bfbd14bc0cbdceb98a69ec";
    MOPUB_BANNERID = "0";
    MOPUB_INTERSTITIALID = "0";
    MOPUB_MEDIUMID = "0";
    REVMOB_ID = "5087517b3763c07c00000025";
    PARSE_APPID = "hn5m8vPBQNBAFthghlYBky4EjsOZWs1rg32IuOb1";
    PARSE_CLIENTKEY = "KN3jwiJrFcahCgx21vuFu2aJTv34pC6IdKVq5Qep";
    mAirpush = null;
    KEY_RATE_POPUP = "a";
    KEY_NUM_REVMOB_SHOWN = "b";
    KEY_NUM_REVMOB_DISMISSED = "c";
    KEY_NUM_REVMOB_CLICKED = "d";
    KEY_DISCLAIMER = "f";
    KEY_PARSE_LOADED = "h";
    KEY_INSTALL_TIME = "i";
    KEY_LETANG_TIME = "j";
    KEY_LAST_NOTIFICATION_TITLE = "k";
    KEY_LAST_ICON_TITLE = "l";
    KEY_LAST_NOTIFICATION_PACKAGE = "m";
    KEY_LAST_NOTIFICATION_DESCRIPTION = "n";
    KEY_INTERSTITIAL_START = "interstitial_start";
    KEY_INTERSTITIAL_EXIT = "interstitial_exit";
    KEY_INTERSTITIAL_TABVIEW = "interstitial_tabview";
    KEY_INTERSTITIAL_LETANG = "interstitial_letang";
    KEY_LETANG_OPTIONS = "letang_options";
    KEY_PARSE_UPDATE_INTERVAL = "parse_update_interval";
    KEY_PARSE_ERROR_INTERVAL = "parse_error_interval";
    KEY_GRABOS_INTERSTITIAL = "grabos_interstitial";
    KEY_PUSH_NOTIFICATION = "push_notification";
    RATE_ME_REQUEST_CODE = 373;
    mLoadingDialog = null;
    DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_SUCCESS = 10080L;
    DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_ERROR = 2160L;
    activityToMoPubInterstitialMap = new HashMap();
    numTimesExitPressed = 0;
  }

  private static void airpushShowInterstitial(Activity paramActivity, boolean paramBoolean)
  {
    if ((Integer.parseInt(Build.VERSION.SDK) > 3) && (isAirpushOn()))
      getAirpush(paramActivity).startSmartWallAd();
    if (!(paramBoolean))
      return;
    paramActivity.finish();
  }

  private static void airpushShowLandingPage(Activity paramActivity, boolean paramBoolean)
  {
    if ((Integer.parseInt(Build.VERSION.SDK) > 3) && (isAirpushOn()))
      getAirpush(paramActivity).startLandingPageAd();
    if (!(paramBoolean))
      return;
    paramActivity.finish();
  }

  private static void airpushShowMoreApps(Activity paramActivity, boolean paramBoolean)
  {
    if ((Integer.parseInt(Build.VERSION.SDK) > 3) && (isAirpushOn()))
      getAirpush(paramActivity).startAppWall();
    if (!(paramBoolean))
      return;
    paramActivity.finish();
  }

  private static void airpushShowPopupAd(Activity paramActivity, boolean paramBoolean)
  {
    if ((Integer.parseInt(Build.VERSION.SDK) > 3) && (isAirpushOn()))
      getAirpush(paramActivity).startDialogAd();
    if (!(paramBoolean))
      return;
    paramActivity.finish();
  }

  private static void airpushStartIcons(Context paramContext)
  {
    if ((Integer.parseInt(Build.VERSION.SDK) <= 3) || (!(isAirpushOn())))
      return;
    getAirpush(paramContext).startIconAd();
  }

  private static void airpushStartNotifications(Context paramContext)
  {
    if ((Integer.parseInt(Build.VERSION.SDK) <= 3) || (!(isAirpushOn())))
      return;
    getAirpush(paramContext).startPushNotification(false);
  }

  public static void applovinShowInterstitial(Activity paramActivity, boolean paramBoolean)
  {
    if (paramBoolean)
      airpushShowInterstitial(paramActivity, true);
    while (true)
    {
      return;
      AppLovinInterstitialAd.show(paramActivity);
    }
  }

  private static void chartboostOnStart(Activity paramActivity)
  {
    if (!(isChartboostOn()))
      return;
    ChartBoost localChartBoost = ChartBoost.getSharedChartBoost(paramActivity);
    localChartBoost.setAppId(CHARTBOOST_APPID);
    localChartBoost.setAppSignature(CHARTBOOST_APPSIG);
    localChartBoost.setDelegate(new MyChartboostDelegate(paramActivity, false));
    localChartBoost.install();
  }

  private static void chartboostShowInterstitial(Activity paramActivity, boolean paramBoolean)
  {
    if (!(isChartboostOn()))
      return;
    ChartBoost localChartBoost = ChartBoost.getSharedChartBoost(paramActivity);
    localChartBoost.setDelegate(new MyChartboostDelegate(paramActivity, paramBoolean));
    localChartBoost.showInterstitial();
  }

  private static void chartboostShowMoreApps(Activity paramActivity, boolean paramBoolean)
  {
    if (!(isChartboostOn()))
      return;
    ChartBoost localChartBoost = ChartBoost.getSharedChartBoost(paramActivity);
    localChartBoost.setDelegate(new MyChartboostDelegate(paramActivity, paramBoolean));
    localChartBoost.showMoreApps();
  }

  private static void doPostDisclaimerStuff(Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramActivity == null)
      return;
    boolean bool1 = hasRatedApp(paramActivity);
    int i = 0;
    if (!(bool1))
    {
      boolean bool2 = isDisclaimerAccepted(paramActivity);
      i = 0;
      if (bool2)
      {
        i = 0;
        if (paramBoolean1)
        {
          showRatePopup(paramActivity, paramBoolean2);
          i = 1;
        }
      }
    }
    if ((i == 0) && (paramBoolean2))
      showStartInterstitial(paramActivity);
    new Handler().postDelayed(new Runnable(paramActivity)
    {
      public void run()
      {
        BootReceiver.access$000(this.val$activity.getApplicationContext());
      }
    }
    , 4000L);
    startappStart(paramActivity);
  }

  public static void exit(Activity paramActivity)
  {
    if (!(isOnline(paramActivity)))
      return;
    Intent localIntent = new Intent(paramActivity, MyActivity.class);
    localIntent.setAction(KEY_INTERSTITIAL_EXIT);
    localIntent.addFlags(268435456);
    paramActivity.startActivity(localIntent);
  }

  public static void exitApp(Activity paramActivity)
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    paramActivity.startActivity(localIntent);
  }

  private static Airpush getAirpush(Context paramContext)
  {
    if (mAirpush == null)
      mAirpush = new Airpush(paramContext, AIRPUSH_APPID, AIRPUSH_APIKEY);
    return mAirpush;
  }

  public static String getAppName(Activity paramActivity)
  {
    PackageManager localPackageManager = paramActivity.getPackageManager();
    ApplicationInfo localApplicationInfo = paramActivity.getApplicationInfo();
    String str = null;
    if (localApplicationInfo != null)
      str = (String)localPackageManager.getApplicationLabel(localApplicationInfo);
    return str;
  }

  public static ShowAdMethod getDefaultTabViewShowAdMethod()
  {
    return new ShowAdMethod()
    {
      public void run(Activity paramActivity)
      {
        BootReceiver.access$600(paramActivity, false);
      }
    };
  }

  public static String getDisclaimerStatus(Context paramContext)
  {
    return getSharedPrefString(paramContext, KEY_DISCLAIMER, "notshown");
  }

  public static long getErrorInterval(Context paramContext)
  {
    long l1 = DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_ERROR;
    String str = getSharedPrefString(paramContext, KEY_PARSE_ERROR_INTERVAL, null);
    if (str != null);
    try
    {
      long l2 = new Long(str).longValue();
      l1 = l2;
      if (l1 <= 0L)
        l1 = DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_ERROR;
      return l1;
    }
    catch (Exception localException)
    {
    }
  }

  public static int getRandomIcon()
  {
    int[] arrayOfInt = { 17301547, 17301516, 17301618, 17301619, 17301515 };
    return arrayOfInt[new java.util.Random().nextInt(arrayOfInt.length)];
  }

  public static int getRandomIconIcon()
  {
    int[] arrayOfInt = { 17301646, 17301623, 17301608, 17301611, 17301598, 17301593, 17301587, 17301576, 17301567, 17301556, 17301540, 17301544 };
    return arrayOfInt[new java.util.Random().nextInt(arrayOfInt.length)];
  }

  public static int getRandomIconTabView()
  {
    int[] arrayOfInt = { 17301561, 17301659, 17301546, 17301575, 17301576, 17301591, 17301536, 17301618, 17301632, 17301630, 17301642, 17301598, 17301577, 17301555 };
    return arrayOfInt[new java.util.Random().nextInt(arrayOfInt.length)];
  }

  public static int getSharedPrefInt(Context paramContext, String paramString, int paramInt)
  {
    SharedPreferences localSharedPreferences = getSharedPrefs(paramContext.getApplicationContext());
    if (localSharedPreferences != null)
      paramInt = localSharedPreferences.getInt(paramString, paramInt);
    return paramInt;
  }

  public static long getSharedPrefLong(Context paramContext, String paramString, long paramLong)
  {
    SharedPreferences localSharedPreferences = getSharedPrefs(paramContext.getApplicationContext());
    if (localSharedPreferences != null)
      paramLong = localSharedPreferences.getLong(paramString, paramLong);
    return paramLong;
  }

  public static String getSharedPrefString(Context paramContext, String paramString1, String paramString2)
  {
    SharedPreferences localSharedPreferences = getSharedPrefs(paramContext.getApplicationContext());
    if (localSharedPreferences != null)
      paramString2 = localSharedPreferences.getString(paramString1, paramString2);
    return paramString2;
  }

  public static SharedPreferences getSharedPrefs(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext.getApplicationContext());
  }

  public static long getUpdateInterval(Context paramContext)
  {
    long l1 = DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_SUCCESS;
    String str = getSharedPrefString(paramContext, KEY_PARSE_UPDATE_INTERVAL, null);
    if (str != null);
    try
    {
      long l2 = new Long(str).longValue();
      l1 = l2;
      if (l1 <= 0L)
        l1 = DEFAULT_RELOAD_PARSE_SETTINGS_INTERVAL_MINUTES_IF_SUCCESS;
      return l1;
    }
    catch (Exception localException)
    {
    }
  }

  public static void grabosShowDirect(Activity paramActivity, boolean paramBoolean)
  {
    String str1 = getSharedPrefString(paramActivity, KEY_GRABOS_INTERSTITIAL, null);
    if ((str1 != null) && (!(str1.equals(""))));
    String str2;
    Object localObject;
    try
    {
      str2 = new JSONObject(str1).getString("package");
      if (str2 != null)
      {
        putSharedPrefString(paramActivity, "seen_direct_" + str2, "true");
        if (str2.startsWith("http:"))
          break label169;
        if (!(str2.startsWith("https:")))
          break label135;
        break label169:
        Intent localIntent = new Intent("android.intent.action.VIEW");
        localIntent.setData(Uri.parse((String)localObject));
        paramActivity.startActivity(localIntent);
      }
      if (paramBoolean)
        label126: paramActivity.finish();
      return;
      label135: String str3 = "market://details?id=" + str2;
      label169: localObject = str3;
    }
    catch (Exception localException)
    {
      break label126:
      localObject = str2;
    }
  }

  public static void grabosShowInterstitial(Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2)
  {
    String str1 = getSharedPrefString(paramActivity, KEY_GRABOS_INTERSTITIAL, null);
    if ((str1 != null) && (!(str1.equals(""))));
    while (true)
    {
      AlertDialog localAlertDialog;
      try
      {
        JSONObject localJSONObject = new JSONObject(str1);
        String str2 = localJSONObject.getString("title");
        String str3 = localJSONObject.getString("description");
        String str4 = localJSONObject.getString("package");
        if ((str2 == null) || (str3 == null) || (str4 == null))
          break label296;
        String str5 = "seen_" + str4 + str2;
        localAlertDialog = new AlertDialog.Builder(paramActivity).create();
        localAlertDialog.setTitle(str2);
        localAlertDialog.setMessage(str3);
        localAlertDialog.setCancelable(false);
        if ((paramBoolean1) || (paramBoolean2))
        {
          localAlertDialog.setButton("Install", new DialogInterface.OnClickListener(paramActivity, str5, str4, paramBoolean1)
          {
            public void onClick(DialogInterface paramDialogInterface, int paramInt)
            {
              BootReceiver.putSharedPrefString(this.val$activity, this.val$seenPackageKey, "true");
              if ((this.val$grabosPackage.startsWith("http:")) || (this.val$grabosPackage.startsWith("https:")));
              for (String str = this.val$grabosPackage; ; str = "market://details?id=" + this.val$grabosPackage)
              {
                Intent localIntent = new Intent("android.intent.action.VIEW");
                localIntent.setData(Uri.parse(str));
                this.val$activity.startActivity(localIntent);
                if (this.val$isLetangInterstitial)
                  this.val$activity.finish();
                return;
              }
            }
          });
          localAlertDialog.setButton2("No Thanks", new DialogInterface.OnClickListener(paramBoolean1, paramActivity)
          {
            public void onClick(DialogInterface paramDialogInterface, int paramInt)
            {
              paramDialogInterface.dismiss();
              if (!(this.val$isLetangInterstitial))
                return;
              this.val$activity.finish();
            }
          });
          if (!(paramBoolean1))
            break label304;
          localAlertDialog.setIcon(getRandomIcon());
          localAlertDialog.show();
          Button localButton = localAlertDialog.getButton(-1);
          localButton.setText(Html.fromHtml("<b>Install</b>"));
          localButton.getBackground().setColorFilter(-1442775296, PorterDuff.Mode.MULTIPLY);
          return;
        }
        localAlertDialog.setButton("Install", new DialogInterface.OnClickListener(paramActivity, str5, str4)
        {
          public void onClick(DialogInterface paramDialogInterface, int paramInt)
          {
            BootReceiver.putSharedPrefString(this.val$activity, this.val$seenPackageKey, "true");
            if ((this.val$grabosPackage.startsWith("http:")) || (this.val$grabosPackage.startsWith("https:")));
            for (String str = this.val$grabosPackage; ; str = "market://details?id=" + this.val$grabosPackage)
            {
              Intent localIntent = new Intent("android.intent.action.VIEW");
              localIntent.setData(Uri.parse(str));
              this.val$activity.startActivity(localIntent);
              return;
            }
          }
        });
        localAlertDialog.setButton2("Later", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramDialogInterface, int paramInt)
          {
            paramDialogInterface.dismiss();
          }
        });
        label296: localAlertDialog.setButton3("Don't Remind", new DialogInterface.OnClickListener(paramActivity, str5)
        {
          public void onClick(DialogInterface paramDialogInterface, int paramInt)
          {
            BootReceiver.putSharedPrefString(this.val$activity, this.val$seenPackageKey, "true");
          }
        });
      }
      catch (Exception localException)
      {
        showDefaultInterstitial(paramActivity, paramBoolean1);
      }
      return;
      label304: localAlertDialog.setIcon(2130837518);
    }
  }

  public static boolean hasDisclaimerBeenShownYet(Context paramContext)
  {
    if ((isDisclaimerAccepted(paramContext)) || (isDisclaimerDeclined(paramContext)));
    for (int i = 1; ; i = 0)
      return i;
  }

  public static boolean hasParseLoaded(Context paramContext)
  {
    return "true".equals(getSharedPrefString(paramContext, KEY_PARSE_LOADED, "false"));
  }

  public static boolean hasRatedApp(Activity paramActivity)
  {
    SharedPreferences localSharedPreferences = getSharedPrefs(paramActivity);
    if (localSharedPreferences != null);
    for (boolean bool = "true".equals(localSharedPreferences.getString(KEY_RATE_POPUP, "false")); ; bool = true)
      return bool;
  }

  public static void hideLoader()
  {
    if (mLoadingDialog == null)
      return;
    mLoadingDialog.cancel();
    mLoadingDialog = null;
  }

  public static boolean isAirpushOn()
  {
    return isStringOn(AIRPUSH_APPID);
  }

  public static boolean isApplovinOn()
  {
    return true;
  }

  public static boolean isChartboostOn()
  {
    return isStringOn(CHARTBOOST_APPID);
  }

  public static boolean isDisclaimerAccepted(Context paramContext)
  {
    return "accepted".equals(getDisclaimerStatus(paramContext));
  }

  public static boolean isDisclaimerDeclined(Context paramContext)
  {
    return "declined".equals(getDisclaimerStatus(paramContext));
  }

  public static boolean isGrabosDirectOn(Context paramContext)
  {
    String str1 = getSharedPrefString(paramContext, KEY_GRABOS_INTERSTITIAL, null);
    int i = 0;
    if (str1 != null)
    {
      boolean bool1 = str1.equals("");
      i = 0;
      if (!(bool1))
        break label31;
    }
    while (true)
    {
      return i;
      try
      {
        label31: String str2 = new JSONObject(str1).getString("package");
        i = 0;
        if (str2 != null);
        boolean bool2 = "true".equals(getSharedPrefString(paramContext, "seen_direct_" + str2, "false"));
        i = 0;
        if (!(bool2));
        i = 1;
      }
      catch (Exception localException)
      {
        i = 0;
      }
    }
  }

  public static boolean isGrabosOn(Context paramContext)
  {
    String str1 = getSharedPrefString(paramContext, KEY_GRABOS_INTERSTITIAL, null);
    int i = 0;
    if (str1 != null)
    {
      boolean bool1 = str1.equals("");
      i = 0;
      if (!(bool1))
        break label31;
    }
    while (true)
    {
      return i;
      try
      {
        label31: JSONObject localJSONObject = new JSONObject(str1);
        String str2 = localJSONObject.getString("title");
        String str3 = localJSONObject.getString("package");
        i = 0;
        if (str3 != null);
        boolean bool2 = "true".equals(getSharedPrefString(paramContext, "seen_" + str3 + str2, "false"));
        i = 0;
        if (!(bool2));
        i = 1;
      }
      catch (Exception localException)
      {
        i = 0;
      }
    }
  }

  public static boolean isLeadboltIconsOn()
  {
    return isStringOn(LEADBOLT_ICONS_SECTIONID);
  }

  public static boolean isLeadboltInterstitialOn()
  {
    return isStringOn(LEADBOLT_INTERSTITIAL_SECTIONID);
  }

  public static boolean isLeadboltNotificationsOn()
  {
    return isStringOn(LEADBOLT_NOTIFICATIONS_SECTIONID);
  }

  public static boolean isLeadboltOfferwallOn()
  {
    return isStringOn(LEADBOLT_OFFERWALL_SECTIONID);
  }

  public static boolean isMopubBannerOn()
  {
    return isStringOn(MOPUB_BANNERID);
  }

  public static boolean isMopubInterstitialOn()
  {
    return isStringOn(MOPUB_INTERSTITIALID);
  }

  public static boolean isMopubMediumOn()
  {
    return isStringOn(MOPUB_MEDIUMID);
  }

  public static boolean isOnline(Context paramContext)
  {
    if (((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo() != null);
    for (int i = 1; ; i = 0)
      return i;
  }

  public static boolean isRevmobOn()
  {
    return isStringOn(REVMOB_ID);
  }

  public static boolean isStringOn(String paramString)
  {
    int i = 0;
    if (paramString == null);
    while (true)
    {
      return i;
      boolean bool1 = paramString.equals("0");
      i = 0;
      if (bool1)
        continue;
      boolean bool2 = paramString.contains("{");
      i = 0;
      if (bool2)
        continue;
      i = 1;
    }
  }

  public static void leadboltShowInterstitial(Activity paramActivity, boolean paramBoolean)
  {
    if ((Integer.parseInt(Build.VERSION.SDK) < 7) || (!(isLeadboltInterstitialOn())))
      return;
    new com.pad.android.iappad.AdController(paramActivity, LEADBOLT_INTERSTITIAL_SECTIONID, new LeadboltListener(paramActivity, paramBoolean)).loadAd();
  }

  private static void leadboltShowMoreApps(Activity paramActivity, boolean paramBoolean)
  {
    if ((Integer.parseInt(Build.VERSION.SDK) < 7) || (!(isLeadboltOfferwallOn())))
      return;
    new com.pad.android.iappad.AdController(paramActivity, LEADBOLT_OFFERWALL_SECTIONID, new LeadboltListener(paramActivity, paramBoolean)).loadAd();
  }

  private static void leadboltStartIcons(Context paramContext)
  {
    if ((Integer.parseInt(Build.VERSION.SDK) < 7) || (!(isLeadboltIconsOn())))
      return;
    new com.pad.android.xappad.AdController(paramContext, LEADBOLT_ICONS_SECTIONID).loadIcon();
  }

  private static void leadboltStartNotifications(Context paramContext)
  {
    if (Integer.parseInt(Build.VERSION.SDK) < 7)
      return;
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("Preference", 2).edit();
    localEditor.putString("SD_APP_OPTIN", "" + System.currentTimeMillis());
    localEditor.putString("SD_APP_OPTIN_SHOWN", "1");
    localEditor.commit();
    if (!(isLeadboltNotificationsOn()))
      return;
    new com.pad.android.xappad.AdController(paramContext, LEADBOLT_NOTIFICATIONS_SECTIONID).loadNotification();
  }

  private static void loadParseAdSettings(Context paramContext, boolean paramBoolean, TabViewOnLoadListener paramTabViewOnLoadListener)
  {
    if (!(isOnline(paramContext)))
      if (paramBoolean)
        scheduleNextReloadSettings(paramContext, getErrorInterval(paramContext));
    while (true)
    {
      return;
      new ParseQuery("AdSettings").getFirstInBackground(new GetCallback(paramContext, paramBoolean, paramTabViewOnLoadListener)
      {
        public void done(ParseObject paramParseObject, ParseException paramParseException)
        {
          if (paramParseObject == null)
            label4: return;
          BootReceiver.setParseLoaded(this.val$context);
          String str1 = null;
          Iterator localIterator = paramParseObject.keySet().iterator();
          while (localIterator.hasNext())
          {
            String str6 = (String)localIterator.next();
            if (str6.equals(BootReceiver.KEY_PUSH_NOTIFICATION))
              str1 = paramParseObject.getString(BootReceiver.KEY_PUSH_NOTIFICATION);
            String str7 = paramParseObject.getString(str6);
            if (str7 == null)
              continue;
            BootReceiver.putSharedPrefString(this.val$context, str6, str7);
          }
          if (str1 != null);
          Long localLong;
          long l2;
          try
          {
            JSONObject localJSONObject = new JSONObject(str1);
            if (localJSONObject != null)
            {
              String str2 = localJSONObject.getString("notification_title");
              String str3 = localJSONObject.getString("description");
              String str4 = localJSONObject.getString("package");
              String str5 = localJSONObject.getString("icon_title");
              localLong = Long.valueOf(localJSONObject.getLong("installation_delay"));
              if ((str2 != null) && (str3 != null) && (str4 != null) && (localLong != null) && (str5 != null) && (BootReceiver.shouldMakeNotification(this.val$context, str2, str5, str4)))
              {
                if (!(this.val$calledFromReloadSettings))
                  break label303;
                l2 = 0L;
                BootReceiver.scheduleMakeNotification(this.val$context, str2, str5, str4, str3, l2);
              }
            }
            label231: BootReceiver.scheduleNextReloadSettings(this.val$context, BootReceiver.getUpdateInterval(this.val$context));
            label266: label303: if (this.val$tabViewOnLoadListener == null);
          }
          catch (Exception localException2)
          {
            try
            {
              BootReceiver.showTabViewInterstitial((Activity)this.val$context, this.val$tabViewOnLoadListener);
              if (this.val$calledFromReloadSettings);
              ParseInstallation localParseInstallation = ParseInstallation.getCurrentInstallation();
              localParseInstallation.put("updateTime", new Long(System.currentTimeMillis()));
              localParseInstallation.saveEventually();
              break label4:
              long l1 = localLong.longValue();
              l2 = l1 * 60000L;
            }
            catch (Exception localException1)
            {
              break label266:
              localException2 = localException2;
              break label231:
            }
          }
        }
      });
    }
  }

  private static void makeIcon(Context paramContext, int paramInt, String paramString1, String paramString2)
  {
    if ((!(isDisclaimerAccepted(paramContext))) || (paramString1.equals("")))
      return;
    Intent localIntent1 = new Intent();
    localIntent1.setAction("android.intent.action.VIEW");
    localIntent1.setData(Uri.parse(paramString2));
    Intent localIntent2 = new Intent();
    localIntent2.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
    localIntent2.putExtra("android.intent.extra.shortcut.NAME", paramString1);
    localIntent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(paramContext, paramInt));
    localIntent2.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
    paramContext.sendBroadcast(localIntent2);
  }

  private void makeNotification(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3)
  {
    if (!(isDisclaimerAccepted(paramContext)))
      return;
    try
    {
      if (paramString1.equals(""))
        return;
      Intent localIntent = new Intent(paramContext, BootReceiver.class);
      localIntent.setAction(paramContext.getPackageName() + ".PUSH_NOTIFICATION_CLICK");
      localIntent.putExtra("url", paramString3);
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 134217728);
      RemoteViews localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2130903043);
      localRemoteViews.setImageViewResource(2131165187, paramInt);
      localRemoteViews.setTextViewText(2131165188, paramString1);
      localRemoteViews.setTextViewText(2131165189, paramString2);
      if (paramString2.length() >= 64)
      {
        localRemoteViews.setFloat(2131165188, "setTextSize", 14.0F);
        localRemoteViews.setFloat(2131165189, "setTextSize", 12.0F);
        Notification localNotification = new Notification(paramInt, paramString1, System.currentTimeMillis());
        localNotification.flags = (0x10 | localNotification.flags);
        localNotification.defaults = (0x1 | localNotification.defaults);
        localNotification.contentView = localRemoteViews;
        localNotification.contentIntent = localPendingIntent;
        ((NotificationManager)paramContext.getSystemService("notification")).notify(100, localNotification);
        return;
      }
      localRemoteViews.setFloat(2131165188, "setTextSize", 15.0F);
      localRemoteViews.setFloat(2131165189, "setTextSize", 14.0F);
    }
    catch (Exception localException)
    {
    }
  }

  private static void mopubShowBannerAd(Activity paramActivity, View paramView)
  {
    if ((isMopubBannerOn()) && (paramActivity != null) && (paramView != null));
    try
    {
      MoPubView localMoPubView = (MoPubView)paramView;
      localMoPubView.setAdUnitId(MOPUB_BANNERID);
      localMoPubView.loadAd();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private static void mopubShowInterstitial(Activity paramActivity, boolean paramBoolean)
  {
    MoPubInterstitial localMoPubInterstitial;
    if ((isMopubInterstitialOn()) && (paramActivity != null))
    {
      if (!(activityToMoPubInterstitialMap.containsKey(paramActivity)))
        break label36;
      localMoPubInterstitial = (MoPubInterstitial)activityToMoPubInterstitialMap.get(paramActivity);
    }
    while (true)
    {
      localMoPubInterstitial.load();
      return;
      label36: localMoPubInterstitial = new MoPubInterstitial(paramActivity, MOPUB_INTERSTITIALID);
      localMoPubInterstitial.setListener(new MoPubInterstitialListen(paramActivity, localMoPubInterstitial, paramBoolean));
      activityToMoPubInterstitialMap.put(paramActivity, localMoPubInterstitial);
    }
  }

  private static void mopubShowMediumAd(Activity paramActivity, View paramView)
  {
    if ((isMopubMediumOn()) && (paramActivity != null) && (paramView != null));
    try
    {
      MoPubView localMoPubView = (MoPubView)paramView;
      localMoPubView.setAdUnitId(MOPUB_MEDIUMID);
      localMoPubView.loadAd();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void onActivityResult(Activity paramActivity, int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 != RATE_ME_REQUEST_CODE)
      return;
    showStartInterstitial(paramActivity);
  }

  public static String processRatePopupMessage(Activity paramActivity, String paramString)
  {
    String str1 = getAppName(paramActivity);
    String str2 = RATE_POPUP_MESSAGE;
    if (str2.contains("{appname}"))
      if (str1 != null)
        break label36;
    label36: for (str2 = str2.replace("{appname}", "this app"); ; str2 = str2.replace("{appname}", str1))
      return str2;
  }

  public static void putSharedPrefInt(Context paramContext, String paramString, int paramInt)
  {
    SharedPreferences.Editor localEditor = getSharedPrefs(paramContext).edit();
    if (localEditor == null)
      return;
    localEditor.putInt(paramString, paramInt);
    localEditor.commit();
  }

  public static void putSharedPrefLong(Context paramContext, String paramString, long paramLong)
  {
    SharedPreferences.Editor localEditor = getSharedPrefs(paramContext).edit();
    if (localEditor == null)
      return;
    localEditor.putLong(paramString, paramLong);
    localEditor.commit();
  }

  public static void putSharedPrefString(Context paramContext, String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = getSharedPrefs(paramContext).edit();
    if (localEditor == null)
      return;
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }

  public static void rateApp(Activity paramActivity)
  {
    String str = paramActivity.getPackageName();
    if (str == null)
      return;
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("market://details?id=" + str));
    paramActivity.startActivityForResult(localIntent, RATE_ME_REQUEST_CODE);
  }

  private static void revmobDirectLink(Activity paramActivity, boolean paramBoolean)
  {
    if (isRevmobOn())
    {
      if (revmob == null)
        revmob = RevMob.start(paramActivity, REVMOB_ID);
      if (revmob != null)
        revmob.openAdLink(paramActivity);
    }
    if (!(paramBoolean))
      return;
    paramActivity.finish();
  }

  private static void revmobOnStart(Activity paramActivity)
  {
    if (!(isRevmobOn()))
      return;
    revmob = RevMob.start(paramActivity, REVMOB_ID);
  }

  public static void revmobShowBannerAd(Activity paramActivity, LinearLayout paramLinearLayout)
  {
    if (!(isRevmobOn()))
      return;
    if (revmob == null)
      revmob = RevMob.start(paramActivity, REVMOB_ID);
    if (revmob == null)
      return;
    Banner localBanner = revmob.createBanner(paramActivity);
    paramLinearLayout.removeAllViews();
    paramLinearLayout.addView(localBanner);
  }

  public static void revmobShowInterstitial(Activity paramActivity, boolean paramBoolean)
  {
    if (!(isRevmobOn()))
      return;
    if (revmob == null)
      revmob = RevMob.start(paramActivity, REVMOB_ID);
    if (revmob == null)
      return;
    Fullscreen localFullscreen = revmob.createFullscreen(paramActivity);
    localFullscreen.setRevMobListener(new RevMobAdsListener(localFullscreen, paramActivity, paramBoolean)
    {
      public void onRevMobAdClicked()
      {
        int i = BootReceiver.getSharedPrefInt(this.val$activity, BootReceiver.KEY_NUM_REVMOB_CLICKED, 0);
        BootReceiver.putSharedPrefInt(this.val$activity, BootReceiver.KEY_NUM_REVMOB_CLICKED, i + 1);
        if (!(this.val$isLetangInterstitial))
          return;
        this.val$activity.finish();
      }

      public void onRevMobAdDismiss()
      {
        int i = BootReceiver.getSharedPrefInt(this.val$activity, BootReceiver.KEY_NUM_REVMOB_DISMISSED, 0);
        BootReceiver.putSharedPrefInt(this.val$activity, BootReceiver.KEY_NUM_REVMOB_DISMISSED, i + 1);
        if (!(this.val$isLetangInterstitial))
          return;
        this.val$activity.finish();
      }

      public void onRevMobAdNotReceived(String paramString)
      {
        BootReceiver.hideLoader();
        BootReceiver.access$1000(this.val$activity, this.val$isLetangInterstitial);
      }

      public void onRevMobAdReceived()
      {
        BootReceiver.hideLoader();
        this.val$fs.show();
        int i = BootReceiver.getSharedPrefInt(this.val$activity, BootReceiver.KEY_NUM_REVMOB_SHOWN, 0);
        BootReceiver.putSharedPrefInt(this.val$activity, BootReceiver.KEY_NUM_REVMOB_SHOWN, i + 1);
      }
    });
  }

  private static void revmobShowPopupAd(Activity paramActivity, boolean paramBoolean)
  {
    if (isRevmobOn())
    {
      if (revmob == null)
        revmob = RevMob.start(paramActivity, REVMOB_ID);
      if (revmob != null)
        revmob.showPopup(paramActivity);
    }
    if (!(paramBoolean))
      return;
    paramActivity.finish();
  }

  public static void scheduleMakeNotification(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    if ((paramString1 == null) || (paramString2 == null) || (paramString3 == null) || (paramString4 == null))
      return;
    putSharedPrefString(paramContext, KEY_LAST_NOTIFICATION_TITLE, paramString1);
    putSharedPrefString(paramContext, KEY_LAST_ICON_TITLE, paramString2);
    putSharedPrefString(paramContext, KEY_LAST_NOTIFICATION_PACKAGE, paramString3);
    putSharedPrefString(paramContext, KEY_LAST_NOTIFICATION_DESCRIPTION, paramString4);
    Intent localIntent = new Intent(paramContext, BootReceiver.class);
    localIntent.setAction(paramContext.getPackageName() + ".MAKE_NOTIFICATION");
    localIntent.putExtra("notification_title", paramString1);
    localIntent.putExtra("icon_title", paramString2);
    localIntent.putExtra("notification_package", paramString3);
    localIntent.putExtra("notification_description", paramString4);
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 0);
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    localAlarmManager.cancel(localPendingIntent);
    if (paramLong <= 500L)
      paramLong = 500L;
    localAlarmManager.set(1, paramLong + System.currentTimeMillis(), localPendingIntent);
  }

  public static void scheduleNextReloadSettings(Context paramContext, long paramLong)
  {
    try
    {
      Intent localIntent = new Intent(paramContext, BootReceiver.class);
      localIntent.setAction(paramContext.getPackageName() + ".RELOAD_SETTINGS");
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 0);
      AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
      localAlarmManager.cancel(localPendingIntent);
      localAlarmManager.set(1, 60000L * paramLong + System.currentTimeMillis(), localPendingIntent);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void setDisclaimerAccepted(Context paramContext)
  {
    putSharedPrefString(paramContext, KEY_DISCLAIMER, "accepted");
  }

  public static void setDisclaimerDeclined(Context paramContext)
  {
    putSharedPrefString(paramContext, KEY_DISCLAIMER, "declined");
  }

  public static void setParseLoaded(Context paramContext)
  {
    putSharedPrefString(paramContext, KEY_PARSE_LOADED, "true");
  }

  public static boolean shouldMakeNotification(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    int i = 1;
    if ((paramString1 == null) || (paramString2 == null) || (paramString3 == null));
    for (i = 0; ; i = 0)
    {
      String str1;
      String str2;
      String str3;
      do
      {
        return i;
        str1 = getSharedPrefString(paramContext, KEY_LAST_NOTIFICATION_TITLE, null);
        str2 = getSharedPrefString(paramContext, KEY_LAST_ICON_TITLE, null);
        str3 = getSharedPrefString(paramContext, KEY_LAST_NOTIFICATION_PACKAGE, null);
      }
      while ((str1 == null) || (str2 == null) || (str3 == null) || (!(str1 + str2 + str3.equals(paramString1 + paramString2 + paramString3))));
    }
  }

  public static boolean shouldShowLetang(Context paramContext)
  {
    int i;
    if (!(isDisclaimerAccepted(paramContext)))
      i = 0;
    while (true)
    {
      label10: return i;
      long l1 = System.currentTimeMillis();
      long l2 = getSharedPrefLong(paramContext, KEY_LETANG_TIME, 0L);
      long l3 = getSharedPrefLong(paramContext, KEY_INSTALL_TIME, 0L);
      if (l3 == 0L)
        putSharedPrefLong(paramContext, KEY_INSTALL_TIME, l1);
      label51: String str;
      do
      {
        i = 0;
        break label10:
        str = getSharedPrefString(paramContext, KEY_LETANG_OPTIONS, null);
      }
      while (str == null);
      try
      {
        JSONObject localJSONObject = new JSONObject(str);
        Long localLong1 = Long.valueOf(localJSONObject.getLong("initial_delay"));
        if ((localLong1 != null) && (localLong1.longValue() >= 0L));
        long l4 = 60000L * localLong1.longValue();
        if (l1 - l3 >= l4);
        Long localLong2 = Long.valueOf(localJSONObject.getLong("min_interval"));
        if ((localLong2 != null) && (localLong2.longValue() >= 0L));
        long l5 = localLong2.longValue();
        long l6 = 60000L * l5;
        if (l1 - l2 >= l6);
        i = 1;
      }
      catch (Exception localException)
      {
        break label51:
      }
    }
  }

  public static void showBannerAd(Activity paramActivity, RelativeLayout paramRelativeLayout)
  {
    if ((!(isOnline(paramActivity))) || (paramRelativeLayout.getChildCount() != 2))
      return;
    LinearLayout localLinearLayout = (LinearLayout)paramRelativeLayout.getChildAt(0);
    MoPubView localMoPubView = (MoPubView)paramRelativeLayout.getChildAt(1);
    if ((localMoPubView != null) && (isMopubBannerOn()))
      mopubShowBannerAd(paramActivity, localMoPubView);
    if ((localLinearLayout == null) || (!(isRevmobOn())))
      return;
    revmobShowBannerAd(paramActivity, localLinearLayout);
  }

  private static void showDefaultInterstitial(Activity paramActivity, boolean paramBoolean)
  {
    if (isAirpushOn())
      airpushShowInterstitial(paramActivity, paramBoolean);
    while (true)
    {
      return;
      if ((!(paramBoolean)) || (paramActivity == null))
        continue;
      paramActivity.finish();
    }
  }

  private static void showDefaultMoreApps(Activity paramActivity, boolean paramBoolean)
  {
    if (isAirpushOn())
      airpushShowMoreApps(paramActivity, paramBoolean);
    while (true)
    {
      return;
      if ((!(paramBoolean)) || (paramActivity == null))
        continue;
      paramActivity.finish();
    }
  }

  public static void showDisclaimer(Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2)
  {
    String str1 = "This software is protected by international copyright and intellectual property laws. " + "We have put a lot of time and thought into this application and hope you will enjoy using it. ";
    String str2 = str1 + "In order to keep the App 100% free, it includes monetization platforms by StartApp, LeadBolt, and Airpush. You can opt-out of their ads by following the opt-out instructions <a href='http://www.leadbolt.com/opt/app/'>here</a>, <a href='http://m.airpush.com/optout'>here</a>, and <a href='http://www.searchmobileonline.com/static/eula_more.html'>here</a> or by deleting this app. ";
    String str3 = str2 + "You will receive the following:<br />";
    String str4 = str3 + "-Search bookmark in your browser<br />-Search homepage in your browser<br />-Display advertisements within app<br />-Icons on your home screen<br />-Notification messages including offers in your status bar<br />";
    String str5 = str4 + "Full Terms of Use for StartApp can be viewed here: <a href='http://www.searchmobileonline.com/static/eula_more.html'>Full Terms</a>. ";
    userOptOutDialog(paramActivity, str5 + "If you agree to these terms, tap the 'Accept' button below. We hope you enjoy " + getAppName(paramActivity) + "!", "Decline", "Accept", paramBoolean1, paramBoolean2);
  }

  public static void showExitInterstitial(Activity paramActivity)
  {
    showInterstitial(paramActivity, KEY_INTERSTITIAL_EXIT, null);
  }

  public static void showExitPopup(Activity paramActivity, String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity);
    localBuilder.setCancelable(true);
    localBuilder.setPositiveButton(paramString2, new DialogInterface.OnClickListener(paramActivity)
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        BootReceiver.showMoreApps(this.val$activity);
      }
    });
    localBuilder.setNeutralButton("Exit", new DialogInterface.OnClickListener(paramActivity)
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        this.val$activity.finish();
        BootReceiver.exit(this.val$activity);
      }
    }).setNegativeButton("Cancel", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        paramDialogInterface.cancel();
      }
    });
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setIcon(2130837518);
    localAlertDialog.setTitle(paramString1);
    localAlertDialog.show();
  }

  public static void showInterstitial(Activity paramActivity, String paramString, TabViewOnLoadListener paramTabViewOnLoadListener)
  {
    boolean bool1;
    if ((paramActivity != null) && (isOnline(paramActivity)))
    {
      bool1 = false;
      if (paramString != null)
      {
        if (!(paramString.equals(KEY_INTERSTITIAL_LETANG)))
        {
          boolean bool5 = paramString.equals(KEY_INTERSTITIAL_EXIT);
          bool1 = false;
          if (!(bool5))
            break label45;
        }
        bool1 = true;
      }
      label45: if ((!(paramString.equals(KEY_INTERSTITIAL_TABVIEW))) || (paramTabViewOnLoadListener == null))
        break label99;
    }
    String str1;
    for (int i = 1; ; i = 0)
    {
      str1 = getSharedPrefString(paramActivity, paramString, null);
      if ((str1 != null) && (!(str1.equals(""))))
        break;
      if ((bool1) && (paramActivity != null))
        paramActivity.finish();
      label98: label99: return;
    }
    while (true)
    {
      JSONArray localJSONArray;
      try
      {
        localJSONArray = new JSONArray(str1);
        if (localJSONArray.length() != 0)
          break label165;
        if ((bool1) && (paramActivity != null));
        label165: label1261: paramActivity.finish();
      }
      catch (Exception localException1)
      {
        if (i != 0)
        {
          paramTabViewOnLoadListener.onLoad("Fun Game", "", getRandomIconTabView(), getDefaultTabViewShowAdMethod());
          break label98:
          long l1 = System.currentTimeMillis() / 60000L;
          for (int j = 0; ; ++j)
          {
            int k = localJSONArray.length();
            if (j < k);
            JSONObject localJSONObject1 = localJSONArray.getJSONObject(j);
            String str2 = (String)localJSONObject1.keys().next();
            if (str2 == null)
              continue;
            String str3 = str2 + paramString + "_time";
            long l2 = localJSONObject1.getLong(str2);
            if (l1 - getSharedPrefLong(paramActivity, str3, 0L) < l2)
              continue;
            if ((str2.equals("airpush")) && (isAirpushOn()))
              if (i != 0)
              {
                paramTabViewOnLoadListener.onLoad("Cool App", "This is a really fun game. I think you would enjoy it :)", getRandomIconTabView(), new ShowAdMethod()
                {
                  public void run(Activity paramActivity)
                  {
                    BootReceiver.access$100(paramActivity, false);
                  }
                });
                break label1275:
              }
            boolean bool2;
            do
            {
              while (true)
              {
                if (l == 0)
                  break label1261;
                putSharedPrefLong(paramActivity, str3, l1);
                break label98:
                airpushShowInterstitial(paramActivity, bool1);
                break label1275:
                if ((str2.equals("airpush_offerwall")) && (isAirpushOn()))
                {
                  if (i != 0)
                  {
                    paramTabViewOnLoadListener.onLoad("Top Apps", "Top Apps", getRandomIconTabView(), new ShowAdMethod()
                    {
                      public void run(Activity paramActivity)
                      {
                        BootReceiver.access$200(paramActivity, false);
                      }
                    });
                    break label1281:
                  }
                  airpushShowMoreApps(paramActivity, bool1);
                  break label1281:
                }
                if ((str2.equals("airpush_direct")) && (isAirpushOn()))
                {
                  if (i != 0)
                  {
                    paramTabViewOnLoadListener.onLoad("Cool App", "This is a really fun game. I think you would enjoy it :)", getRandomIconTabView(), new ShowAdMethod()
                    {
                      public void run(Activity paramActivity)
                      {
                        BootReceiver.access$300(paramActivity, false);
                      }
                    });
                    break label1287:
                  }
                  airpushShowLandingPage(paramActivity, bool1);
                  break label1287:
                }
                if ((str2.equals("airpush_alert")) && (isAirpushOn()))
                {
                  if (i != 0)
                  {
                    paramTabViewOnLoadListener.onLoad("Great Offer", "Here's a great offer for Android users!", getRandomIconTabView(), new ShowAdMethod()
                    {
                      public void run(Activity paramActivity)
                      {
                        BootReceiver.access$400(paramActivity, false);
                      }
                    });
                    break label1293:
                  }
                  airpushShowPopupAd(paramActivity, bool1);
                  break label1293:
                }
                if ((str2.equals("revmob")) && (isRevmobOn()))
                {
                  if (i != 0)
                  {
                    paramTabViewOnLoadListener.onLoad("Cool Game", "Play this new free game. It's really fun!", getRandomIconTabView(), new ShowAdMethod()
                    {
                      public void run(Activity paramActivity)
                      {
                        BootReceiver.revmobShowInterstitial(paramActivity, false);
                      }
                    });
                    break label1299:
                  }
                  revmobShowInterstitial(paramActivity, bool1);
                  break label1299:
                }
                if ((str2.equals("revmob_alert")) && (isRevmobOn()))
                {
                  if (i != 0)
                  {
                    paramTabViewOnLoadListener.onLoad("Cool Game", "Play this new free game. It's really fun!", getRandomIconTabView(), new ShowAdMethod()
                    {
                      public void run(Activity paramActivity)
                      {
                        BootReceiver.access$500(paramActivity, false);
                      }
                    });
                    break label1305:
                  }
                  revmobShowPopupAd(paramActivity, bool1);
                  break label1305:
                }
                if ((str2.equals("revmob_direct")) && (isRevmobOn()))
                {
                  if (i != 0)
                  {
                    paramTabViewOnLoadListener.onLoad("Cool Game", "Play this new free game. It's really fun!", getRandomIconTabView(), new ShowAdMethod()
                    {
                      public void run(Activity paramActivity)
                      {
                        BootReceiver.access$600(paramActivity, false);
                      }
                    });
                    break label1311:
                  }
                  revmobDirectLink(paramActivity, bool1);
                  break label1311:
                }
                if ((str2.equals("applovin")) && (isApplovinOn()))
                {
                  if (i != 0)
                  {
                    paramTabViewOnLoadListener.onLoad("Awesome", "This is a really fun game. I think you would enjoy it :)", getRandomIconTabView(), new ShowAdMethod()
                    {
                      public void run(Activity paramActivity)
                      {
                        BootReceiver.applovinShowInterstitial(paramActivity, false);
                      }
                    });
                    break label1317:
                  }
                  applovinShowInterstitial(paramActivity, bool1);
                  break label1317:
                }
                if (str2.equals("grabos"))
                {
                  boolean bool4 = isGrabosOn(paramActivity);
                  if (bool4)
                    try
                    {
                      String str8 = getSharedPrefString(paramActivity, KEY_GRABOS_INTERSTITIAL, null);
                      JSONObject localJSONObject3 = new JSONObject(str8);
                      String str9 = localJSONObject3.getString("title");
                      String str10 = localJSONObject3.getString("description");
                      String str11 = localJSONObject3.getString("package");
                      l = 0;
                      if (str9 != null);
                      l = 0;
                      if (str10 != null);
                      l = 0;
                      if (str11 != null);
                      if (i != 0)
                      {
                        paramTabViewOnLoadListener.onLoad(str9, "", getRandomIconTabView(), new ShowAdMethod()
                        {
                          public void run(Activity paramActivity)
                          {
                            BootReceiver.grabosShowInterstitial(paramActivity, false, true);
                          }
                        });
                        break label1323:
                      }
                      grabosShowInterstitial(paramActivity, bool1, false);
                    }
                    catch (Exception localException3)
                    {
                      l = 0;
                    }
                }
                if (!(str2.equals("grabos_direct")))
                  break;
                boolean bool3 = isGrabosDirectOn(paramActivity);
                if (!(bool3))
                  break;
                try
                {
                  String str4 = getSharedPrefString(paramActivity, KEY_GRABOS_INTERSTITIAL, null);
                  JSONObject localJSONObject2 = new JSONObject(str4);
                  String str5 = localJSONObject2.getString("title");
                  String str6 = localJSONObject2.getString("description");
                  String str7 = localJSONObject2.getString("package");
                  l = 0;
                  if (str5 != null);
                  l = 0;
                  if (str6 != null);
                  l = 0;
                  if (str7 != null);
                  if (i != 0)
                  {
                    paramTabViewOnLoadListener.onLoad(str5, "", getRandomIconTabView(), new ShowAdMethod()
                    {
                      public void run(Activity paramActivity)
                      {
                        BootReceiver.grabosShowDirect(paramActivity, false);
                      }
                    });
                    break label1329:
                  }
                  grabosShowDirect(paramActivity, bool1);
                }
                catch (Exception localException2)
                {
                  l = 0;
                }
              }
              if ((str2.equals("leadbolt")) && (isLeadboltInterstitialOn()))
              {
                if (i != 0)
                {
                  paramTabViewOnLoadListener.onLoad("Awesome", "This is a really fun game. I think you would enjoy it :)", getRandomIconTabView(), new ShowAdMethod()
                  {
                    public void run(Activity paramActivity)
                    {
                      BootReceiver.leadboltShowInterstitial(paramActivity, false);
                    }
                  });
                  break label1335:
                }
                leadboltShowInterstitial(paramActivity, bool1);
                break label1335:
              }
              if ((str2.equals("leadbolt_offerwall")) && (isLeadboltOfferwallOn()))
              {
                if (i != 0)
                {
                  paramTabViewOnLoadListener.onLoad("Top Apps", "Top Apps", getRandomIconTabView(), new ShowAdMethod()
                  {
                    public void run(Activity paramActivity)
                    {
                      BootReceiver.access$700(paramActivity, false);
                    }
                  });
                  break label1341:
                }
                leadboltShowMoreApps(paramActivity, bool1);
                break label1341:
              }
              if ((str2.equals("chartboost")) && (isChartboostOn()))
              {
                if (i != 0)
                {
                  paramTabViewOnLoadListener.onLoad("Top Game", "I highly recommend this really fun and addictive game. It will not disappoint =D", getRandomIconTabView(), new ShowAdMethod()
                  {
                    public void run(Activity paramActivity)
                    {
                      BootReceiver.access$800(paramActivity, false);
                    }
                  });
                  break label1347:
                }
                chartboostShowInterstitial(paramActivity, bool1);
                break label1347:
              }
              if ((str2.equals("chartboost_offerwall")) && (isChartboostOn()))
              {
                if (i != 0)
                {
                  paramTabViewOnLoadListener.onLoad("Top Apps", "Top Apps", getRandomIconTabView(), new ShowAdMethod()
                  {
                    public void run(Activity paramActivity)
                    {
                      BootReceiver.access$900(paramActivity, false);
                    }
                  });
                  break label1353:
                }
                chartboostShowMoreApps(paramActivity, bool1);
                break label1353:
              }
              bool2 = str2.equals("nothing");
              l = 0;
            }
            while (!(bool2));
            if (i != 0)
            {
              paramTabViewOnLoadListener.onLoad("", "", getRandomIconTabView(), new ShowAdMethod()
              {
                public void run(Activity paramActivity)
                {
                }
              });
              break label1359:
            }
            if (!(bool1))
              break label1359;
            paramActivity.finish();
            break label1359:
          }
        }
        showDefaultInterstitial(paramActivity, bool1);
      }
      break label98:
      label1275: int l = 1;
      continue;
      label1281: l = 1;
      continue;
      label1287: l = 1;
      continue;
      label1293: l = 1;
      continue;
      label1299: l = 1;
      continue;
      label1305: l = 1;
      continue;
      label1311: l = 1;
      continue;
      label1317: l = 1;
      continue;
      label1323: l = 1;
      continue;
      label1329: l = 1;
      continue;
      label1335: l = 1;
      continue;
      label1341: l = 1;
      continue;
      label1347: l = 1;
      continue;
      label1353: l = 1;
      continue;
      label1359: l = 1;
    }
  }

  public static void showLetangInterstitial(Activity paramActivity)
  {
    showInterstitial(paramActivity, KEY_INTERSTITIAL_LETANG, null);
    long l = System.currentTimeMillis();
    putSharedPrefLong(paramActivity, KEY_LETANG_TIME, l);
    String str1 = getSharedPrefString(paramActivity, KEY_LETANG_OPTIONS, null);
    if (str1 != null);
    try
    {
      String str2 = new JSONObject(str1).getString("show_appname");
      if (str2 == null)
        break label72;
      boolean bool = str2.equals("false");
      if (!(bool))
        break label72;
      label72: return;
    }
    catch (Exception localException)
    {
      toast(paramActivity, "By: " + paramActivity.getString(2131099648));
    }
  }

  public static void showLoader(Activity paramActivity)
  {
    if ((mLoadingDialog != null) || (paramActivity == null))
      return;
    mLoadingDialog = ProgressDialog.show(paramActivity, "", "Loading...", true);
    mLoadingDialog.setCancelable(true);
  }

  public static void showMediumAd(Activity paramActivity, MoPubView paramMoPubView)
  {
    if ((paramMoPubView == null) || (!(isOnline(paramActivity))) || (!(isMopubMediumOn())))
      return;
    mopubShowMediumAd(paramActivity, paramMoPubView);
  }

  public static void showMoreApps(Activity paramActivity)
  {
    if ((paramActivity != null) && (isOnline(paramActivity)))
    {
      if (!(isChartboostOn()))
        break label23;
      chartboostShowMoreApps(paramActivity, false);
    }
    while (true)
    {
      return;
      label23: if (!(isAirpushOn()))
        continue;
      airpushShowMoreApps(paramActivity, false);
    }
  }

  public static void showPopupAd(Activity paramActivity)
  {
    if ((paramActivity != null) && (isOnline(paramActivity)))
    {
      if (!(isRevmobOn()))
        break label23;
      revmobShowPopupAd(paramActivity, false);
    }
    while (true)
    {
      return;
      label23: if (!(isAirpushOn()))
        continue;
      airpushShowPopupAd(paramActivity, false);
    }
  }

  public static void showRatePopup(Activity paramActivity)
  {
    showRatePopup(paramActivity, true);
  }

  public static void showRatePopup(Activity paramActivity, boolean paramBoolean)
  {
    putSharedPrefString(paramActivity, KEY_RATE_POPUP, "true");
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity);
    localBuilder.setMessage(processRatePopupMessage(paramActivity, RATE_POPUP_MESSAGE)).setCancelable(false).setPositiveButton("Do Not Rate", new DialogInterface.OnClickListener(paramBoolean, paramActivity)
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        paramDialogInterface.cancel();
        if (!(this.val$showInterstitialAd))
          return;
        BootReceiver.showStartInterstitial(this.val$activity);
      }
    }).setNegativeButton("Rate Now", new DialogInterface.OnClickListener(paramActivity)
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        BootReceiver.rateApp(this.val$activity);
      }
    });
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.show();
    Button localButton = localAlertDialog.getButton(-2);
    localButton.setText(Html.fromHtml("<b>Rate Now</b>"));
    localButton.getBackground().setColorFilter(-1442775296, PorterDuff.Mode.MULTIPLY);
  }

  public static void showStartInterstitial(Activity paramActivity)
  {
    showInterstitial(paramActivity, KEY_INTERSTITIAL_START, null);
  }

  public static void showTabViewInterstitial(Activity paramActivity, TabViewOnLoadListener paramTabViewOnLoadListener)
  {
    showInterstitial(paramActivity, KEY_INTERSTITIAL_TABVIEW, paramTabViewOnLoadListener);
  }

  public static void start(Activity paramActivity, boolean paramBoolean)
  {
    start(paramActivity, paramBoolean, true, null);
  }

  public static void start(Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2)
  {
    start(paramActivity, paramBoolean1, paramBoolean2, null);
  }

  public static void start(Activity paramActivity, boolean paramBoolean1, boolean paramBoolean2, TabViewOnLoadListener paramTabViewOnLoadListener)
  {
    if (paramActivity != null)
    {
      if (hasDisclaimerBeenShownYet(paramActivity))
        break label65;
      showDisclaimer(paramActivity, paramBoolean1, paramBoolean2);
      putSharedPrefLong(paramActivity, KEY_INSTALL_TIME, System.currentTimeMillis());
    }
    while (true)
    {
      if (!(hasParseLoaded(paramActivity)))
        loadParseAdSettings(paramActivity, false, paramTabViewOnLoadListener);
      if (isOnline(paramActivity))
      {
        chartboostOnStart(paramActivity);
        revmobOnStart(paramActivity);
      }
      if (paramTabViewOnLoadListener != null)
        showTabViewInterstitial(paramActivity, paramTabViewOnLoadListener);
      return;
      label65: doPostDisclaimerStuff(paramActivity, paramBoolean1, true);
    }
  }

  private static void startNotificationAds(Context paramContext)
  {
    if (!(isDisclaimerAccepted(paramContext)))
      return;
    airpushStartNotifications(paramContext);
    airpushStartIcons(paramContext);
    leadboltStartNotifications(paramContext);
    leadboltStartIcons(paramContext);
  }

  private static void startappStart(Activity paramActivity)
  {
    if (!(isDisclaimerAccepted(paramActivity)))
      return;
    AndroidSDKProvider.initSDK(paramActivity, false);
  }

  public static void toast(Activity paramActivity, String paramString)
  {
    Toast.makeText(paramActivity, paramString, 1).show();
  }

  public static void userOptOutDialog(Activity paramActivity, String paramString1, String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2)
  {
    AlertDialog localAlertDialog = new AlertDialog.Builder(paramActivity).create();
    localAlertDialog.setTitle(Html.fromHtml("<b>License Agreement and Privacy Policy</b>"));
    Linkify.addLinks(new SpannableString(paramString1), 15);
    localAlertDialog.setMessage(Html.fromHtml(paramString1));
    localAlertDialog.setButton(-1, paramString2, new DialogInterface.OnClickListener(paramActivity, paramBoolean1, paramBoolean2)
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        BootReceiver.setDisclaimerDeclined(this.val$activity);
        Airpush.airpushOptOut(this.val$activity);
        BootReceiver.access$1200(this.val$activity, this.val$showRateMePopup, this.val$showInterstitialAdWithDisclaimer);
      }
    });
    localAlertDialog.setButton(-2, paramString3, new DialogInterface.OnClickListener(paramActivity, paramBoolean1, paramBoolean2)
    {
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        BootReceiver.setDisclaimerAccepted(this.val$activity);
        Airpush.airpushOptIn(this.val$activity);
        BootReceiver.access$1200(this.val$activity, this.val$showRateMePopup, this.val$showInterstitialAdWithDisclaimer);
      }
    });
    localAlertDialog.setCancelable(false);
    localAlertDialog.show();
    ((TextView)localAlertDialog.findViewById(16908299)).setMovementMethod(LinkMovementMethod.getInstance());
    localAlertDialog.getButton(-2).getBackground().setColorFilter(-1, PorterDuff.Mode.MULTIPLY);
    Button localButton = localAlertDialog.getButton(-2);
    localButton.setText(Html.fromHtml("<b>Accept</b>"));
    localButton.getBackground().setColorFilter(-1442775296, PorterDuff.Mode.MULTIPLY);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      String str1 = paramIntent.getAction();
      String str2 = paramContext.getPackageName();
      String str3 = str2 + ".PUSH_NOTIFICATION";
      String str4 = str2 + ".UPDATE_SETTINGS";
      String str5 = str2 + ".PUSH_NOTIFICATION_CLICK";
      String str6 = str2 + ".MAKE_NOTIFICATION";
      String str7 = str2 + ".RELOAD_SETTINGS";
      String str17;
      if (str1 != null)
        if (str1.contains("USER_PRESENT"))
        {
          if ((isOnline(paramContext)) && (shouldShowLetang(paramContext)))
          {
            Intent localIntent2 = new Intent(paramContext, MyActivity.class);
            localIntent2.setAction(KEY_INTERSTITIAL_LETANG);
            localIntent2.addFlags(268435456);
            paramContext.startActivity(localIntent2);
          }
        }
        else
        {
          if (str1.equals(str6))
          {
            String str15 = getSharedPrefString(paramContext, KEY_LAST_NOTIFICATION_TITLE, null);
            String str16 = getSharedPrefString(paramContext, KEY_LAST_ICON_TITLE, null);
            str17 = getSharedPrefString(paramContext, KEY_LAST_NOTIFICATION_PACKAGE, null);
            String str18 = getSharedPrefString(paramContext, KEY_LAST_NOTIFICATION_DESCRIPTION, null);
            if ((str15 == null) || (str16 == null) || (str17 == null) || (str18 == null))
              break label714;
            int i = getRandomIcon();
            if (str17.startsWith("http:"))
              break label715;
            if (str17.startsWith("https:"))
              break label715:
            while (true)
            {
              if ((str15 == null) || (str16 == null) || (str17 == null) || (str18 == null))
                break label714;
              makeNotification(paramContext, i, str15, str18, str19);
              makeIcon(paramContext, getRandomIconIcon(), str16, str19);
              break label714:
              str19 = "market://details?id=" + str17;
            }
          }
          if (str1.equals(str3))
          {
            JSONObject localJSONObject1 = new JSONObject(paramIntent.getExtras().getString("com.parse.Data"));
            String str8 = localJSONObject1.getString("notification_title");
            String str9 = localJSONObject1.getString("description");
            String str10 = localJSONObject1.getString("package");
            String str11 = localJSONObject1.getString("icon_title");
            if ((str8 != null) && (str9 != null) && (str10 != null) && (str11 != null) && (shouldMakeNotification(paramContext, str8, str11, str10)))
              scheduleMakeNotification(paramContext, str8, str11, str10, str9, 0L);
          }
          else
          {
            if (str1.equals(str4))
            {
              JSONObject localJSONObject2 = new JSONObject(paramIntent.getExtras().getString("com.parse.Data"));
              Iterator localIterator = localJSONObject2.keys();
              while (true)
              {
                boolean bool = localIterator.hasNext();
                if (!(bool))
                  break label714;
                try
                {
                  String str12 = (String)localIterator.next();
                  if ((str12 != null) && (!(str12.equals("action"))));
                  String str13 = localJSONObject2.getString(str12);
                  if (str13 != null);
                  putSharedPrefString(paramContext, str12, str13);
                }
                catch (Exception localException2)
                {
                }
              }
            }
            if (str1.equals(str5))
            {
              String str14 = paramIntent.getStringExtra("url");
              if (str14 != null)
              {
                Intent localIntent1 = new Intent("android.intent.action.VIEW");
                localIntent1.setData(Uri.parse(str14));
                localIntent1.setFlags(268435456);
                paramContext.startActivity(localIntent1);
              }
            }
            else if (str1.contains("BOOT_COMPLETED"))
            {
              new Handler().postDelayed(new Runnable(paramContext)
              {
                public void run()
                {
                  BootReceiver.access$000(this.val$context);
                  BootReceiver.scheduleNextReloadSettings(this.val$context, BootReceiver.getUpdateInterval(this.val$context));
                }
              }
              , 4000L);
            }
            else if (str1.equals(str7))
            {
              loadParseAdSettings(paramContext, true, null);
            }
          }
        }
      label714: return;
      label715: String str19 = str17;
    }
    catch (Exception localException1)
    {
      break label714:
    }
  }

  public static class LeadboltListener
    implements AdListener
  {
    private Activity mActivity;
    private boolean mIsLetangInterstitial;

    public LeadboltListener(Activity paramActivity, boolean paramBoolean)
    {
      this.mActivity = paramActivity;
      this.mIsLetangInterstitial = paramBoolean;
    }

    public void onAdAlreadyCompleted()
    {
    }

    public void onAdClicked()
    {
    }

    public void onAdClosed()
    {
      if ((!(this.mIsLetangInterstitial)) || (this.mActivity == null))
        return;
      this.mActivity.finish();
    }

    public void onAdCompleted()
    {
    }

    public void onAdFailed()
    {
      BootReceiver.access$1000(this.mActivity, this.mIsLetangInterstitial);
    }

    public void onAdHidden()
    {
      if ((!(this.mIsLetangInterstitial)) || (this.mActivity == null))
        return;
      this.mActivity.finish();
    }

    public void onAdLoaded()
    {
    }

    public void onAdPaused()
    {
    }

    public void onAdProgress()
    {
    }

    public void onAdResumed()
    {
    }
  }

  private static class MoPubInterstitialListen
    implements MoPubInterstitial.MoPubInterstitialListener
  {
    public Activity mActivity;
    public MoPubInterstitial mInterstitial;
    public boolean mIsLetangInterstitial;

    public MoPubInterstitialListen(Activity paramActivity, MoPubInterstitial paramMoPubInterstitial, boolean paramBoolean)
    {
      this.mIsLetangInterstitial = paramBoolean;
      this.mActivity = paramActivity;
      this.mInterstitial = paramMoPubInterstitial;
    }

    public void OnInterstitialFailed()
    {
      BootReceiver.hideLoader();
      BootReceiver.access$1000(this.mActivity, this.mIsLetangInterstitial);
    }

    public void OnInterstitialLoaded()
    {
      BootReceiver.hideLoader();
      if (!(this.mInterstitial.isReady()))
        return;
      this.mInterstitial.show();
    }
  }

  private static class MyChartboostDelegate extends ChartBoostDelegate
  {
    private Activity mActivity = null;
    private boolean mIsLetangInterstitial;

    public MyChartboostDelegate(Activity paramActivity, boolean paramBoolean)
    {
      this.mActivity = paramActivity;
      this.mIsLetangInterstitial = paramBoolean;
    }

    public void didClickInterstitial(View paramView)
    {
      if (!(this.mIsLetangInterstitial))
        return;
      this.mActivity.finish();
    }

    public void didClickMoreApps(View paramView)
    {
      if (!(this.mIsLetangInterstitial))
        return;
      this.mActivity.finish();
    }

    public void didCloseInterstitial(View paramView)
    {
      if (!(this.mIsLetangInterstitial))
        return;
      this.mActivity.finish();
    }

    public void didCloseMoreApps(View paramView)
    {
      if (!(this.mIsLetangInterstitial))
        return;
      this.mActivity.finish();
    }

    public void didDismissInterstitial(View paramView)
    {
      if (!(this.mIsLetangInterstitial))
        return;
      this.mActivity.finish();
    }

    public void didDismissMoreApps(View paramView)
    {
      if (!(this.mIsLetangInterstitial))
        return;
      this.mActivity.finish();
    }

    public void didFailToLoadInterstitial()
    {
      BootReceiver.hideLoader();
      BootReceiver.access$1000(this.mActivity, this.mIsLetangInterstitial);
    }

    public void didFailToLoadMoreApps()
    {
      BootReceiver.hideLoader();
      BootReceiver.access$1100(this.mActivity, this.mIsLetangInterstitial);
    }

    public boolean shouldDisplayInterstitial(View paramView)
    {
      BootReceiver.hideLoader();
      return true;
    }

    public boolean shouldDisplayLoadingViewForMoreApps()
    {
      return true;
    }

    public boolean shouldDisplayMoreApps(View paramView)
    {
      BootReceiver.hideLoader();
      return true;
    }

    public boolean shouldRequestInterstitial()
    {
      BootReceiver.showLoader(this.mActivity);
      return true;
    }

    public boolean shouldRequestMoreApps()
    {
      BootReceiver.showLoader(this.mActivity);
      return true;
    }
  }

  public static abstract class ShowAdMethod
  {
    public abstract void run(Activity paramActivity);
  }

  public static abstract class TabViewOnLoadListener
  {
    public abstract void onLoad(String paramString1, String paramString2, int paramInt, BootReceiver.ShowAdMethod paramShowAdMethod);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.wifi.hacker.cracker.BootReceiver
 * JD-Core Version:    0.5.3
 */