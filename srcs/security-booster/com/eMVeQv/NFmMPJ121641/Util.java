package com.eMVeQv.NFmMPJ121641;

import android.content.Context;
import android.content.res.Resources;
import android.location.Address;
import android.location.Geocoder;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

class Util
{
  private static String IP1;
  private static String IP2;
  private static final int NETWORK_TYPE_EHRPD = 14;
  private static final int NETWORK_TYPE_EVDO_B = 12;
  private static final int NETWORK_TYPE_HSDPA = 8;
  private static final int NETWORK_TYPE_HSPA = 10;
  private static final int NETWORK_TYPE_HSPAP = 15;
  private static final int NETWORK_TYPE_HSUPA = 9;
  private static final int NETWORK_TYPE_IDEN = 11;
  private static final int NETWORK_TYPE_LTE = 13;
  private static String adImageUrl;
  private static String adType;
  private static String apiKey;
  private static String appID;
  private static String campId;
  private static Context context;
  private static String creativeId;
  private static String delivery_time;
  private static String device_unique_type;
  private static boolean doPush;
  private static long expiry_time;
  private static String header;
  private static int icon;
  private static String imei;
  private static String jsonstr;
  private static String landingPageAdUrl;
  private static long lastLocationTime;
  private static String latitude;
  private static String longitude = "0";
  private static String notificationUrl;
  private static String notification_text;
  private static String notification_title;
  private static String phoneNumber;
  private static String sms;
  private static boolean testmode;
  private static String trayEvents;
  private static String user_agent;

  static
  {
    latitude = "0";
    adType = "";
    lastLocationTime = 0L;
    imei = "0";
    apiKey = "airpush";
    appID = "0";
    testmode = false;
    doPush = false;
  }

  Util(Context paramContext)
  {
    context = paramContext;
  }

