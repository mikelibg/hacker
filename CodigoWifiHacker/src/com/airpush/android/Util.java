package com.airpush.android;

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
    int i = 0;
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      i = 0;
      if (localNetworkInfo != null)
      {
        boolean bool1 = localConnectivityManager.getActiveNetworkInfo().isAvailable();
        i = 0;
        if (bool1)
        {
          boolean bool2 = localConnectivityManager.getActiveNetworkInfo().isConnected();
          i = 0;
          if (bool2)
          {
            i = 1;
            break label80:
          }
        }
      }
      Log.e("AirpushSDK", "Internet Connection not found.");
      i = 0;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    label80: return i;
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
    if (paramContext == null);
    for (String str = ""; ; str = Settings.Secure.getString(paramContext.getContentResolver(), "android_id"))
      return str;
  }

  static String getApiKey()
  {
    return apiKey;
  }

  static String getApiKeyFromJSON()
  {
    String str1;
    try
    {
      String str2 = new JSONObject(getJsonstr()).getString("authkey");
      str1 = str2;
      return str1;
    }
    catch (JSONException localJSONException)
    {
      str1 = "invalid key";
    }
  }

  static String getAppID()
  {
    return appID;
  }

  static String getAppIdFromJSON()
  {
    String str1;
    try
    {
      String str2 = new JSONObject(getJsonstr()).getString("appid");
      str1 = str2;
      return str1;
    }
    catch (JSONException localJSONException)
    {
      str1 = "";
    }
  }

  // ERROR //
  static String getAppName(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 178	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   4: astore_3
    //   5: aload_3
    //   6: aload_0
    //   7: invokevirtual 181	android/content/Context:getPackageName	()Ljava/lang/String;
    //   10: iconst_0
    //   11: invokevirtual 187	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   14: astore 7
    //   16: aload 7
    //   18: astore 5
    //   20: aload 5
    //   22: ifnull +20 -> 42
    //   25: aload_3
    //   26: aload 5
    //   28: invokevirtual 191	android/content/pm/PackageManager:getApplicationLabel	(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    //   31: astore 6
    //   33: aload 6
    //   35: checkcast 193	java/lang/String
    //   38: astore_2
    //   39: goto +18 -> 57
    //   42: ldc 195
    //   44: astore 6
    //   46: goto -13 -> 33
    //   49: astore_1
    //   50: aload_1
    //   51: invokevirtual 130	java/lang/Exception:printStackTrace	()V
    //   54: ldc 64
    //   56: astore_2
    //   57: aload_2
    //   58: areturn
    //   59: astore 4
    //   61: aconst_null
    //   62: astore 5
    //   64: goto -44 -> 20
    //
    // Exception table:
    //   from	to	target	type
    //   0	5	49	java/lang/Exception
    //   5	16	49	java/lang/Exception
    //   25	46	49	java/lang/Exception
    //   5	16	59	android/content/pm/PackageManager$NameNotFoundException
  }

  static String getCampId()
  {
    return campId;
  }

  static String getCarrier(Context paramContext)
  {
    if (paramContext == null);
    for (String str = ""; ; str = "")
      while (true)
      {
        return str;
        TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
        if ((localTelephonyManager == null) || (localTelephonyManager.getSimState() != 5))
          break;
        str = localTelephonyManager.getSimOperatorName();
      }
  }

  static int getConnectionType(Context paramContext)
  {
    int i = 0;
    if (paramContext == null);
    while (true)
    {
      return i;
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      i = 0;
      if (localNetworkInfo == null)
        continue;
      boolean bool1 = localNetworkInfo.isConnected();
      i = 0;
      if (!(bool1))
        continue;
      boolean bool2 = localNetworkInfo.getTypeName().equals("WIFI");
      i = 0;
      if (!(bool2))
        continue;
      i = 1;
    }
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
        if (!(longitude.equals("invalid")))
        {
          List localList = localGeocoder.getFromLocation(Double.parseDouble(latitude), Double.parseDouble(longitude), 1);
          if (!(localList.isEmpty()))
          {
            arrayOfString[0] = ((Address)localList.get(0)).getCountryName();
            arrayOfString[1] = ((Address)localList.get(0)).getPostalCode();
            printDebugLog("Postal Code: " + arrayOfString[1] + " Country Code: " + ((Address)localList.get(0)).getCountryCode());
          }
        }
    }
    catch (IOException localIOException)
    {
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
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
    String str1;
    try
    {
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
      String str2 = localSimpleDateFormat.format(new Date()) + "_" + localSimpleDateFormat.getTimeZone().getDisplayName() + "_" + localSimpleDateFormat.getTimeZone().getID() + "_" + localSimpleDateFormat.getTimeZone().getDisplayName(false, 0);
      str1 = str2;
      return str1;
    }
    catch (Exception localException)
    {
      str1 = "00";
    }
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
    long l;
    if (testmode)
      l = 120000L;
    while (true)
    {
      return l;
      l = 14400000L;
    }
  }

  static String getNetworkOperator(Context paramContext)
  {
    if (paramContext == null);
    for (String str = ""; ; str = "")
      while (true)
      {
        return str;
        TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
        if ((localTelephonyManager == null) || (localTelephonyManager.getPhoneType() != 1))
          break;
        str = localTelephonyManager.getNetworkOperatorName();
      }
  }

  static String getNetworksubType(Context paramContext)
  {
    NetworkInfo localNetworkInfo;
    if (paramContext != null)
    {
      localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localNetworkInfo == null) || (!(localNetworkInfo.isConnected())) || (localNetworkInfo.getTypeName().equals("WIFI")));
    }
    for (String str = localNetworkInfo.getSubtypeName(); ; str = "")
      return str;
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
    String str1;
    try
    {
      String str2 = paramContext.getPackageName();
      str1 = str2;
      return str1;
    }
    catch (Exception localException)
    {
      str1 = "";
    }
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
    return f;
  }

  static String getScreen_size(Context paramContext)
  {
    String str = "";
    if (paramContext != null)
    {
      Display localDisplay = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
      str = localDisplay.getWidth() + "_" + localDisplay.getHeight();
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
    return Build.VERSION.SDK_INT;
  }

  static boolean isConnectionFast(Context paramContext)
  {
    int i = 0;
    if (paramContext == null);
    while (true)
    {
      return i;
      try
      {
        NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        i = 0;
        if (localNetworkInfo != null);
        boolean bool = localNetworkInfo.isConnected();
        i = 0;
        if (bool);
        int j = localNetworkInfo.getType();
        i = 0;
        if (j == 1)
        {
          System.out.println("CONNECTED VIA WIFI");
          i = 1;
        }
        i = 0;
        if (j == 0);
        int k = localNetworkInfo.getSubtype();
        i = 0;
        switch (k)
        {
        case 0:
        case 1:
        case 2:
        case 4:
        case 7:
        case 11:
        default:
          i = 0;
          break;
        case 3:
          i = 1;
          break;
        case 5:
          i = 1;
          break;
        case 6:
          i = 1;
          break;
        case 8:
          i = 1;
          break;
        case 10:
          i = 1;
          break;
        case 9:
          i = 1;
          break;
        case 14:
          i = 1;
          break;
        case 12:
          i = 1;
          break;
        case 15:
          i = 1;
          break;
        case 13:
        }
        i = 1;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
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
    int i;
    try
    {
      DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      float f1 = localDisplayMetrics.widthPixels / localDisplayMetrics.xdpi;
      float f2 = localDisplayMetrics.heightPixels / localDisplayMetrics.ydpi;
      double d = Math.sqrt(Math.pow(f1, 2.0D) + Math.pow(f2, 2.0D));
      if (d >= 6.0D)
      {
        i = 1;
        return i;
      }
      i = 0;
    }
    catch (NullPointerException localNullPointerException)
    {
      printDebugLog(localNullPointerException.getMessage());
      i = 0;
    }
    catch (Exception localException)
    {
      printDebugLog(localException.getMessage());
      i = 0;
    }
    catch (Throwable localThrowable)
    {
      printDebugLog(localThrowable.getMessage());
      i = 0;
    }
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
            HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(Util.this).openConnection();
            localHttpURLConnection.setRequestMethod("GET");
            localHttpURLConnection.setConnectTimeout(2000);
            localHttpURLConnection.connect();
            StringBuffer localStringBuffer;
            String str;
            if (localHttpURLConnection.getResponseCode() == 200)
            {
              localStringBuffer = new StringBuffer();
              BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localHttpURLConnection.getInputStream()));
              str = localBufferedReader.readLine();
              if (str != null)
                break label108;
              Util.jsonstr = localStringBuffer.toString();
            }
            localHttpURLConnection.disconnect();
            return;
            label108: localStringBuffer.append(str);
          }
          catch (MalformedURLException localMalformedURLException)
          {
            return;
          }
          catch (Exception localException)
          {
            return;
          }
          catch (IOException localIOException)
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

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.airpush.android.Util
 * JD-Core Version:    0.5.3
 */