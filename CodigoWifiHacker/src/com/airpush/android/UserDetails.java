package com.airpush.android;

import android.content.Context;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.Log;
import java.io.PrintStream;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

class UserDetails
{
  private Context context;
  private Location location;

  public UserDetails(Context paramContext)
  {
    this.context = paramContext;
  }

  String getImeiNoMd5()
  {
    String str;
    try
    {
      str = ((TelephonyManager)this.context.getSystemService("phone")).getDeviceId();
      if ((str != null) && (!(str.equals(""))))
        break label202;
      Class localClass = Class.forName("android.os.SystemProperties");
      str = (String)localClass.getMethod("get", new Class[] { String.class }).invoke(localClass, new Object[] { "ro.serialno" });
      Util.setDevice_unique_type("serial");
      if ((str == null) || (str.equals("")))
        if (this.context.getPackageManager().checkPermission("android.permission.ACCESS_WIFI_STATE", Util.getPackageName(this.context)) == 0)
        {
          WifiManager localWifiManager = (WifiManager)this.context.getSystemService("wifi");
          System.out.println("WIFI " + localWifiManager.isWifiEnabled());
          str = localWifiManager.getConnectionInfo().getMacAddress();
          Util.setDevice_unique_type("WIFI_MAC");
        }
        else
        {
          str = new DeviceUuidFactory(this.context).getDeviceUuid().toString();
          Util.setDevice_unique_type("UUID");
        }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      str = "invalid";
    }
    label202: Util.setDevice_unique_type("IMEI");
    return str;
  }

