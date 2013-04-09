package com.apperhand.device.android.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.apperhand.device.a.d.b;
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
      while (true)
      {
        return str1;
        String str2 = localSharedPreferences.getString("DEVICE_ID", null);
        if (str2 == null)
          break;
        SharedPreferences.Editor localEditor2 = localSharedPreferences.edit();
        str1 = b.b(str2);
        localEditor2.putString("ENC_DEVICE_ID", str1);
        localEditor2.remove("DEVICE_ID");
        localEditor2.commit();
      }
      str1 = localSharedPreferences.getString("ENC_DUMMY_ID", null);
    }
    while (str1 != null);
    Object localObject1;
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager == null)
      {
        localObject2 = null;
        if ((localObject2 == null) || (localObject2.trim().equals("")) || (localObject2.equalsIgnoreCase("NULL")))
        {
          String str4 = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
          localObject2 = str4;
        }
        localObject1 = localObject2;
        label169: if ((localObject1 != null) && (!(localObject1.trim().equals(""))) && (!(localObject1.equalsIgnoreCase("NULL"))))
          break label285;
        UUID localUUID = UUID.randomUUID();
        str1 = "kaka" + localUUID.toString();
        if (str1 == null)
          label223: str1 = b.b(localObject1);
        SharedPreferences.Editor localEditor1 = localSharedPreferences.edit();
        localEditor1.putString("ENC_DUMMY_ID", str1);
        localEditor1.commit();
      }
      String str3 = localTelephonyManager.getDeviceId();
      label285: Object localObject2 = str3;
    }
    catch (Exception localException)
    {
      localObject1 = null;
      break label169:
      str1 = null;
      break label223:
    }
  }

  public static String a(Context paramContext, String paramString)
  {
    int i = paramContext.getResources().getIdentifier(paramString, "string", paramContext.getPackageName());
    if (i > 0);
    for (String str = paramContext.getResources().getText(i).toString(); ; str = null)
    {
      if ((str == null) || (str.trim().length() == 0))
      {
        Log.e("STARTAPP", "Cannot find " + paramString);
        str = null;
      }
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
      label302: label185: label191: label206: if (localZipEntry != null)
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
          int j = localInputStream2.read(arrayOfByte);
          if (j <= 0)
            break label191;
          localFileOutputStream2.write(arrayOfByte, 0, j);
        }
        catch (IOException localIOException3)
        {
          FileOutputStream localFileOutputStream1 = localFileOutputStream2;
          InputStream localInputStream1 = localInputStream2;
          while (true)
          {
            Log.e("AND.Utils", "Error while copying resource from zip file", localIOException1);
            try
            {
              localInputStream1.close();
              localFileOutputStream1.close();
              int i = 0;
              while (true)
              {
                return i;
                localFileOutputStream2.flush();
                try
                {
                  localInputStream2.close();
                  localFileOutputStream2.close();
                  i = 1;
                }
                catch (IOException localIOException5)
                {
                  Log.e("AND.Utils", "Not able to close streams", localIOException5);
                  break label206:
                  Log.e("AND.Utils", "Resource: " + paramString2 + " was not found inside zip file: " + paramString1);
                  i = 0;
                }
              }
            }
            catch (IOException localIOException4)
            {
              Log.e("AND.Utils", "Not able to close streams", localIOException4);
              break label185:
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
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.android.c.f
 * JD-Core Version:    0.5.3
 */