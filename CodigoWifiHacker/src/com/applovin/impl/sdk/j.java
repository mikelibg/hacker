package com.applovin.impl.sdk;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.provider.Settings.System;
import com.applovin.sdk.Logger;
import java.io.InputStream;
import java.util.Scanner;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class j
{
  private static final int[] a = { 7, 4, 2, 1, 11 };
  private static final int[] b = { 5, 6, 10, 3, 9, 8, 14 };
  private static final int[] c = { 15, 12, 13 };
  private static final String d = j.class.getSimpleName();

  private static NetworkInfo a(Context paramContext)
  {
    ConnectivityManager localConnectivityManager;
    if (l.a("android.permission.ACCESS_NETWORK_STATE", paramContext))
    {
      localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager == null);
    }
    for (NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo(); ; localNetworkInfo = null)
      return localNetworkInfo;
  }

  static String a(AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    NetworkInfo localNetworkInfo = a(paramAppLovinSdkImpl.getApplicationContext());
    int i;
    label21: int j;
    label31: String str;
    if (localNetworkInfo != null)
      if (localNetworkInfo != null)
      {
        i = localNetworkInfo.getType();
        if (localNetworkInfo == null)
          break label97;
        j = localNetworkInfo.getSubtype();
        if (i != 1)
          break label103;
        str = "wifi";
        label39: paramAppLovinSdkImpl.getLogger().d(d, "Network " + i + "/" + j + " resolved to " + str);
      }
    while (true)
    {
      return str;
      i = 2147483647;
      break label21:
      label97: j = 0;
      break label31:
      if (i == 0)
      {
        if (a(j, a))
          label103: str = "2g";
        if (a(j, b))
          str = "3g";
        if (a(j, c))
          str = "4g";
        str = "mobile";
      }
      str = "unknown";
      break label39:
      str = "unknown";
    }
  }

  static String a(InputStream paramInputStream)
  {
    if (paramInputStream == null);
    StringBuffer localStringBuffer;
    for (String str = null; ; str = localStringBuffer.toString())
    {
      return str;
      Scanner localScanner = new Scanner(paramInputStream);
      localStringBuffer = new StringBuffer();
      while (localScanner.hasNextLine())
        localStringBuffer.append(localScanner.nextLine());
    }
  }

  static String a(String paramString, AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    if (paramString == null)
      throw new IllegalArgumentException("No endpoint specified");
    if (paramAppLovinSdkImpl == null)
      throw new IllegalArgumentException("No sdk specified");
    String str = (String)paramAppLovinSdkImpl.a(w.f);
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append((String)paramAppLovinSdkImpl.a(w.m));
    localStringBuffer.append(paramString);
    if ((str != null) && (str.length() > 0))
    {
      localStringBuffer.append("?device_token=");
      localStringBuffer.append(str);
    }
    while (true)
    {
      return localStringBuffer.toString();
      localStringBuffer.append("?api_key=");
      localStringBuffer.append(paramAppLovinSdkImpl.getSdkKey());
    }
  }

  static JSONObject a(JSONObject paramJSONObject)
  {
    return ((JSONObject)paramJSONObject.getJSONArray("results").get(0));
  }

  static void a(int paramInt, AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    z localz = paramAppLovinSdkImpl.getSettingsManager();
    if (paramInt == 401)
    {
      localz.a(w.c, "");
      localz.a(w.f, "");
      localz.a(w.o, Long.valueOf(0L));
      localz.b();
    }
    while (true)
    {
      return;
      if (paramInt == 418)
      {
        localz.a(w.a, Boolean.valueOf(true));
        localz.b();
      }
      if ((paramInt >= 400) && (paramInt < 500))
        paramAppLovinSdkImpl.g();
      if (paramInt != 0)
        continue;
      paramAppLovinSdkImpl.g();
    }
  }

  static void a(JSONObject paramJSONObject, AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    if (paramJSONObject == null)
      throw new IllegalArgumentException("No response specified");
    if (paramAppLovinSdkImpl == null)
      throw new IllegalArgumentException("No sdk specified");
    try
    {
      if (paramJSONObject.has("settings"))
      {
        z localz = paramAppLovinSdkImpl.getSettingsManager();
        localz.a(paramJSONObject.getJSONObject("settings"));
        localz.b();
        paramAppLovinSdkImpl.getLogger().d(d, "New settings processed");
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      paramAppLovinSdkImpl.getLogger().e(d, "Unable to parse settings out of API response", localJSONException);
    }
  }

  private static boolean a(int paramInt, int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    for (int j = 0; ; ++j)
    {
      int k = 0;
      if (j < i)
      {
        if (paramArrayOfInt[j] != paramInt)
          continue;
        k = 1;
      }
      return k;
    }
  }

  private static boolean a(long paramLong, TimeUnit paramTimeUnit, Context paramContext)
  {
    AtomicBoolean localAtomicBoolean = new AtomicBoolean(false);
    CountDownLatch localCountDownLatch = new CountDownLatch(1);
    new k("AppLovinCheckWifiMobile", paramContext, localAtomicBoolean, localCountDownLatch).start();
    try
    {
      localCountDownLatch.await(paramLong, paramTimeUnit);
      return localAtomicBoolean.get();
    }
    catch (InterruptedException localInterruptedException)
    {
    }
  }

  public static boolean a(boolean paramBoolean, Context paramContext)
  {
    boolean bool1 = true;
    if (paramContext == null)
      throw new IllegalArgumentException("No context specified");
    boolean bool2;
    label33: boolean bool3;
    if (Settings.System.getInt(paramContext.getContentResolver(), "airplane_mode_on", 0) != 0)
    {
      bool2 = bool1;
      if (bool2)
        break label125;
      if (l.a("android.permission.ACCESS_NETWORK_STATE", paramContext))
      {
        ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
        if (localConnectivityManager != null)
        {
          NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
          if (localNetworkInfo == null)
            break label109;
          if ((!(localNetworkInfo.isConnected())) || (!(localNetworkInfo.isAvailable())))
            break label103;
          bool3 = bool1;
        }
      }
    }
    label93: label103: label109: label125: for (bool1 = bool3; ; bool1 = false)
      while (true)
      {
        return bool1;
        bool2 = false;
        break label33:
        bool3 = false;
        break label93:
        if (!(paramBoolean))
          continue;
        bool1 = a(1L, TimeUnit.SECONDS, paramContext);
      }
  }

  static String b(String paramString, AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    if (paramString == null)
      throw new IllegalArgumentException("No endpoint specified");
    if (paramAppLovinSdkImpl == null)
      throw new IllegalArgumentException("No sdk specified");
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append((String)paramAppLovinSdkImpl.a(w.n));
    localStringBuffer.append(paramString);
    return localStringBuffer.toString();
  }

  static void b(int paramInt, AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    if (paramInt != 418)
      return;
    z localz = paramAppLovinSdkImpl.getSettingsManager();
    localz.a(w.a, Boolean.valueOf(true));
    localz.b();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.j
 * JD-Core Version:    0.5.3
 */