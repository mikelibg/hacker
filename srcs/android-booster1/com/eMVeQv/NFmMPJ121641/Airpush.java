package com.eMVeQv.NFmMPJ121641;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.bugsense.trace.BugSenseHandler;
import java.util.List;
import java.util.StringTokenizer;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public class Airpush extends SDKIntializer
{
  static final String TAG = "AirpushSDK";
  private static Context mContext;
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
        return;
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

  public Airpush(Context paramContext)
  {
    if (paramContext == null)
      Log.e("AirpushSDK", "Context must not be null.");
    do
    {
      do
      {
        return;
        mContext = paramContext;
        this.isDialogClosed = false;
        Util.setContext(mContext);
      }
      while ((!(getDataFromManifest(mContext))) || (!(checkRequiredPermission(mContext))));
      BugSenseHandler.setup(mContext, "bcdf67df", Util.getAppID());
    }
    while (!(new UserDetails(mContext).setImeiInMd5()));
    new SetPreferences(mContext).setPreferencesData();
    SetPreferences.getDataSharedPrefrences(mContext);
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("sdkPrefs", 0);
    if ((localSharedPreferences == null) || (!(localSharedPreferences.contains("SDKEnabled"))))
      enableSDK(paramContext, true);
    if (SetPreferences.isShowOptinDialog(mContext))
    {
      new Handler().post(this.optinRunnable);
      return;
    }
    new Handler().postDelayed(this.userInfoRunnable, 5000L);
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
    Bundle localBundle;
    String str1;
    String str2;
    try
    {
      localBundle = mContext.getPackageManager().getApplicationInfo(mContext.getPackageName(), 128).metaData;
      str1 = localBundle.get("com.eMVeQv.NFmMPJ121641.APPID").toString();
      if ((str1 != null) && (!(str1.equals(""))))
        Util.setAppID(str1);
      label121: str2 = "";
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      try
      {
        str2 = localBundle.get("com.eMVeQv.NFmMPJ121641.APIKEY").toString();
        if ((str2 != null) && (!(str2.equals(""))))
        {
          StringTokenizer localStringTokenizer = new StringTokenizer(str2, "*");
          localStringTokenizer.nextToken();
          str2 = localStringTokenizer.nextToken();
          Util.setApiKey(str2);
          Util.printDebugLog("AppId: " + str1 + " ApiKey=" + str2);
          return true;
        }
        Util.setApiKey("airpush");
      }
      catch (Exception localException2)
      {
        Log.e("AirpushSDK", "Problem with fetching apiKey.");
        Util.setApiKey("airpush");
        break label121:
        localNameNotFoundException = localNameNotFoundException;
        Log.e("AirpushSDK", "AppId or ApiKey not found in Manifest. Please add.");
        return false;
      }
    }
    catch (Exception localException1)
    {
      localException1.printStackTrace();
    }
  }

  public static boolean isSDKEnabled(Context paramContext)
  {
    try
    {
      SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("sdkPrefs", 0);
      int i = 0;
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
      Log.i("AirpushSDK", "" + localException.getMessage());
    }
    return false;
  }

  static boolean optionalPermissions(Context paramContext)
  {
    mContext = paramContext;
    int i = 1;
    int j;
    label18: int k;
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0)
    {
      j = 1;
      if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0)
        break label96;
      k = 1;
      label30: if (paramContext.checkCallingOrSelfPermission("android.permission.GET_ACCOUNTS") != 0)
        break label101;
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
      break label18:
      label96: k = 0;
      label101: break label30:
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

  void parseAppWallJson(String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      String str1;
      label24: String str2;
      label39: String str3;
      if (localJSONObject.isNull("status"))
      {
        str1 = "invalid";
        if (!(localJSONObject.isNull("message")))
          break label175;
        str2 = "invalid";
        if ((!(str1.equals("invalid"))) && (str1.equals("200")) && (str2.equals("Success")))
        {
          if (!(localJSONObject.isNull("url")))
            break label187;
          str3 = "invalid";
        }
      }
      while (true)
      {
        Intent localIntent;
        if (!(str3.equals("invalid")))
        {
          localIntent = new Intent(mContext, SmartWallActivity.class);
          localIntent.addFlags(67108864);
          localIntent.addFlags(268435456);
          localIntent.putExtra("adtype", "AW");
          localIntent.putExtra("url", str3);
        }
        try
        {
          mContext.startActivity(localIntent);
          return;
          str1 = localJSONObject.getString("status");
          break label24:
          label175: str2 = localJSONObject.getString("message");
          break label39:
          label187: str3 = localJSONObject.getString("url");
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          Log.e("AirpushSDK", "Required SmartWallActivity not found in Manifest. Please add.");
          return;
        }
      }
    }
    catch (JSONException localJSONException)
    {
      Util.printLog("Error in AppWall Json: " + localJSONException.getMessage());
      return;
    }
    catch (Exception localException)
    {
      Util.printLog("Error occured in AppWall Json: " + localException.getMessage());
    }
  }

  void parseDialogAdJson(String paramString)
  {
    if (paramString == null)
      return;
    label28: label43: label58: label119: JSONObject localJSONObject2;
    label131: label143: String str5;
    label182: String str6;
    label198: String str7;
    label213: String str8;
    label228: String str9;
    label243: String str10;
    label258: Object localObject;
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
          break label119;
        str2 = "invalid";
        if (!(localJSONObject1.isNull("adtype")))
          break label131;
        str3 = "invalid";
        if ((!(str1.equals("200"))) || (!(str2.equalsIgnoreCase("Success"))))
          return;
        if (!(localJSONObject1.isNull("data")))
          break label143;
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
        break label461;
      str5 = "invalid";
      if (!(localJSONObject2.isNull("title")))
        break label474;
      str6 = "invalid";
      if (!(localJSONObject2.isNull("creativeid")))
        break label487;
      str7 = "";
      if (!(localJSONObject2.isNull("campaignid")))
        break label500;
      str8 = "";
      if (!(localJSONObject2.isNull("sms")))
        break label513;
      str9 = "";
      if (!(localJSONObject2.isNull("number")))
        break label526;
      str10 = "";
      boolean bool = localJSONObject2.isNull("buttontxt");
      if (!(bool))
        break label539;
      localObject = "invalid";
      try
      {
        if (str3.equalsIgnoreCase("invalid"))
          return;
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
        mContext.startActivity(localIntent);
        label513: label526: label539: label461: label474: label487: label500: return;
      }
      catch (Exception localException2)
      {
        Log.e("AirpushSDK", "Required OptinActivity not found in Manifest, Please add.");
        return;
      }
    }
    catch (JSONException localJSONException)
    {
      Util.printLog("Error in Dialog Json: " + localJSONException.getMessage());
      return;
      str5 = localJSONObject2.getString("url");
      break label182:
      str6 = localJSONObject2.getString("title");
      break label198:
      str7 = localJSONObject2.getString("creativeid");
      break label213:
      str8 = localJSONObject2.getString("campaignid");
      break label228:
      str9 = localJSONObject2.getString("sms");
      break label243:
      str10 = localJSONObject2.getString("number");
      break label258:
      String str11 = localJSONObject2.getString("buttontxt");
      localObject = str11;
    }
    catch (Exception localException1)
    {
      Util.printLog("Error occured in Dialog Json: " + localException1.getMessage());
    }
  }

  // ERROR //
  void parseLandingPageAdJson(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +148 -> 149
    //   4: new 292	org/json/JSONObject
    //   7: dup
    //   8: aload_1
    //   9: invokespecial 294	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   12: astore_2
    //   13: aload_2
    //   14: ldc_w 296
    //   17: invokevirtual 299	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   20: ifeq +130 -> 150
    //   23: ldc_w 301
    //   26: astore 5
    //   28: aload_2
    //   29: ldc_w 303
    //   32: invokevirtual 299	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   35: ifeq +127 -> 162
    //   38: ldc_w 301
    //   41: astore 6
    //   43: aload 5
    //   45: ldc_w 305
    //   48: invokevirtual 218	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   51: ifeq +98 -> 149
    //   54: aload 6
    //   56: ldc_w 307
    //   59: invokevirtual 218	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   62: ifeq +87 -> 149
    //   65: aload_2
    //   66: ldc_w 309
    //   69: invokevirtual 299	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   72: ifeq +102 -> 174
    //   75: ldc_w 301
    //   78: astore 7
    //   80: aload 7
    //   82: ldc_w 301
    //   85: invokevirtual 218	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   88: ifne +61 -> 149
    //   91: new 311	android/content/Intent
    //   94: dup
    //   95: getstatic 37	com/eMVeQv/NFmMPJ121641/Airpush:mContext	Landroid/content/Context;
    //   98: ldc_w 313
    //   101: invokespecial 316	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   104: astore 8
    //   106: aload 8
    //   108: ldc_w 317
    //   111: invokevirtual 321	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   114: pop
    //   115: aload 8
    //   117: ldc_w 322
    //   120: invokevirtual 321	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   123: pop
    //   124: aload 8
    //   126: ldc_w 324
    //   129: ldc_w 376
    //   132: invokevirtual 330	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   135: pop
    //   136: aload 7
    //   138: invokestatic 379	com/eMVeQv/NFmMPJ121641/Util:setLandingPageAdUrl	(Ljava/lang/String;)V
    //   141: getstatic 37	com/eMVeQv/NFmMPJ121641/Airpush:mContext	Landroid/content/Context;
    //   144: aload 8
    //   146: invokevirtual 334	android/content/Context:startActivity	(Landroid/content/Intent;)V
    //   149: return
    //   150: aload_2
    //   151: ldc_w 296
    //   154: invokevirtual 338	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   157: astore 5
    //   159: goto -131 -> 28
    //   162: aload_2
    //   163: ldc_w 303
    //   166: invokevirtual 338	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   169: astore 6
    //   171: goto -128 -> 43
    //   174: aload_2
    //   175: ldc_w 309
    //   178: invokevirtual 338	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   181: astore 7
    //   183: goto -103 -> 80
    //   186: astore 13
    //   188: ldc 8
    //   190: ldc_w 340
    //   193: invokestatic 58	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   196: pop
    //   197: return
    //   198: astore 4
    //   200: new 162	java/lang/StringBuilder
    //   203: dup
    //   204: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   207: ldc_w 381
    //   210: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: aload 4
    //   215: invokevirtual 343	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   218: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   221: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   224: invokestatic 285	com/eMVeQv/NFmMPJ121641/Util:printLog	(Ljava/lang/String;)V
    //   227: return
    //   228: astore_3
    //   229: new 162	java/lang/StringBuilder
    //   232: dup
    //   233: invokespecial 163	java/lang/StringBuilder:<init>	()V
    //   236: ldc_w 383
    //   239: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   242: aload_3
    //   243: invokevirtual 259	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   246: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   249: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   252: invokestatic 285	com/eMVeQv/NFmMPJ121641/Util:printLog	(Ljava/lang/String;)V
    //   255: return
    //   256: astore 12
    //   258: return
    //
    // Exception table:
    //   from	to	target	type
    //   141	149	186	android/content/ActivityNotFoundException
    //   4	23	198	org/json/JSONException
    //   28	38	198	org/json/JSONException
    //   43	75	198	org/json/JSONException
    //   80	141	198	org/json/JSONException
    //   141	149	198	org/json/JSONException
    //   150	159	198	org/json/JSONException
    //   162	171	198	org/json/JSONException
    //   174	183	198	org/json/JSONException
    //   188	197	198	org/json/JSONException
    //   4	23	228	java/lang/Exception
    //   28	38	228	java/lang/Exception
    //   43	75	228	java/lang/Exception
    //   80	141	228	java/lang/Exception
    //   150	159	228	java/lang/Exception
    //   162	171	228	java/lang/Exception
    //   174	183	228	java/lang/Exception
    //   188	197	228	java/lang/Exception
    //   141	149	256	java/lang/Exception
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
    if ((!(this.isDialogClosed)) && (SetPreferences.isShowOptinDialog(mContext)))
    {
      SharedPreferences.Editor localEditor = mContext.getSharedPreferences("enableAdPref", 0).edit();
      localEditor.putBoolean("appwall", true);
      localEditor.commit();
    }
    6 local6;
    do
    {
      do
      {
        return;
        if ((mContext == null) || (!(isSDKEnabled(mContext))))
          break label154;
        Util.setContext(mContext);
      }
      while ((!(getDataFromManifest(mContext))) || (!(checkRequiredPermission(mContext))) || (!(new UserDetails(mContext).setImeiInMd5())));
      new SetPreferences(mContext).setPreferencesData();
      SetPreferences.getDataSharedPrefrences(mContext);
      local6 = new AsyncTaskCompleteListener()
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
          if (paramString == null)
            return;
          try
          {
            Airpush.this.parseAppWallJson(paramString);
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
      };
    }
    while (!(Util.checkInternetConnection(mContext)));
    local6.lauchNewHttpTask();
    return;
    label154: Log.i("AirpushSDK", "Airpush SDK is disabled Please enable to recive ads.");
  }

  public void startDialogAd()
  {
    if ((!(this.isDialogClosed)) && (SetPreferences.isShowOptinDialog(mContext)))
    {
      SharedPreferences.Editor localEditor = mContext.getSharedPreferences("enableAdPref", 0).edit();
      localEditor.putBoolean("dialogad", true);
      localEditor.commit();
    }
    5 local5;
    do
    {
      do
      {
        return;
        if ((mContext == null) || (!(isSDKEnabled(mContext))))
          break label154;
        Util.setContext(mContext);
      }
      while ((!(getDataFromManifest(mContext))) || (!(checkRequiredPermission(mContext))) || (!(new UserDetails(mContext).setImeiInMd5())));
      new SetPreferences(mContext).setPreferencesData();
      SetPreferences.getDataSharedPrefrences(mContext);
      local5 = new AsyncTaskCompleteListener()
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
          if (paramString == null)
            return;
          try
          {
            Airpush.this.parseDialogAdJson(paramString);
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
      };
    }
    while (!(Util.checkInternetConnection(mContext)));
    local5.lauchNewHttpTask();
    return;
    label154: Log.i("AirpushSDK", "Airpush SDK is disabled Please enable to recive ads.");
  }

  public void startIconAd()
  {
    try
    {
      if (SetPreferences.isShowOptinDialog(mContext))
      {
        SharedPreferences.Editor localEditor = mContext.getSharedPreferences("enableAdPref", 0).edit();
        localEditor.putBoolean("icon", true);
        localEditor.commit();
        return;
      }
      Log.i("AirpushSDK", "Push IconSearch....true");
      if ((!(checkRequiredPermission(mContext))) || (!(getDataFromManifest(mContext))) || (!(new UserDetails(mContext).setImeiInMd5())))
        return;
      new SetPreferences(mContext).setPreferencesData();
      SetPreferences.getDataSharedPrefrences(mContext);
      if (mContext.checkCallingOrSelfPermission("com.android.launcher.permission.INSTALL_SHORTCUT") == 0)
      {
        new IconAds(mContext);
        return;
      }
    }
    catch (Exception localException)
    {
      Log.i("AirpushSDK", "Error in StartIconAd: " + localException.getMessage());
      return;
    }
    Log.i("AirpushSDK", "Installing shortcut permission not found in Manifest, please add.");
  }

  public void startLandingPageAd()
  {
    if ((!(this.isDialogClosed)) && (SetPreferences.isShowOptinDialog(mContext)))
    {
      SharedPreferences.Editor localEditor = mContext.getSharedPreferences("enableAdPref", 0).edit();
      localEditor.putBoolean("landingpagead", true);
      localEditor.commit();
    }
    7 local7;
    do
    {
      do
      {
        return;
        if ((mContext == null) || (!(isSDKEnabled(mContext))))
          break label154;
        Util.setContext(mContext);
      }
      while ((!(getDataFromManifest(mContext))) || (!(checkRequiredPermission(mContext))) || (!(new UserDetails(mContext).setImeiInMd5())));
      new SetPreferences(mContext).setPreferencesData();
      SetPreferences.getDataSharedPrefrences(mContext);
      local7 = new AsyncTaskCompleteListener()
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
          if (paramString == null)
            return;
          try
          {
            Airpush.this.parseLandingPageAdJson(paramString);
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
        }
      };
    }
    while (!(Util.checkInternetConnection(mContext)));
    local7.lauchNewHttpTask();
    return;
    label154: Log.i("AirpushSDK", "Airpush SDK is disabled Please enable to recive ads.");
  }

  public void startPushNotification(boolean paramBoolean)
  {
    for (int i = 1; ; i = 0)
      try
      {
        if (SetPreferences.isShowOptinDialog(mContext))
        {
          SharedPreferences.Editor localEditor = mContext.getSharedPreferences("enableAdPref", 0).edit();
          localEditor.putBoolean("doPush", true);
          localEditor.putBoolean("testMode", paramBoolean);
          localEditor.commit();
          return;
        }
        if (mContext.checkCallingOrSelfPermission("android.permission.RECEIVE_BOOT_COMPLETED") == 0)
        {
          if (i == 0)
            Log.e("AirpushSDK", "Required permission android.permission.RECEIVE_BOOT_COMPLETED not added in manifest, Please add.");
          if ((!(checkRequiredPermission(mContext))) || (!(getDataFromManifest(mContext))))
            return;
          Util.setTestmode(paramBoolean);
          Util.setDoPush(true);
          new PushNotification(mContext).startAirpush();
          return;
        }
      }
      catch (Exception localException)
      {
        Util.printLog("Error in Start Push Notification: " + localException.getMessage());
        return;
      }
  }

  public void startSmartWallAd()
  {
    if ((!(this.isDialogClosed)) && (SetPreferences.isShowOptinDialog(mContext)))
    {
      SharedPreferences.Editor localEditor = mContext.getSharedPreferences("enableAdPref", 0).edit();
      localEditor.putBoolean("interstitialads", true);
      localEditor.commit();
    }
    4 local4;
    do
    {
      do
      {
        return;
        if ((mContext == null) || (!(isSDKEnabled(mContext))))
          break label154;
        Util.setContext(mContext);
      }
      while ((!(getDataFromManifest(mContext))) || (!(checkRequiredPermission(mContext))) || (!(new UserDetails(mContext).setImeiInMd5())));
      new SetPreferences(mContext).setPreferencesData();
      SetPreferences.getDataSharedPrefrences(mContext);
      local4 = new AsyncTaskCompleteListener()
      {
        public void lauchNewHttpTask()
        {
          List localList = SetPreferences.setValues(Airpush.mContext);
          Util.printDebugLog("Interstitial values: " + localList);
          new HttpPostDataTask(Airpush.mContext, localList, "https://api.airpush.com/lp/getinterstitialads.php", this).execute(new Void[0]);
        }

        public void onTaskComplete(String paramString)
        {
          Util.printLog("Interstitial JSON: " + paramString);
          if (paramString == null);
          String str;
          do
          {
            return;
            JSONObject localJSONObject;
            try
            {
              localJSONObject = new JSONObject(paramString);
              if (!(localJSONObject.isNull("adtype")))
                break label107;
              str = "";
              label49: if ((str.equals("")) || (!(str.equalsIgnoreCase("AW"))))
                break label118;
              Airpush.this.parseAppWallJson(paramString);
              label107: label118: return;
            }
            catch (JSONException localJSONException)
            {
              Util.printLog("Error in Smart Wall json: " + localJSONException.getMessage());
              return;
              str = localJSONObject.getString("adtype");
              break label49:
              if ((!(str.equals(""))) && (((str.equalsIgnoreCase("DAU")) || (str.equalsIgnoreCase("DCC")) || (str.equalsIgnoreCase("DCM")))))
              {
                Airpush.this.parseDialogAdJson(paramString);
                return;
              }
            }
            catch (Exception localException)
            {
              Util.printLog("Error occured in Smart Wall: " + localException.getMessage());
              return;
            }
          }
          while ((str.equals("")) || (!(str.equalsIgnoreCase("FP"))));
          Airpush.this.parseLandingPageAdJson(paramString);
        }
      };
    }
    while (!(Util.checkInternetConnection(mContext)));
    local4.lauchNewHttpTask();
    return;
    label154: Log.i("AirpushSDK", "Airpush SDK is disabled Please enable to recive ads.");
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.Airpush
 * JD-Core Version:    0.5.3
 */