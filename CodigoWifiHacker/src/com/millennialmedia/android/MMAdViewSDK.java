package com.millennialmedia.android;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.Log;
import java.security.MessageDigest;

public final class MMAdViewSDK
{
  static final String BASEURL = "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?";
  public static final String DEFAULT_APID = "28911";
  public static final int DEFAULT_VIEWID = 1897808289;
  static final String ERR_BROKENREF = "The reference to the ad view was broken.";
  static final String ERR_NOACTIVITY = "The ad view does not have a parent activity.";
  static final int HTML = 2;
  static final int IMAGE = 4;
  static final int PACKAGE = 3;
  static final String PREFS_NAME = "MillennialMediaSettings";
  static final String PRIVATE_CACHE_DIR = ".mmsyscache";
  public static final String SDKLOG = "MillennialMediaSDK";
  public static final String SDKVER = "4.5.1-12.2.2.a";
  static final int VIDEO = 1;
  private static String getAuidOrHdidValue;
  private static String getAuidValue;
  private static String getHdidValue;
  private static String getMMdidValue = null;
  public static int logLevel;
  static String macId;
  public static boolean privateLogging;

  static
  {
    getAuidValue = null;
    getHdidValue = null;
    getAuidOrHdidValue = null;
  }

  private static String byteArrayToString(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder(2 * paramArrayOfByte.length);
    for (int i = 0; i < paramArrayOfByte.length; ++i)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Byte.valueOf(paramArrayOfByte[i]);
      localStringBuilder.append(String.format("%02X", arrayOfObject));
    }
    return localStringBuilder.toString();
  }

  public static String getAuid(Context paramContext)
  {
    Object localObject2;
    if (getAuidValue != null)
      localObject2 = getAuidValue;
    while (true)
    {
      return localObject2;
      Object localObject1 = "android_idandroid_id";
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager != null);
      try
      {
        String str = localTelephonyManager.getDeviceId();
        localObject1 = str;
        if ((((localObject1 == null) || (((String)localObject1).length() == 0))) && (paramContext != null))
          label38: localObject1 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
        if ((localObject1 == null) || (((String)localObject1).length() == 0))
          localObject1 = null;
        getAuidValue = (String)localObject1;
        localObject2 = localObject1;
      }
      catch (SecurityException localSecurityException)
      {
        localSecurityException.printStackTrace();
        break label38:
      }
    }
  }

  static String getAuidOrHdid(Context paramContext)
  {
    boolean bool = HandShake.sharedHandShake(paramContext).hdid;
    String str;
    if (getAuidOrHdidValue != null)
      if ((bool) && (getAuidOrHdidValue.startsWith("mmh_")))
        str = getAuidOrHdidValue;
    while (true)
    {
      return str;
      if ((!(bool)) && (!(getAuidOrHdidValue.startsWith("mmh_"))))
        str = getAuidOrHdidValue;
      if (bool)
      {
        str = getHdid(paramContext);
        getAuidOrHdidValue = str;
      }
      str = getAuid(paramContext);
      getAuidOrHdidValue = str;
    }
  }

  static String getConnectionType(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localConnectivityManager == null);
    for (String str = "unknown"; ; str = "offline")
      while (true)
      {
        return str;
        if ((localConnectivityManager.getActiveNetworkInfo() == null) || (localConnectivityManager.getActiveNetworkInfo().isConnected() != true))
          break;
        int i = localConnectivityManager.getActiveNetworkInfo().getType();
        int j = localConnectivityManager.getActiveNetworkInfo().getType();
        if (i == 1)
          str = "wifi";
        if (i == 0)
        {
          switch (j)
          {
          default:
            str = "unknown";
            break;
          case 7:
            str = "1xrtt";
            break;
          case 4:
            str = "cdma";
            break;
          case 2:
            str = "edge";
            break;
          case 14:
            str = "ehrpd";
            break;
          case 5:
            str = "evdo_0";
            break;
          case 6:
            str = "evdo_a";
            break;
          case 12:
            str = "evdo_b";
            break;
          case 1:
            str = "gprs";
            break;
          case 8:
            str = "hsdpa";
            break;
          case 10:
            str = "hspa";
            break;
          case 15:
            str = "hspap";
            break;
          case 9:
            str = "hsupa";
            break;
          case 11:
            str = "iden";
            break;
          case 13:
            str = "lte";
            break;
          case 3:
          }
          str = "umts";
        }
        str = "unknown";
      }
  }

  static String getDpi(Context paramContext)
  {
    return "160";
  }

  static String getHdid(Context paramContext)
  {
    String str2;
    if (getHdidValue != null)
      str2 = getHdidValue;
    while (true)
    {
      return str2;
      String str1 = getAuid(paramContext);
      str2 = null;
      if (str1 == null)
        continue;
      StringBuilder localStringBuilder = new StringBuilder("mmh_");
      try
      {
        localStringBuilder.append(byteArrayToString(MessageDigest.getInstance("MD5").digest(str1.getBytes())));
        localStringBuilder.append("_");
        localStringBuilder.append(byteArrayToString(MessageDigest.getInstance("SHA1").digest(str1.getBytes())));
        str2 = localStringBuilder.toString();
        getHdidValue = str2;
      }
      catch (Exception localException)
      {
        Log.v(localException.getMessage());
        str2 = null;
      }
    }
  }

  // ERROR //
  static String getMMdid(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 52	com/millennialmedia/android/MMAdViewSDK:getMMdidValue	Ljava/lang/String;
    //   6: ifnull +12 -> 18
    //   9: getstatic 52	com/millennialmedia/android/MMAdViewSDK:getMMdidValue	Ljava/lang/String;
    //   12: astore_3
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_3
    //   17: areturn
    //   18: aload_0
    //   19: invokevirtual 117	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   22: ldc 119
    //   24: invokestatic 125	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   27: astore_2
    //   28: aconst_null
    //   29: astore_3
    //   30: aload_2
    //   31: ifnull -18 -> 13
    //   34: new 65	java/lang/StringBuilder
    //   37: dup
    //   38: ldc 140
    //   40: invokespecial 211	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   43: astore 4
    //   45: aload 4
    //   47: ldc 213
    //   49: invokestatic 219	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   52: aload_2
    //   53: invokevirtual 223	java/lang/String:getBytes	()[B
    //   56: invokevirtual 227	java/security/MessageDigest:digest	([B)[B
    //   59: invokestatic 229	com/millennialmedia/android/MMAdViewSDK:byteArrayToString	([B)Ljava/lang/String;
    //   62: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: pop
    //   66: aload 4
    //   68: ldc 231
    //   70: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: pop
    //   74: aload 4
    //   76: ldc 233
    //   78: invokestatic 219	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   81: aload_2
    //   82: invokevirtual 223	java/lang/String:getBytes	()[B
    //   85: invokevirtual 227	java/security/MessageDigest:digest	([B)[B
    //   88: invokestatic 229	com/millennialmedia/android/MMAdViewSDK:byteArrayToString	([B)Ljava/lang/String;
    //   91: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: pop
    //   95: aload 4
    //   97: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   100: astore_3
    //   101: aload_3
    //   102: putstatic 52	com/millennialmedia/android/MMAdViewSDK:getMMdidValue	Ljava/lang/String;
    //   105: goto -92 -> 13
    //   108: astore_1
    //   109: ldc 2
    //   111: monitorexit
    //   112: aload_1
    //   113: athrow
    //   114: astore 5
    //   116: aload 5
    //   118: invokevirtual 236	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   121: invokestatic 241	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   124: aconst_null
    //   125: astore_3
    //   126: goto -113 -> 13
    //
    // Exception table:
    //   from	to	target	type
    //   3	13	108	finally
    //   18	45	108	finally
    //   45	95	108	finally
    //   95	105	108	finally
    //   116	124	108	finally
    //   45	95	114	java/lang/Exception
  }

  static boolean isConnected(Context paramContext)
  {
    int i = 1;
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    int j = 0;
    if (localConnectivityManager == null)
      label18: return j;
    if ((localConnectivityManager.getActiveNetworkInfo() != null) && (localConnectivityManager.getActiveNetworkInfo().isConnected() == i));
    while (true)
    {
      j = i;
      break label18:
      i = 0;
    }
  }

  static void setMMdid(String paramString)
  {
    monitorenter;
    try
    {
      getMMdidValue = paramString;
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

  static class Log
  {
    static void d(String paramString)
    {
      if (MMAdViewSDK.logLevel <= 0)
        return;
      Log.i("MillennialMediaSDK", "Diagnostic - " + paramString);
    }

    static void p(String paramString)
    {
      if (!(MMAdViewSDK.privateLogging))
        return;
      Log.i("MillennialMediaSDK", "Private - " + paramString);
    }

    static void v(String paramString)
    {
      if (MMAdViewSDK.logLevel <= 1)
        return;
      Log.i("MillennialMediaSDK", "Verbose - " + paramString);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMAdViewSDK
 * JD-Core Version:    0.5.3
 */