  // ERROR //
  Location getLocation()
  {
    // Byte code:
    //   0: ldc 160
    //   2: invokestatic 163	com/airpush/android/Util:printDebugLog	(Ljava/lang/String;)V
    //   5: invokestatic 166	com/airpush/android/Util:getLatitude	()Ljava/lang/String;
    //   8: ldc 168
    //   10: invokevirtual 44	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   13: ifeq +392 -> 405
    //   16: ldc2_w 169
    //   19: invokestatic 174	com/airpush/android/Util:getLastLocationTime	()J
    //   22: ladd
    //   23: invokestatic 177	java/lang/System:currentTimeMillis	()J
    //   26: lcmp
    //   27: ifle +6 -> 33
    //   30: goto +375 -> 405
    //   33: aload_0
    //   34: getfield 15	com/airpush/android/UserDetails:context	Landroid/content/Context;
    //   37: astore 5
    //   39: aload 5
    //   41: monitorenter
    //   42: invokestatic 166	com/airpush/android/Util:getLatitude	()Ljava/lang/String;
    //   45: ldc 168
    //   47: invokevirtual 44	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   50: ifeq +17 -> 67
    //   53: ldc2_w 169
    //   56: invokestatic 174	com/airpush/android/Util:getLastLocationTime	()J
    //   59: ladd
    //   60: invokestatic 177	java/lang/System:currentTimeMillis	()J
    //   63: lcmp
    //   64: ifle +16 -> 80
    //   67: ldc 179
    //   69: invokestatic 163	com/airpush/android/Util:printDebugLog	(Ljava/lang/String;)V
    //   72: aload 5
    //   74: monitorexit
    //   75: aconst_null
    //   76: astore_3
    //   77: goto +330 -> 407
    //   80: aload_0
    //   81: getfield 15	com/airpush/android/UserDetails:context	Landroid/content/Context;
    //   84: invokevirtual 78	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   87: ldc 181
    //   89: aload_0
    //   90: getfield 15	com/airpush/android/UserDetails:context	Landroid/content/Context;
    //   93: invokevirtual 183	android/content/Context:getPackageName	()Ljava/lang/String;
    //   96: invokevirtual 90	android/content/pm/PackageManager:checkPermission	(Ljava/lang/String;Ljava/lang/String;)I
    //   99: ifne +310 -> 409
    //   102: iconst_1
    //   103: istore 7
    //   105: aload_0
    //   106: getfield 15	com/airpush/android/UserDetails:context	Landroid/content/Context;
    //   109: invokevirtual 78	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   112: ldc 185
    //   114: aload_0
    //   115: getfield 15	com/airpush/android/UserDetails:context	Landroid/content/Context;
    //   118: invokevirtual 183	android/content/Context:getPackageName	()Ljava/lang/String;
    //   121: invokevirtual 90	android/content/pm/PackageManager:checkPermission	(Ljava/lang/String;Ljava/lang/String;)I
    //   124: ifne +291 -> 415
    //   127: iconst_1
    //   128: istore 8
    //   130: iload 7
    //   132: ifeq +236 -> 368
    //   135: iload 8
    //   137: ifeq +231 -> 368
    //   140: aload_0
    //   141: getfield 15	com/airpush/android/UserDetails:context	Landroid/content/Context;
    //   144: ldc 186
    //   146: invokevirtual 31	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   149: checkcast 188	android/location/LocationManager
    //   152: astore 9
    //   154: aload 9
    //   156: ifnonnull +16 -> 172
    //   159: ldc 190
    //   161: invokestatic 163	com/airpush/android/Util:printDebugLog	(Ljava/lang/String;)V
    //   164: aload 5
    //   166: monitorexit
    //   167: aconst_null
    //   168: astore_3
    //   169: goto +238 -> 407
    //   172: new 192	android/location/Criteria
    //   175: dup
    //   176: invokespecial 193	android/location/Criteria:<init>	()V
    //   179: astore 10
    //   181: aload 10
    //   183: iconst_0
    //   184: invokevirtual 197	android/location/Criteria:setCostAllowed	(Z)V
    //   187: aconst_null
    //   188: astore 11
    //   190: iload 7
    //   192: ifeq +19 -> 211
    //   195: aload 10
    //   197: iconst_2
    //   198: invokevirtual 201	android/location/Criteria:setAccuracy	(I)V
    //   201: aload 9
    //   203: aload 10
    //   205: iconst_1
    //   206: invokevirtual 205	android/location/LocationManager:getBestProvider	(Landroid/location/Criteria;Z)Ljava/lang/String;
    //   209: astore 11
    //   211: aload 11
    //   213: ifnonnull +24 -> 237
    //   216: iload 8
    //   218: ifeq +19 -> 237
    //   221: aload 10
    //   223: iconst_1
    //   224: invokevirtual 201	android/location/Criteria:setAccuracy	(I)V
    //   227: aload 9
    //   229: aload 10
    //   231: iconst_1
    //   232: invokevirtual 205	android/location/LocationManager:getBestProvider	(Landroid/location/Criteria;Z)Ljava/lang/String;
    //   235: astore 11
    //   237: aload 11
    //   239: ifnonnull +16 -> 255
    //   242: ldc 207
    //   244: invokestatic 163	com/airpush/android/Util:printDebugLog	(Ljava/lang/String;)V
    //   247: aload 5
    //   249: monitorexit
    //   250: aconst_null
    //   251: astore_3
    //   252: goto +155 -> 407
    //   255: aload_0
    //   256: aload 9
    //   258: aload 11
    //   260: invokevirtual 211	android/location/LocationManager:getLastKnownLocation	(Ljava/lang/String;)Landroid/location/Location;
    //   263: putfield 19	com/airpush/android/UserDetails:location	Landroid/location/Location;
    //   266: aload_0
    //   267: getfield 19	com/airpush/android/UserDetails:location	Landroid/location/Location;
    //   270: ifnull +60 -> 330
    //   273: ldc 213
    //   275: invokestatic 163	com/airpush/android/Util:printDebugLog	(Ljava/lang/String;)V
    //   278: aload_0
    //   279: getfield 19	com/airpush/android/UserDetails:location	Landroid/location/Location;
    //   282: astore_3
    //   283: aload 5
    //   285: monitorexit
    //   286: goto +121 -> 407
    //   289: astore 6
    //   291: aload 5
    //   293: monitorexit
    //   294: aload 6
    //   296: athrow
    //   297: astore 4
    //   299: new 102	java/lang/StringBuilder
    //   302: dup
    //   303: ldc 215
    //   305: invokespecial 106	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   308: aload 4
    //   310: invokevirtual 218	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   313: invokevirtual 221	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   319: invokestatic 224	com/airpush/android/Util:printLog	(Ljava/lang/String;)V
    //   322: aload_0
    //   323: getfield 19	com/airpush/android/UserDetails:location	Landroid/location/Location;
    //   326: astore_3
    //   327: goto +80 -> 407
    //   330: invokestatic 177	java/lang/System:currentTimeMillis	()J
    //   333: invokestatic 228	com/airpush/android/Util:setLastLocationTime	(J)V
    //   336: aload 9
    //   338: aload 11
    //   340: lconst_0
    //   341: fconst_0
    //   342: new 230	com/airpush/android/UserDetails$1
    //   345: dup
    //   346: aload_0
    //   347: aload 9
    //   349: invokespecial 233	com/airpush/android/UserDetails$1:<init>	(Lcom/airpush/android/UserDetails;Landroid/location/LocationManager;)V
    //   352: aload_0
    //   353: getfield 15	com/airpush/android/UserDetails:context	Landroid/content/Context;
    //   356: invokevirtual 237	android/content/Context:getMainLooper	()Landroid/os/Looper;
    //   359: invokevirtual 241	android/location/LocationManager:requestLocationUpdates	(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    //   362: aload 5
    //   364: monitorexit
    //   365: goto -43 -> 322
    //   368: ldc 243
    //   370: invokestatic 163	com/airpush/android/Util:printDebugLog	(Ljava/lang/String;)V
    //   373: goto -11 -> 362
    //   376: astore_1
    //   377: ldc 245
    //   379: new 102	java/lang/StringBuilder
    //   382: dup
    //   383: ldc 247
    //   385: invokespecial 106	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   388: aload_1
    //   389: invokevirtual 248	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   392: invokevirtual 221	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   395: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   398: invokestatic 253	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   401: pop
    //   402: goto -80 -> 322
    //   405: aconst_null
    //   406: astore_3
    //   407: aload_3
    //   408: areturn
    //   409: iconst_0
    //   410: istore 7
    //   412: goto -307 -> 105
    //   415: iconst_0
    //   416: istore 8
    //   418: goto -288 -> 130
    //
    // Exception table:
    //   from	to	target	type
    //   42	294	289	finally
    //   330	373	289	finally
    //   5	42	297	java/lang/Exception
    //   294	297	297	java/lang/Exception
    //   5	42	376	java/lang/Throwable
    //   294	297	376	java/lang/Throwable
  }

