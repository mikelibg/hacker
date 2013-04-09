package com.airpush.android;

import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public class Airpush extends SDKIntializer
{
  static final String TAG = "AirpushSDK";
  static AsyncTaskCompleteListener<String> asyncTaskCompleteListener;
  private static String event;
  private static String mAppId = "";
  private static String mAppKey = "";
  private static Context mContext;
  private static ProgressDialog mLoadingDialog = null;
  private boolean isDialogClosed = false;
  Runnable optinRunnable = new Runnable()
  {
    public void run()
    {
      try
      {
        Intent localIntent = new Intent(Airpush.mContext, OptinActivity.class);
        localIntent.addFlags(268435456);
        localIntent.addFlags(67108864);
        Airpush.mContext.startActivity(localIntent);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Log.e("AirpushSDK", "Required OptinActivity not declared in Manifest, Please add.");
      }
      catch (Exception localException)
      {
        Log.e("AirpushSDK", "Error in Optin runnable: " + localException.getMessage());
      }
    }
  };
  Runnable userInfoRunnable = new Runnable()
  {
    public void run()
    {
      Airpush.this.sendUserInfo();
    }
  };

  static
  {
    event = "optOut";
    asyncTaskCompleteListener = new AsyncTaskCompleteListener()
    {
      public void lauchNewHttpTask()
      {
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(new BasicNameValuePair("event", Airpush.event));
        localArrayList.add(new BasicNameValuePair("imei", Util.getImei()));
        localArrayList.add(new BasicNameValuePair("appId", Util.getAppID()));
        if (Airpush.mContext == null)
          return;
        new HttpPostDataTask(Airpush.mContext, localArrayList, "https://api.airpush.com/optin/", this).execute(new Void[0]);
      }

      public void onTaskComplete(String paramString)
      {
      }
    };
  }

  Airpush()
  {
    try
    {
      this.isDialogClosed = true;
      if (!(SetPreferences.isShowOptinDialog(mContext)))
        sendUserInfo();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public Airpush(Context paramContext, String paramString1, String paramString2)
  {
    mAppId = paramString1;
    mAppKey = paramString2;
    if (paramContext == null)
      Log.e("AirpushSDK", "Context must not be null.");
    while (true)
    {
      return;
      mContext = paramContext;
      this.isDialogClosed = false;
      Util.setContext(mContext);
      if (!(new UserDetails(mContext).setImeiInMd5()))
        continue;
      new SetPreferences(mContext).setPreferencesData();
      SetPreferences.getDataSharedPrefrences(mContext);
      SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("sdkPrefs", 0);
      if ((localSharedPreferences == null) || (!(localSharedPreferences.contains("SDKEnabled"))))
        enableSDK(paramContext, true);
      new Handler().postDelayed(this.userInfoRunnable, 5000L);
    }
  }

  public static void airpushOptIn(Context paramContext)
  {
    try
    {
      if (Util.checkInternetConnection(paramContext))
      {
        event = "optIn";
        asyncTaskCompleteListener.lauchNewHttpTask();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void airpushOptOut(Context paramContext)
  {
    try
    {
      if (Util.checkInternetConnection(paramContext))
      {
        event = "optOut";
        asyncTaskCompleteListener.lauchNewHttpTask();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  static boolean checkRequiredPermission(Context paramContext)
  {
    int i = 1;
    int j;
    label13: int k;
    if (paramContext.checkCallingOrSelfPermission("android.permission.INTERNET") == 0)
    {
      j = 1;
      if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0)
        break label86;
      k = 1;
      label24: if (paramContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0)
        break label91;
    }
    for (int l = 1; ; l = 0)
    {
      if (j == 0)
      {
        i = 0;
        Log.e("AirpushSDK", "Required INTERNET permission not found in manifest.");
      }
      if (k == 0)
      {
        i = 0;
        Log.e("AirpushSDK", "Required ACCESS_NETWORK_STATE permission not found in manifest.");
      }
      if (l == 0)
      {
        Log.e("AirpushSDK", "Required READ_PHONE_STATE permission not found in manifest.");
        i = 0;
      }
      return i;
      j = 0;
      break label13:
      label86: k = 0;
      label91: break label24:
    }
  }

  public static void enableSDK(Context paramContext, boolean paramBoolean)
  {
    try
    {
      SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("sdkPrefs", 0).edit();
      localEditor.putBoolean("SDKEnabled", paramBoolean);
      localEditor.commit();
      Log.i("AirpushSDK", "SDK enabled: " + paramBoolean);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  static boolean getDataFromManifest(Context paramContext)
  {
    mContext = paramContext;
    label35: int i;
    try
    {
      mContext.getPackageManager().getApplicationInfo(mContext.getPackageName(), 128);
      label99: Util.setAppID(mAppId);
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      try
      {
        Util.setApiKey(mAppKey);
        Util.printDebugLog("AppId: " + mAppId + " ApiKey=" + mAppKey);
        i = 1;
      }
      catch (Exception localException2)
      {
        Log.e("AirpushSDK", "Problem with fetching apiKey.");
        Util.setApiKey("airpush");
        break label35:
        localNameNotFoundException = localNameNotFoundException;
        Log.e("AirpushSDK", "AppId or ApiKey not found in Manifest. Please add.");
        i = 0;
      }
    }
    catch (Exception localException1)
    {
      localException1.printStackTrace();
      break label99:
    }
    return i;
  }

  public static void hideLoader()
  {
    try
    {
      if (mLoadingDialog != null)
      {
        mLoadingDialog.cancel();
        mLoadingDialog = null;
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static boolean isSDKEnabled(Context paramContext)
  {
    int i;
    try
    {
      SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("sdkPrefs", 0);
      i = 0;
      if (localSharedPreferences != null)
      {
        boolean bool1 = localSharedPreferences.equals(null);
        i = 0;
        if (!(bool1))
        {
          boolean bool2 = localSharedPreferences.contains("SDKEnabled");
          i = 0;
          if (bool2)
          {
            boolean bool3 = localSharedPreferences.getBoolean("SDKEnabled", false);
            i = bool3;
          }
        }
      }
      return i;
    }
    catch (Exception localException)
    {
      Log.i("AirpushSDK", localException.getMessage());
      i = 0;
    }
  }

  static boolean optionalPermissions(Context paramContext)
  {
    mContext = paramContext;
    int i = 1;
    int j;
    label20: int k;
    if (mContext.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0)
    {
      j = 1;
      if (mContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0)
        break label102;
      k = 1;
      label34: if (mContext.checkCallingOrSelfPermission("android.permission.GET_ACCOUNTS") != 0)
        break label107;
    }
    for (int l = 1; ; l = 0)
    {
      if (l == 0)
      {
        i = 0;
        Log.e("AirpushSDK", "Required GET_ACCOUNTS permission not found in manifest.");
      }
      if (j == 0)
      {
        Log.e("AirpushSDK", "Required ACCESS_FINE_LOCATION permission not found in manifest.");
        i = 0;
      }
      if (k == 0)
      {
        Log.e("AirpushSDK", "Required ACCESS_COARSE_LOCATION permission not found in manifest.");
        i = 0;
      }
      return i;
      j = 0;
      break label20:
      label102: k = 0;
      label107: break label34:
    }
  }

  public static void showLoader(Context paramContext)
  {
    try
    {
      if ((mLoadingDialog == null) && (paramContext != null))
      {
        mLoadingDialog = ProgressDialog.show(paramContext, "", "Loading...", true);
        mLoadingDialog.setCancelable(true);
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }

  static void startNewAdThread(boolean paramBoolean)
  {
    try
    {
      new Handler().postDelayed(new Runnable(paramBoolean)
      {
        public void run()
        {
          if (this.val$isOptin)
            SetPreferences.setOptinDialogPref(Airpush.mContext);
          SetPreferences.enableADPref(Airpush.mContext);
        }
      }
      , 3000L);
      return;
    }
    catch (Exception localException)
    {
      Util.printLog("An Error Occured in StartNew thread: " + localException.getMessage());
    }
  }

  // ERROR //
  void parseAppWallJson(String paramString)
  {

  }

  void parseDialogAdJson(String paramString)
  {
    if (paramString == null)
      return;
    label28: label43: label58: label121: JSONObject localJSONObject2;
    label133: label145: String str5;
    label184: String str6;
    label200: String str7;
    label215: String str8;
    label230: String str9;
    label245: String str10;
    label260: Object localObject;
    try
    {
      JSONObject localJSONObject1 = new JSONObject(paramString);
      String str1;
      String str2;
      String str3;
      if (localJSONObject1.isNull("status"))
      {
        str1 = "invalid";
        if (!(localJSONObject1.isNull("message")))
          break label121;
        str2 = "invalid";
        if (!(localJSONObject1.isNull("adtype")))
          break label133;
        str3 = "invalid";
        if ((!(str1.equals("200"))) || (!(str2.equalsIgnoreCase("Success"))))
          return;
        if (!(localJSONObject1.isNull("data")))
          break label145;
      }
      for (String str4 = "nodata"; str4.equals("nodata"); str4 = localJSONObject1.getString("data"))
      {
        return;
        str1 = localJSONObject1.getString("status");
        break label28:
        str2 = localJSONObject1.getString("message");
        break label43:
        str3 = localJSONObject1.getString("adtype");
        break label58:
      }
      localJSONObject2 = new JSONObject(str4);
      if (!(localJSONObject2.isNull("url")))
        break label466;
      str5 = "invalid";
      if (!(localJSONObject2.isNull("title")))
        break label479;
      str6 = "invalid";
      if (!(localJSONObject2.isNull("creativeid")))
        break label492;
      str7 = "";
      if (!(localJSONObject2.isNull("campaignid")))
        break label505;
      str8 = "";
      if (!(localJSONObject2.isNull("sms")))
        break label518;
      str9 = "";
      if (!(localJSONObject2.isNull("number")))
        break label531;
      str10 = "";
      boolean bool = localJSONObject2.isNull("buttontxt");
      if (!(bool))
        break label544;
      localObject = "invalid";
      try
      {
        if (str3.equalsIgnoreCase("invalid"))
          label280: return;
        Intent localIntent = new Intent(mContext, OptinActivity.class);
        localIntent.addFlags(67108864);
        localIntent.addFlags(268435456);
        localIntent.putExtra("url", str5);
        localIntent.putExtra("title", str6);
        localIntent.putExtra("buttontxt", (String)localObject);
        localIntent.putExtra("creativeid", str7);
        localIntent.putExtra("campaignid", str8);
        localIntent.putExtra("sms", str9);
        localIntent.putExtra("number", str10);
        localIntent.putExtra("adtype", str3);
        label518: label531: label544: label466: label479: label492: label505: mContext.startActivity(localIntent);
      }
      catch (Exception localException2)
      {
        Log.e("AirpushSDK", "Required OptinActivity not found in Manifest, Please add.");
      }
    }
    catch (JSONException localJSONException)
    {
      Util.printLog("Error in Dialog Json: " + localJSONException.getMessage());
      return;
      str5 = localJSONObject2.getString("url");
      break label184:
      str6 = localJSONObject2.getString("title");
      break label200:
      str7 = localJSONObject2.getString("creativeid");
      break label215:
      str8 = localJSONObject2.getString("campaignid");
      break label230:
      str9 = localJSONObject2.getString("sms");
      break label245:
      str10 = localJSONObject2.getString("number");
      break label260:
      String str11 = localJSONObject2.getString("buttontxt");
      localObject = str11;
      break label280:
    }
    catch (Exception localException1)
    {
      Util.printLog("Error occured in Dialog Json: " + localException1.getMessage());
    }
  }

  // ERROR //
  void parseLandingPageAdJson(String paramString)
  {
  }

  void sendUserInfo()
  {
    if (isSDKEnabled(mContext));
    try
    {
      new AsyncTaskCompleteListener()
      {
        public void lauchNewHttpTask()
        {
          List localList = SetPreferences.setValues(Airpush.mContext);
          localList.add(new BasicNameValuePair("model", "user"));
          localList.add(new BasicNameValuePair("action", "setuserinfo"));
          localList.add(new BasicNameValuePair("type", "app"));
          Util.printDebugLog("UserInfo Values >>>>>>: " + localList);
          new HttpPostDataTask(Airpush.mContext, localList, "https://api.airpush.com/v2/api.php", this).execute(new Void[0]);
        }

        public void onTaskComplete(String paramString)
        {
          Log.i("AirpushSDK", "User Info Sent.");
          Util.printLog("sendUserInfo >>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + paramString);
          long l = SetPreferences.getAppListStartTime(Airpush.mContext);
          if (((l != 0L) && (l >= System.currentTimeMillis())) || (!(Util.checkInternetConnection(Airpush.mContext))))
            return;
          new SetPreferences(Airpush.mContext).sendAppInfoAsyncTaskCompleteListener.lauchNewHttpTask();
        }
      }
      .lauchNewHttpTask();
      return;
    }
    catch (Exception localException)
    {
      Log.i("Activitymanager", "User Info Sending Failed.....");
      Log.i("Activitymanager", localException.toString());
    }
  }

  public void startAppWall()
  {
    SharedPreferences.Editor localEditor = mContext.getSharedPreferences("enableAdPref", 0).edit();
    localEditor.putBoolean("appwall", true);
    localEditor.commit();
    if ((mContext != null) && (isSDKEnabled(mContext)))
    {
      Util.setContext(mContext);
      if ((getDataFromManifest(mContext)) && (checkRequiredPermission(mContext)));
    }
    while (true)
    {
      return;
      if (!(new UserDetails(mContext).setImeiInMd5()))
        continue;
      new SetPreferences(mContext).setPreferencesData();
      SetPreferences.getDataSharedPrefrences(mContext);
      7 local7 = new AsyncTaskCompleteListener()
      {
        public void lauchNewHttpTask()
        {
          List localList = SetPreferences.setValues(Airpush.mContext);
          Util.printDebugLog("Dialog AD Values: " + localList);
          new HttpPostDataTask(Airpush.mContext, localList, "https://api.airpush.com/appwall/getid.php", this).execute(new Void[0]);
        }

        public void onTaskComplete(String paramString)
        {
          Util.printLog("AppWall Json: " + paramString);
          if (paramString == null);
          while (true)
          {
            return;
            try
            {
              Airpush.this.parseAppWallJson(paramString);
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
            }
          }
        }
      };
      if (!(Util.checkInternetConnection(mContext)))
        continue;
      local7.lauchNewHttpTask();
      continue;
      Log.i("AirpushSDK", "Airpush SDK is disabled Please enable to recive ads.");
    }
  }

  public void startDialogAd()
  {
    SharedPreferences.Editor localEditor = mContext.getSharedPreferences("enableAdPref", 0).edit();
    localEditor.putBoolean("dialogad", true);
    localEditor.commit();
    if ((mContext != null) && (isSDKEnabled(mContext)))
    {
      Util.setContext(mContext);
      if ((getDataFromManifest(mContext)) && (checkRequiredPermission(mContext)));
    }
    while (true)
    {
      return;
      if (!(new UserDetails(mContext).setImeiInMd5()))
        continue;
      new SetPreferences(mContext).setPreferencesData();
      SetPreferences.getDataSharedPrefrences(mContext);
      6 local6 = new AsyncTaskCompleteListener()
      {
        public void lauchNewHttpTask()
        {
          List localList = SetPreferences.setValues(Airpush.mContext);
          Util.printDebugLog("Dialog AD Values: " + localList);
          new HttpPostDataTask(Airpush.mContext, localList, "https://api.airpush.com/dialogad/adcall.php", this).execute(new Void[0]);
        }

        public void onTaskComplete(String paramString)
        {
          Util.printLog("Dialog Json: " + paramString);
          if (paramString == null);
          while (true)
          {
            return;
            try
            {
              Airpush.this.parseDialogAdJson(paramString);
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
            }
          }
        }
      };
      if (!(Util.checkInternetConnection(mContext)))
        continue;
      local6.lauchNewHttpTask();
      continue;
      Log.i("AirpushSDK", "Airpush SDK is disabled Please enable to recive ads.");
    }
  }

  public void startIconAd()
  {
    try
    {
      SharedPreferences.Editor localEditor = mContext.getSharedPreferences("enableAdPref", 0).edit();
      localEditor.putBoolean("icon", true);
      localEditor.commit();
      if ((!(checkRequiredPermission(mContext))) || (!(getDataFromManifest(mContext))))
        return;
      if (!(new UserDetails(mContext).setImeiInMd5()))
        return;
      new SetPreferences(mContext).setPreferencesData();
      SetPreferences.getDataSharedPrefrences(mContext);
      if (mContext.checkCallingOrSelfPermission("com.android.launcher.permission.INSTALL_SHORTCUT") != 0)
        break label147;
      new IconAds(mContext);
    }
    catch (Exception localException)
    {
      Log.i("AirpushSDK", "Error in StartIconAd: " + localException.getMessage());
    }
    label147: Log.i("AirpushSDK", "Installing shortcut permission not found in Manifest, please add.");
  }

  public void startLandingPageAd()
  {
    SharedPreferences.Editor localEditor = mContext.getSharedPreferences("enableAdPref", 0).edit();
    localEditor.putBoolean("landingpagead", true);
    localEditor.commit();
    if ((mContext != null) && (isSDKEnabled(mContext)))
    {
      Util.setContext(mContext);
      if ((getDataFromManifest(mContext)) && (checkRequiredPermission(mContext)));
    }
    while (true)
    {
      return;
      if (!(new UserDetails(mContext).setImeiInMd5()))
        continue;
      new SetPreferences(mContext).setPreferencesData();
      SetPreferences.getDataSharedPrefrences(mContext);
      8 local8 = new AsyncTaskCompleteListener()
      {
        public void lauchNewHttpTask()
        {
          List localList = SetPreferences.setValues(Airpush.mContext);
          Util.printDebugLog("LandingPage AD Values: " + localList);
          new HttpPostDataTask(Airpush.mContext, localList, "https://api.airpush.com/fullpage/adcall.php?", this).execute(new Void[0]);
        }

        public void onTaskComplete(String paramString)
        {
          Util.printLog("LandingPage Json: " + paramString);
          if (paramString == null);
          while (true)
          {
            return;
            try
            {
              Airpush.this.parseLandingPageAdJson(paramString);
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
            }
          }
        }
      };
      if (!(Util.checkInternetConnection(mContext)))
        continue;
      local8.lauchNewHttpTask();
      continue;
      Log.i("AirpushSDK", "Airpush SDK is disabled Please enable to recive ads.");
    }
  }

  public void startPushNotification(boolean paramBoolean)
  {
    try
    {
      SharedPreferences.Editor localEditor = mContext.getSharedPreferences("enableAdPref", 0).edit();
      localEditor.putBoolean("doPush", true);
      localEditor.putBoolean("testMode", paramBoolean);
      localEditor.commit();
      if ((checkRequiredPermission(mContext)) && (getDataFromManifest(mContext)))
      {
        Util.setTestmode(paramBoolean);
        Util.setDoPush(true);
        new PushNotification(mContext).startAirpush();
      }
      return;
    }
    catch (Exception localException)
    {
      Util.printLog("Error in Start Push Notification: " + localException.getMessage());
    }
  }

  public void startSmartWallAd()
  {
    SharedPreferences.Editor localEditor = mContext.getSharedPreferences("enableAdPref", 0).edit();
    localEditor.putBoolean("interstitialads", true);
    localEditor.commit();
    if ((mContext != null) && (isSDKEnabled(mContext)))
    {
      Util.setContext(mContext);
      if ((getDataFromManifest(mContext)) && (checkRequiredPermission(mContext)));
    }
    while (true)
    {
      return;
      if (!(new UserDetails(mContext).setImeiInMd5()))
        continue;
      new SetPreferences(mContext).setPreferencesData();
      SetPreferences.getDataSharedPrefrences(mContext);
      5 local5 = new AsyncTaskCompleteListener()
      {
        public void lauchNewHttpTask()
        {
          Airpush.showLoader(Airpush.mContext);
          List localList = SetPreferences.setValues(Airpush.mContext);
          Util.printDebugLog("Interstitial values: " + localList);
          new HttpPostDataTask(Airpush.mContext, localList, "https://api.airpush.com/lp/getinterstitialads.php", this).execute(new Void[0]);
        }

        public void onTaskComplete(String paramString)
        {
          Airpush.hideLoader();
          Util.printLog("Interstitial JSON: " + paramString);
          if (paramString == null)
            label26: return;
          String str;
          try
          {
            JSONObject localJSONObject = new JSONObject(paramString);
            if (localJSONObject.isNull("adtype"));
            for (str = ""; (!(str.equals(""))) && (str.equalsIgnoreCase("AW")); str = localJSONObject.getString("adtype"))
            {
              Airpush.this.parseAppWallJson(paramString);
              label77: Airpush.hideLoader();
              break label26:
            }
            if ((str.equals("")) || ((!(str.equalsIgnoreCase("DAU"))) && (!(str.equalsIgnoreCase("DCC"))) && (!(str.equalsIgnoreCase("DCM")))))
              break label176;
            label176: Airpush.this.parseDialogAdJson(paramString);
          }
          catch (JSONException localJSONException)
          {
            Airpush.hideLoader();
            Util.printLog("Error in Smart Wall json: " + localJSONException.getMessage());
            break label77:
            if ((!(str.equals(""))) && (str.equalsIgnoreCase("FP")));
            Airpush.this.parseLandingPageAdJson(paramString);
          }
          catch (Exception localException)
          {
            Airpush.hideLoader();
            Util.printLog("Error occured in Smart Wall: " + localException.getMessage());
          }
        }
      };
      if (!(Util.checkInternetConnection(mContext)))
        continue;
      local5.lauchNewHttpTask();
      continue;
      Log.i("AirpushSDK", "Airpush SDK is disabled Please enable to recive ads.");
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.airpush.android.Airpush
 * JD-Core Version:    0.5.3
 */