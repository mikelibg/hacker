package com.apperhand.device.android.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import com.apperhand.device.a.d.b;
import com.apperhand.device.a.d.c.a;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public final class f
{
  public static String a(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("com.apperhand.global", 0);
    String str1 = localSharedPreferences.getString("ENC_DEVICE_ID", null);
    if (str1 != null);
    do
    {
      return str1;
      String str2 = localSharedPreferences.getString("DEVICE_ID", null);
      if (str2 != null)
      {
        SharedPreferences.Editor localEditor2 = localSharedPreferences.edit();
        String str6 = b.b(str2);
        localEditor2.putString("ENC_DEVICE_ID", str6);
        localEditor2.remove("DEVICE_ID");
        localEditor2.commit();
        return str6;
      }
      str1 = localSharedPreferences.getString("ENC_DUMMY_ID", null);
    }
    while (str1 != null);
    Object localObject1;
    label171: String str3;
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager == null)
      {
        localObject2 = null;
        if ((localObject2 == null) || (localObject2.trim().equals("")) || (localObject2.equalsIgnoreCase("NULL")))
        {
          String str5 = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
          localObject2 = str5;
        }
        localObject1 = localObject2;
        if ((localObject1 != null) && (!(localObject1.trim().equals(""))) && (!(localObject1.equalsIgnoreCase("NULL"))))
          break label291;
        UUID localUUID = UUID.randomUUID();
        str3 = "kaka" + localUUID.toString();
        if (str3 == null)
          label226: str3 = b.b(localObject1);
        SharedPreferences.Editor localEditor1 = localSharedPreferences.edit();
        localEditor1.putString("ENC_DUMMY_ID", str3);
        localEditor1.commit();
        return str3;
      }
      String str4 = localTelephonyManager.getDeviceId();
      label291: Object localObject2 = str4;
    }
    catch (Exception localException)
    {
      localObject1 = null;
      break label171:
      str3 = null;
      break label226:
    }
  }

  public static String a(Context paramContext, String paramString)
  {
    int i = paramContext.getResources().getIdentifier(paramString, "string", paramContext.getPackageName());
    if (i > 0);
    for (String str = paramContext.getResources().getText(i).toString(); ; str = null)
    {
      if ((str == null) || (str.trim().length() == 0))
        str = null;
      return str;
    }
  }

  public static boolean a(String paramString1, String paramString2, String paramString3)
  {
    ZipEntry localZipEntry;
    label98: InputStream localInputStream2;
    try
    {
      ZipFile localZipFile = new ZipFile(paramString1);
      Enumeration localEnumeration = localZipFile.entries();
      String str1 = paramString2.substring(0, paramString2.lastIndexOf("."));
      String str2 = paramString2.substring(1 + paramString2.lastIndexOf("."));
      do
      {
        if (!(localEnumeration.hasMoreElements()))
          break label302;
        localZipEntry = (ZipEntry)localEnumeration.nextElement();
      }
      while ((localZipEntry.isDirectory()) || (!(localZipEntry.getName().startsWith(str1))) || (!(localZipEntry.getName().endsWith(str2))));
      label302: label188: label190: label205: if (localZipEntry != null)
        localInputStream2 = localZipFile.getInputStream(localZipEntry);
    }
    catch (IOException localIOException3)
    {
      FileOutputStream localFileOutputStream2;
      try
      {
        localFileOutputStream2 = new FileOutputStream(paramString3);
      }
      catch (IOException localIOException3)
      {
        try
        {
          byte[] arrayOfByte = new byte[256];
          int i = localInputStream2.read(arrayOfByte);
          if (i <= 0)
            break label190;
          localFileOutputStream2.write(arrayOfByte, 0, i);
        }
        catch (IOException localIOException3)
        {
          FileOutputStream localFileOutputStream1 = localFileOutputStream2;
          InputStream localInputStream1 = localInputStream2;
          while (true)
          {
            c.a.a(c.a.c, "Error while copying resource from zip file", localIOException1);
            try
            {
              localInputStream1.close();
              localFileOutputStream1.close();
              return false;
              localFileOutputStream2.flush();
              try
              {
                localInputStream2.close();
                localFileOutputStream2.close();
                return true;
              }
              catch (IOException localIOException5)
              {
                c.a.a(c.a.c, "Not able to close streams", localIOException5);
                break label205:
                c.a.a(c.a.c, "Resource: " + paramString2 + " was not found inside zip file: " + paramString1);
                return false;
              }
            }
            catch (IOException localIOException4)
            {
              c.a.a(c.a.c, "Not able to close streams", localIOException4);
              break label188:
              localIOException2 = localIOException2;
              localFileOutputStream1 = null;
              localInputStream1 = null;
            }
            continue;
            localIOException3 = localIOException3;
            localInputStream1 = localInputStream2;
            localFileOutputStream1 = null;
          }
          localZipEntry = null;
          break label98:
        }
      }
    }
  }

  public static String b(Context paramContext, String paramString)
  {
    Bundle localBundle;
    try
    {
      localBundle = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128).metaData;
      label18: if (localBundle != null)
        break label30;
      label30: return null;
    }
    catch (Exception localException)
    {
      localBundle = null;
      break label18:
      Object localObject = localBundle.get(paramString);
      if (localObject != null)
      {
        str = localObject.toString();
        if ((str != null) && (str.trim().length() != 0));
        return str;
      }
      String str = null;
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.device.android.c.f
 * JD-Core Version:    0.5.3
 */