  boolean setImeiInMd5()
  {
    int i = 1;
    try
    {
      String str = getImeiNoMd5();
      if ((str == null) || (str.equals("")) || (str.equals("invalid")))
      {
        Util.printDebugLog("Can not get device unique id.");
        i = 0;
        break label132:
      }
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(str.getBytes(), 0, str.length());
      label119: Util.setImei(new BigInteger(1, localMessageDigest.digest()).toString(16));
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      Log.e("AirpushSDK", "Error occured while converting IMEI to md5." + localNoSuchAlgorithmException.getMessage());
      i = 0;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      break label119:
    }
    label132: return i;
  }

  private class DeviceUuidFactory
  {
    protected static final String PREFS_DEVICE_ID = "device_id";
    protected static final String PREFS_FILE = "device_id.xml";
    protected UUID uuid;

    // ERROR //
    public DeviceUuidFactory(Context paramContext)
    {
      // Byte code:
      //   0: aload_0
      //   1: aload_1
      //   2: putfield 21	com/airpush/android/UserDetails$DeviceUuidFactory:this$0	Lcom/airpush/android/UserDetails;
      //   5: aload_0
      //   6: invokespecial 24	java/lang/Object:<init>	()V
      //   9: aload_0
      //   10: getfield 26	com/airpush/android/UserDetails$DeviceUuidFactory:uuid	Ljava/util/UUID;
      //   13: ifnonnull +189 -> 202
      //   16: ldc 2
      //   18: monitorenter
      //   19: aload_0
      //   20: getfield 26	com/airpush/android/UserDetails$DeviceUuidFactory:uuid	Ljava/util/UUID;
      //   23: ifnonnull +38 -> 61
      //   26: aload_2
      //   27: ldc 11
      //   29: iconst_0
      //   30: invokevirtual 32	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
      //   33: astore 4
      //   35: aload 4
      //   37: ldc 8
      //   39: aconst_null
      //   40: invokeinterface 38 3 0
      //   45: astore 5
      //   47: aload 5
      //   49: ifnull +18 -> 67
      //   52: aload_0
      //   53: aload 5
      //   55: invokestatic 44	java/util/UUID:fromString	(Ljava/lang/String;)Ljava/util/UUID;
      //   58: putfield 26	com/airpush/android/UserDetails$DeviceUuidFactory:uuid	Ljava/util/UUID;
      //   61: ldc 2
      //   63: monitorexit
      //   64: goto +138 -> 202
      //   67: aload_2
      //   68: invokevirtual 48	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
      //   71: ldc 50
      //   73: invokestatic 55	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
      //   76: astore 6
      //   78: ldc 57
      //   80: aload 6
      //   82: invokevirtual 63	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   85: ifne +53 -> 138
      //   88: aload_0
      //   89: aload 6
      //   91: ldc 65
      //   93: invokevirtual 69	java/lang/String:getBytes	(Ljava/lang/String;)[B
      //   96: invokestatic 73	java/util/UUID:nameUUIDFromBytes	([B)Ljava/util/UUID;
      //   99: putfield 26	com/airpush/android/UserDetails$DeviceUuidFactory:uuid	Ljava/util/UUID;
      //   102: aload 4
      //   104: invokeinterface 77 1 0
      //   109: ldc 8
      //   111: aload_0
      //   112: getfield 26	com/airpush/android/UserDetails$DeviceUuidFactory:uuid	Ljava/util/UUID;
      //   115: invokevirtual 81	java/util/UUID:toString	()Ljava/lang/String;
      //   118: invokeinterface 87 3 0
      //   123: invokeinterface 91 1 0
      //   128: pop
      //   129: goto -68 -> 61
      //   132: astore_3
      //   133: ldc 2
      //   135: monitorexit
      //   136: aload_3
      //   137: athrow
      //   138: aload_2
      //   139: ldc 93
      //   141: invokevirtual 97	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
      //   144: checkcast 99	android/telephony/TelephonyManager
      //   147: invokevirtual 102	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
      //   150: astore 8
      //   152: aload 8
      //   154: ifnull +36 -> 190
      //   157: aload 8
      //   159: ldc 65
      //   161: invokevirtual 69	java/lang/String:getBytes	(Ljava/lang/String;)[B
      //   164: invokestatic 73	java/util/UUID:nameUUIDFromBytes	([B)Ljava/util/UUID;
      //   167: astore 10
      //   169: aload_0
      //   170: aload 10
      //   172: putfield 26	com/airpush/android/UserDetails$DeviceUuidFactory:uuid	Ljava/util/UUID;
      //   175: goto -73 -> 102
      //   178: astore 7
      //   180: new 104	java/lang/RuntimeException
      //   183: dup
      //   184: aload 7
      //   186: invokespecial 107	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
      //   189: athrow
      //   190: invokestatic 111	java/util/UUID:randomUUID	()Ljava/util/UUID;
      //   193: astore 9
      //   195: aload 9
      //   197: astore 10
      //   199: goto -30 -> 169
      //   202: return
      //
      // Exception table:
      //   from	to	target	type
      //   19	78	132	finally
      //   78	102	132	finally
      //   102	136	132	finally
      //   138	175	132	finally
      //   180	190	132	finally
      //   190	195	132	finally
      //   78	102	178	java/io/UnsupportedEncodingException
      //   138	175	178	java/io/UnsupportedEncodingException
      //   190	195	178	java/io/UnsupportedEncodingException
    }

    public UUID getDeviceUuid()
    {
      return this.uuid;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.airpush.android.UserDetails
 * JD-Core Version:    0.5.3
 */