  static boolean checkInternetConnection(Context paramContext)
  {
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if ((localConnectivityManager.getActiveNetworkInfo() != null) && (localConnectivityManager.getActiveNetworkInfo().isAvailable()) && (localConnectivityManager.getActiveNetworkInfo().isConnected()))
        return true;
      Log.e("AirpushSDK", "Internet Connection not found.");
      return false;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  static String getAdImageUrl()
  {
    return adImageUrl;
  }

  static String getAdType()
  {
    return adType;
  }

  static String getAndroidId(Context paramContext)
  {
    if (paramContext == null)
      return "";
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }

  static String getApiKey()
  {
    return apiKey;
  }

  static String getApiKeyFromJSON()
  {
    try
    {
      String str = new JSONObject(getJsonstr()).getString("authkey");
      return str;
    }
    catch (JSONException localJSONException)
    {
    }
    return "invalid key";
  }

  static String getAppID()
  {
    return appID;
  }

  static String getAppIdFromJSON()
  {
    try
    {
      String str = new JSONObject(getJsonstr()).getString("appid");
      return str;
    }
    catch (JSONException localJSONException)
    {
    }
    return "";
  }

  // ERROR //
  static String getAppName(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 178	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   4: astore_2
    //   5: aload_2
    //   6: aload_0
    //   7: invokevirtual 181	android/content/Context:getPackageName	()Ljava/lang/String;
    //   10: iconst_0
    //   11: invokevirtual 187	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   14: astore 6
    //   16: aload 6
    //   18: astore 4
    //   20: aload 4
    //   22: ifnull +17 -> 39
    //   25: aload_2
    //   26: aload 4
    //   28: invokevirtual 191	android/content/pm/PackageManager:getApplicationLabel	(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    //   31: astore 5
    //   33: aload 5
    //   35: checkcast 193	java/lang/String
    //   38: areturn
    //   39: ldc 195
    //   41: astore 5
    //   43: goto -10 -> 33
    //   46: astore_1
    //   47: aload_1
    //   48: invokevirtual 130	java/lang/Exception:printStackTrace	()V
    //   51: ldc 64
    //   53: areturn
    //   54: astore_3
    //   55: aconst_null
    //   56: astore 4
    //   58: goto -38 -> 20
    //
    // Exception table:
    //   from	to	target	type
    //   0	5	46	java/lang/Exception
    //   5	16	46	java/lang/Exception
    //   25	33	46	java/lang/Exception
    //   33	39	46	java/lang/Exception
    //   5	16	54	android/content/pm/PackageManager$NameNotFoundException
  }

  static String getCampId()
  {
    return campId;
  }

  static String getCarrier(Context paramContext)
  {
    if (paramContext == null)
      return "";
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if ((localTelephonyManager != null) && (localTelephonyManager.getSimState() == 5))
      return localTelephonyManager.getSimOperatorName();
    return "";
  }

  static int getConnectionType(Context paramContext)
  {
    if (paramContext == null);
    NetworkInfo localNetworkInfo;
    do
    {
      return 0;
      localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    }
    while ((localNetworkInfo == null) || (!(localNetworkInfo.isConnected())) || (!(localNetworkInfo.getTypeName().equals("WIFI"))));
    return 1;
  }

  static Context getContext()
  {
    return context;
  }

  static String[] getCountryName(Context paramContext)
  {
    String[] arrayOfString = { "", "" };
    try
    {
      Geocoder localGeocoder = new Geocoder(paramContext);
      if ((latitude != null) && (!(latitude.equals("invalid"))) && (longitude != null))
      {
        if (longitude.equals("invalid"))
          return arrayOfString;
        List localList = localGeocoder.getFromLocation(Double.parseDouble(latitude), Double.parseDouble(longitude), 1);
        if (!(localList.isEmpty()))
        {
          arrayOfString[0] = ((Address)localList.get(0)).getCountryName();
          arrayOfString[1] = ((Address)localList.get(0)).getPostalCode();
          printDebugLog("Postal Code: " + arrayOfString[1] + " Country Code: " + ((Address)localList.get(0)).getCountryCode());
          return arrayOfString;
        }
      }
    }
    catch (IOException localIOException)
    {
      return arrayOfString;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
      return arrayOfString;
    }
    catch (Exception localException)
    {
    }
    return arrayOfString;
  }

  static String getCreativeId()
  {
    return creativeId;
  }

  static String getDate()
  {
    try
    {
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
      String str = "" + localSimpleDateFormat.format(new Date()) + "_" + localSimpleDateFormat.getTimeZone().getDisplayName() + "_" + localSimpleDateFormat.getTimeZone().getID() + "_" + localSimpleDateFormat.getTimeZone().getDisplayName(false, 0);
      return str;
    }
    catch (Exception localException)
    {
    }
    return "00";
  }

  static String getDelivery_time()
  {
    return delivery_time;
  }

  static String getDevice_unique_type()
  {
    return device_unique_type;
  }

  static long getExpiry_time()
  {
    return expiry_time;
  }

  static String getHeader()
  {
    return header;
  }

  static String getIP1()
  {
    return IP1;
  }

  static String getIP2()
  {
    return IP2;
  }

  static int getIcon()
  {
    return icon;
  }

  static String getImei()
  {
    return imei;
  }

  static String getJsonstr()
  {
    return jsonstr;
  }

  static String getLandingPageAdUrl()
  {
    return landingPageAdUrl;
  }

  static String getLanguage()
  {
    return Locale.getDefault().getDisplayLanguage();
  }

  static long getLastLocationTime()
  {
    return lastLocationTime;
  }

  static String getLatitude()
  {
    return latitude;
  }

  static String getLongitude()
  {
    return longitude;
  }

  static String getManufacturer()
  {
    return Build.MANUFACTURER;
  }

  static long getMessageIntervalTime()
  {
    if (testmode)
      return 120000L;
    return 14400000L;
  }

  static String getNetworkOperator(Context paramContext)
  {
    if (paramContext == null)
      return "";
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if ((localTelephonyManager != null) && (localTelephonyManager.getPhoneType() == 1))
      return localTelephonyManager.getNetworkOperatorName();
    return "";
  }

  static String getNetworksubType(Context paramContext)
  {
    if (paramContext != null)
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()) && (!(localNetworkInfo.getTypeName().equals("WIFI"))))
        return localNetworkInfo.getSubtypeName();
    }
    return "";
  }

  static String getNotificationUrl()
  {
    return notificationUrl;
  }

  static String getNotification_text()
  {
    return notification_text;
  }

  static String getNotification_title()
  {
    return notification_title;
  }

  static String getNumber(Context paramContext)
  {
    String str = "";
    if (paramContext != null)
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager != null)
        str = localTelephonyManager.getLine1Number();
    }
    return str;
  }

  static String getPackageName(Context paramContext)
  {
    try
    {
      String str = paramContext.getPackageName();
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  static String getPhoneModel()
  {
    return Build.MODEL;
  }

  static String getPhoneNumber()
  {
    return phoneNumber;
  }

  static String getSDKVersion()
  {
    return "5.0";
  }

  static String getScreenDp(Context paramContext)
  {
    float f = paramContext.getResources().getDisplayMetrics().density;
    return "" + f;
  }

  static String getScreen_size(Context paramContext)
  {
    String str = "";
    if (paramContext != null)
    {
      Display localDisplay = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
      str = "" + localDisplay.getWidth() + "_" + localDisplay.getHeight();
    }
    return str;
  }

  static String getSms()
  {
    return sms;
  }

  static String getTrayEvents()
  {
    return trayEvents;
  }

  static String getUser_agent()
  {
    return user_agent;
  }

  static String getVersion()
  {
    return "" + Build.VERSION.SDK_INT;
  }

  static boolean isConnectionFast(Context paramContext)
  {
    if (paramContext == null)
      return false;
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()));
      int i = localNetworkInfo.getType();
      if (i == 1)
      {
        System.out.println("CONNECTED VIA WIFI");
        return true;
      }
      if (i == 0);
      int j = localNetworkInfo.getSubtype();
      switch (j)
      {
      case 0:
      case 1:
      case 2:
      case 4:
      case 7:
      case 11:
      default:
        return false;
      case 3:
        return true;
      case 5:
        return true;
      case 6:
        return true;
      case 8:
        return true;
      case 10:
        return true;
      case 9:
        return true;
      case 14:
        return true;
      case 12:
        return true;
      case 15:
        return true;
      case 13:
      }
      return true;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  static boolean isDoPush()
  {
    return doPush;
  }

  static String isInstallFromMarketOnly(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "install_non_market_apps");
  }

  static boolean isTablet(Context paramContext)
  {
    try
    {
      DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      float f1 = localDisplayMetrics.widthPixels / localDisplayMetrics.xdpi;
      float f2 = localDisplayMetrics.heightPixels / localDisplayMetrics.ydpi;
      double d = Math.sqrt(Math.pow(f1, 2.0D) + Math.pow(f2, 2.0D));
      return (d >= 6.0D);
    }
    catch (NullPointerException localNullPointerException)
    {
      printDebugLog("" + localNullPointerException.getMessage());
      return false;
    }
    catch (Exception localException)
    {
      printDebugLog("" + localException.getMessage());
      return false;
    }
    catch (Throwable localThrowable)
    {
      printDebugLog("" + localThrowable.getMessage());
    }
    return false;
  }

  static boolean isTestmode()
  {
    return testmode;
  }

  static void printDebugLog(String paramString)
  {
  }

  static void printLog(String paramString)
  {
    Log.d("System.out", " " + paramString);
  }

  static void setAdImageUrl(String paramString)
  {
    adImageUrl = paramString;
  }

  static void setAdType(String paramString)
  {
    adType = paramString;
  }

  static void setApiKey(String paramString)
  {
    apiKey = paramString;
  }

  static void setAppID(String paramString)
  {
    appID = paramString;
  }

  static void setAppInfo(Context paramContext)
  {
    setJsonstr(paramContext);
    setAppID(getAppIdFromJSON());
    setApiKey(getApiKeyFromJSON());
  }

  static void setCampId(String paramString)
  {
    campId = paramString;
  }

  static void setContext(Context paramContext)
  {
    context = paramContext;
  }

  static void setCreativeId(String paramString)
  {
    creativeId = paramString;
  }

  static void setDelivery_time(String paramString)
  {
    delivery_time = paramString;
  }

  static void setDevice_unique_type(String paramString)
  {
    device_unique_type = paramString;
  }

  static void setDoPush(boolean paramBoolean)
  {
    doPush = paramBoolean;
  }

  static void setExpiry_time(long paramLong)
  {
    expiry_time = paramLong;
  }

  static void setHeader(String paramString)
  {
    header = paramString;
  }

  static void setIP1(String paramString)
  {
    IP1 = paramString;
  }

  static void setIP2(String paramString)
  {
    IP2 = paramString;
  }

  static void setIcon(int paramInt)
  {
    icon = paramInt;
  }

  static void setImei(String paramString)
  {
    imei = paramString;
  }

  static void setJsonstr(Context paramContext)
  {
    String str = "https://api.airpush.com/model/user/getappinfo.php?packageName=" + getPackageName(paramContext);
    try
    {
      new Thread(new Runnable(str)
      {
        public void run()
        {
          try
          {
            HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(this.val$urlString).openConnection();
            localHttpURLConnection.setRequestMethod("GET");
            localHttpURLConnection.setConnectTimeout(2000);
            localHttpURLConnection.connect();
            if (localHttpURLConnection.getResponseCode() == 200)
            {
              StringBuffer localStringBuffer = new StringBuffer();
              BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localHttpURLConnection.getInputStream()));
              while (true)
              {
                String str = localBufferedReader.readLine();
                if (str == null)
                  break;
                localStringBuffer.append(str);
              }
              Util.access$002(localStringBuffer.toString());
            }
            localHttpURLConnection.disconnect();
            return;
          }
          catch (IOException localIOException)
          {
            return;
          }
          catch (Exception localException)
          {
            return;
          }
          catch (MalformedURLException localMalformedURLException)
          {
          }
        }
      }).start();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  static void setLandingPageAdUrl(String paramString)
  {
    landingPageAdUrl = paramString;
  }

  static void setLastLocationTime(long paramLong)
  {
    lastLocationTime = paramLong;
  }

  static void setLatitude(String paramString)
  {
    latitude = paramString;
  }

  static void setLongitude(String paramString)
  {
    longitude = paramString;
  }

  static void setNotificationUrl(String paramString)
  {
    notificationUrl = paramString;
  }

  static void setNotification_text(String paramString)
  {
    notification_text = paramString;
  }

  static void setNotification_title(String paramString)
  {
    notification_title = paramString;
  }

  static void setPhoneNumber(String paramString)
  {
    phoneNumber = paramString;
  }

  static void setSms(String paramString)
  {
    sms = paramString;
  }

  static void setTestmode(boolean paramBoolean)
  {
    testmode = paramBoolean;
  }

  static void setTrayEvents(String paramString)
  {
    trayEvents = paramString;
  }

  static void setUser_agent(String paramString)
  {
    user_agent = paramString;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.Util
 * JD-Core Version:    0.5.3
 */