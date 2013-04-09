package com.eMVeQv.NFmMPJ121641;

import android.content.Context;
import android.content.pm.PackageManager;
import android.location.Criteria;
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
    String str1;
    try
    {
      str1 = ((TelephonyManager)this.context.getSystemService("phone")).getDeviceId();
      if ((str1 == null) || (str1.equals("")))
      {
        Class localClass = Class.forName("android.os.SystemProperties");
        str1 = (String)localClass.getMethod("get", new Class[] { String.class }).invoke(localClass, new Object[] { "ro.serialno" });
        Util.setDevice_unique_type("serial");
        if ((str1 != null) && (!(str1.equals(""))))
          break label209;
        if (this.context.getPackageManager().checkPermission("android.permission.ACCESS_WIFI_STATE", Util.getPackageName(this.context)) == 0)
        {
          WifiManager localWifiManager = (WifiManager)this.context.getSystemService("wifi");
          System.out.println("WIFI " + localWifiManager.isWifiEnabled());
          String str3 = localWifiManager.getConnectionInfo().getMacAddress();
          Util.setDevice_unique_type("WIFI_MAC");
          return str3;
        }
        String str2 = new DeviceUuidFactory(this.context).getDeviceUuid().toString();
        Util.setDevice_unique_type("UUID");
        return str2;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return "invalid";
    }
    Util.setDevice_unique_type("IMEI");
    label209: return str1;
  }

  Location getLocation()
  {
    Util.printDebugLog("fetching Location.");
    while (true)
    {
      try
      {
        if (!(Util.getLatitude().equals("0")))
          break label398;
        if (900000L + Util.getLastLocationTime() > System.currentTimeMillis())
          break label398;
        synchronized (this.context)
        {
          if ((Util.getLatitude().equals("0")) && (900000L + Util.getLastLocationTime() <= System.currentTimeMillis()))
            break label116;
          Util.printDebugLog("failed in last");
          label398: label111: label116: return null;
        }
      }
      catch (Exception localException)
      {
        Util.printLog("Error occured while fetching location. " + localException.getMessage());
        while (true)
        {
          return this.location;
          if (this.context.getPackageManager().checkPermission("android.permission.ACCESS_COARSE_LOCATION", this.context.getPackageName()) == 0)
          {
            i = 1;
            if (this.context.getPackageManager().checkPermission("android.permission.ACCESS_FINE_LOCATION", this.context.getPackageName()) != 0)
              break label406;
            j = 1;
            if ((i != 0) && (j != 0))
            {
              LocationManager localLocationManager = (LocationManager)this.context.getSystemService("location");
              if (localLocationManager == null)
              {
                Util.printDebugLog("Location manager null");
                monitorexit;
                return null;
              }
              Criteria localCriteria = new Criteria();
              localCriteria.setCostAllowed(false);
              String str = null;
              if (i != 0)
              {
                localCriteria.setAccuracy(2);
                str = localLocationManager.getBestProvider(localCriteria, true);
              }
              if ((str == null) && (j != 0))
              {
                localCriteria.setAccuracy(1);
                str = localLocationManager.getBestProvider(localCriteria, true);
              }
              if (str == null)
              {
                Util.printDebugLog("Provider null");
                monitorexit;
                return null;
              }
              this.location = localLocationManager.getLastKnownLocation(str);
              if (this.location != null)
              {
                Util.printDebugLog("Location found via get last known location.");
                Location localLocation = this.location;
                monitorexit;
                return localLocation;
              }
              Util.setLastLocationTime(System.currentTimeMillis());
              localLocationManager.requestLocationUpdates(str, 0L, 0.0F, new LocationListener(localLocationManager)
              {
                public void onLocationChanged(Location paramLocation)
                {
                  Util.setLastLocationTime(System.currentTimeMillis());
                  UserDetails.access$002(UserDetails.this, paramLocation);
                  this.val$finalizedLocationManager.removeUpdates(this);
                }

                public void onProviderDisabled(String paramString)
                {
                }

                public void onProviderEnabled(String paramString)
                {
                }

                public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
                {
                }
              }
              , this.context.getMainLooper());
              monitorexit;
            }
          }
        }
        Util.printDebugLog("Location permission not found.");
      }
      catch (Throwable localThrowable)
      {
        Log.e("AirpushSDK", "Error in location: " + localThrowable.getMessage());
        break label111:
        return null;
      }
      int i = 0;
      continue;
      label406: int j = 0;
    }
  }

  boolean setImeiInMd5()
  {
    try
    {
      String str = getImeiNoMd5();
      if ((str == null) || (str.equals("")) || (str.equals("invalid")))
      {
        Util.printDebugLog("Can not get device unique id.");
        return false;
      }
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(str.getBytes(), 0, str.length());
      Util.setImei(new BigInteger(1, localMessageDigest.digest()).toString(16));
      return true;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      Log.e("AirpushSDK", "Error occured while converting IMEI to md5." + localNoSuchAlgorithmException.getMessage());
      return false;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
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
      //   2: putfield 21	com/eMVeQv/NFmMPJ121641/UserDetails$DeviceUuidFactory:this$0	Lcom/eMVeQv/NFmMPJ121641/UserDetails;
      //   5: aload_0
      //   6: invokespecial 24	java/lang/Object:<init>	()V
      //   9: aload_0
      //   10: getfield 26	com/eMVeQv/NFmMPJ121641/UserDetails$DeviceUuidFactory:uuid	Ljava/util/UUID;
      //   13: ifnonnull +187 -> 200
      //   16: ldc 2
      //   18: monitorenter
      //   19: aload_0
      //   20: getfield 26	com/eMVeQv/NFmMPJ121641/UserDetails$DeviceUuidFactory:uuid	Ljava/util/UUID;
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
      //   49: ifnull +16 -> 65
      //   52: aload_0
      //   53: aload 5
      //   55: invokestatic 44	java/util/UUID:fromString	(Ljava/lang/String;)Ljava/util/UUID;
      //   58: putfield 26	com/eMVeQv/NFmMPJ121641/UserDetails$DeviceUuidFactory:uuid	Ljava/util/UUID;
      //   61: ldc 2
      //   63: monitorexit
      //   64: return
      //   65: aload_2
      //   66: invokevirtual 48	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
      //   69: ldc 50
      //   71: invokestatic 55	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
      //   74: astore 6
      //   76: ldc 57
      //   78: aload 6
      //   80: invokevirtual 63	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   83: ifne +53 -> 136
      //   86: aload_0
      //   87: aload 6
      //   89: ldc 65
      //   91: invokevirtual 69	java/lang/String:getBytes	(Ljava/lang/String;)[B
      //   94: invokestatic 73	java/util/UUID:nameUUIDFromBytes	([B)Ljava/util/UUID;
      //   97: putfield 26	com/eMVeQv/NFmMPJ121641/UserDetails$DeviceUuidFactory:uuid	Ljava/util/UUID;
      //   100: aload 4
      //   102: invokeinterface 77 1 0
      //   107: ldc 8
      //   109: aload_0
      //   110: getfield 26	com/eMVeQv/NFmMPJ121641/UserDetails$DeviceUuidFactory:uuid	Ljava/util/UUID;
      //   113: invokevirtual 81	java/util/UUID:toString	()Ljava/lang/String;
      //   116: invokeinterface 87 3 0
      //   121: invokeinterface 91 1 0
      //   126: pop
      //   127: goto -66 -> 61
      //   130: astore_3
      //   131: ldc 2
      //   133: monitorexit
      //   134: aload_3
      //   135: athrow
      //   136: aload_2
      //   137: ldc 93
      //   139: invokevirtual 97	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
      //   142: checkcast 99	android/telephony/TelephonyManager
      //   145: invokevirtual 102	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
      //   148: astore 8
      //   150: aload 8
      //   152: ifnull +36 -> 188
      //   155: aload 8
      //   157: ldc 65
      //   159: invokevirtual 69	java/lang/String:getBytes	(Ljava/lang/String;)[B
      //   162: invokestatic 73	java/util/UUID:nameUUIDFromBytes	([B)Ljava/util/UUID;
      //   165: astore 9
      //   167: aload_0
      //   168: aload 9
      //   170: putfield 26	com/eMVeQv/NFmMPJ121641/UserDetails$DeviceUuidFactory:uuid	Ljava/util/UUID;
      //   173: goto -73 -> 100
      //   176: astore 7
      //   178: new 104	java/lang/RuntimeException
      //   181: dup
      //   182: aload 7
      //   184: invokespecial 107	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
      //   187: athrow
      //   188: invokestatic 111	java/util/UUID:randomUUID	()Ljava/util/UUID;
      //   191: astore 11
      //   193: aload 11
      //   195: astore 9
      //   197: goto -30 -> 167
      //   200: return
      //
      // Exception table:
      //   from	to	target	type
      //   19	47	130	finally
      //   52	61	130	finally
      //   61	64	130	finally
      //   65	76	130	finally
      //   76	100	130	finally
      //   100	127	130	finally
      //   131	134	130	finally
      //   136	150	130	finally
      //   155	167	130	finally
      //   167	173	130	finally
      //   178	188	130	finally
      //   188	193	130	finally
      //   76	100	176	java/io/UnsupportedEncodingException
      //   136	150	176	java/io/UnsupportedEncodingException
      //   155	167	176	java/io/UnsupportedEncodingException
      //   167	173	176	java/io/UnsupportedEncodingException
      //   188	193	176	java/io/UnsupportedEncodingException
    }

    public UUID getDeviceUuid()
    {
      return this.uuid;
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.UserDetails
 * JD-Core Version:    0.5.3
 */