package com.applovin.impl.sdk;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import com.applovin.sdk.Logger;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class l
{
  protected static List a = new ArrayList();
  protected final AppLovinSdkImpl b;
  protected final Context c;
  protected final Logger d;
  protected final v e;

  l(AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    if (paramAppLovinSdkImpl == null)
      throw new IllegalArgumentException("No sdk specified");
    this.b = paramAppLovinSdkImpl;
    this.d = paramAppLovinSdkImpl.getLogger();
    this.c = paramAppLovinSdkImpl.getApplicationContext();
    this.e = f();
  }

  static boolean a(CharSequence paramCharSequence)
  {
    return Pattern.compile("^[\\w\\-]([\\.\\w])+[\\w]+@([\\w\\-]+\\.)+[A-Z]{2,4}$", 2).matcher(paramCharSequence).matches();
  }

  static boolean a(String paramString, Context paramContext)
  {
    if (paramString == null)
      throw new IllegalArgumentException("No permission name specified");
    if (paramContext == null)
      throw new IllegalArgumentException("No context specified");
    if (paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName()) == 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  private v f()
  {
    return new v(this.b.getApplicationContext());
  }

  private String g()
  {
    AtomicReference localAtomicReference = new AtomicReference();
    CountDownLatch localCountDownLatch = new CountDownLatch(1);
    new n(this, "AppLovinCollectCpuSpeed", localAtomicReference, localCountDownLatch).start();
    try
    {
      localCountDownLatch.await(2L, TimeUnit.SECONDS);
      label43: String str1 = (String)localAtomicReference.get();
      if ((str1 != null) && (str1.length() > 0))
      {
        String str3 = str1.trim().toLowerCase();
        int i = str3.indexOf("bogomips");
        if (i >= 0)
        {
          int j = i + 11;
          int k = str3.indexOf(10, j);
          if (k > 0)
          {
            str2 = str3.substring(j, k);
            return str2;
          }
        }
      }
      String str2 = "";
    }
    catch (InterruptedException localInterruptedException)
    {
      break label43:
    }
  }

  List a()
  {
    Intent localIntent = new Intent("android.intent.action.MAIN", null);
    localIntent.addCategory("android.intent.category.LAUNCHER");
    List localList = this.c.getPackageManager().queryIntentActivities(localIntent, 0);
    Object localObject;
    if ((localList != null) && (!(localList.isEmpty())))
      if ((a.size() == localList.size()) && (a.size() > 0) && (((o)a.get(0)).a.equals(((ResolveInfo)localList.get(0)).activityInfo.name)))
        localObject = new ArrayList(a);
    while (true)
    {
      return localObject;
      ArrayList localArrayList = new ArrayList(localList.size());
      HashSet localHashSet = new HashSet();
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
        try
        {
          long l = new File(localResolveInfo.activityInfo.applicationInfo.sourceDir).lastModified();
          o localo = new o();
          localo.c = ad.b(localResolveInfo.activityInfo.packageName, this.b);
          localo.d = l;
          localo.a = localResolveInfo.activityInfo.name;
          if (!(localHashSet.contains(localo.c)));
          localArrayList.add(localo);
          localHashSet.add(localo.c);
        }
        catch (Throwable localThrowable2)
        {
          this.d.w("DataCollector", "Unable to read information for app \"" + localResolveInfo + "\"", localThrowable2);
        }
      }
      try
      {
        Collections.sort(localArrayList, new m(this));
        label350: a = localArrayList;
        localObject = localArrayList;
      }
      catch (Throwable localThrowable1)
      {
        this.d.w("DataCollector", "Unable to sort applications", localThrowable1);
        break label350:
        localObject = Collections.emptyList();
      }
    }
  }

  boolean a(String paramString)
  {
    return a(paramString, this.c);
  }

  p b()
  {
    p localp = new p();
    TelephonyManager localTelephonyManager = (TelephonyManager)this.c.getSystemService("phone");
    if (a("android.permission.READ_PHONE_STATE"))
    {
      localp.a = localTelephonyManager.getDeviceId();
      String str3 = this.e.a(localTelephonyManager.getLine1Number());
      if ((str3 != null) && (str3.length() > 0))
        localp.i = ad.a(str3, this.b);
    }
    if (a("android.permission.GET_ACCOUNTS"))
    {
      localp.n = new ArrayList();
      for (Account localAccount : AccountManager.get(this.c).getAccounts())
      {
        if (!(a(localAccount.name)))
          continue;
        String str2 = ad.a(ad.c(localAccount.name), this.b);
        localp.n.add(str2);
      }
    }
    localp.l = g();
    localp.b = Settings.Secure.getString(this.c.getContentResolver(), "android_id");
    localp.c = g.b();
    if (a("android.permission.ACCESS_WIFI_STATE"));
    try
    {
      WifiInfo localWifiInfo = ((WifiManager)this.c.getSystemService("wifi")).getConnectionInfo();
      if (localWifiInfo != null)
      {
        str1 = localWifiInfo.getMacAddress();
        localp.d = str1;
        label258: localp.m = Locale.getDefault();
        localp.e = Build.MODEL;
        localp.f = Build.VERSION.RELEASE;
        localp.g = Build.MANUFACTURER;
        localp.h = Build.VERSION.SDK_INT;
        localp.j = localTelephonyManager.getSimCountryIso().toUpperCase();
        localp.k = localTelephonyManager.getNetworkOperatorName();
        return localp;
      }
      String str1 = null;
    }
    catch (Exception localException)
    {
      this.d.e("DataCollector", "Unable to collect device Wi-fi mac address", localException);
      break label258:
    }
  }

  o c()
  {
    ApplicationInfo localApplicationInfo = this.c.getApplicationInfo();
    long l = new File(localApplicationInfo.sourceDir).lastModified();
    PackageManager localPackageManager = this.c.getPackageManager();
    PackageInfo localPackageInfo1;
    try
    {
      PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo(this.c.getPackageName(), 0);
      localPackageInfo1 = localPackageInfo2;
      label51: o localo = new o();
      localo.c = localApplicationInfo.packageName;
      localo.d = l;
      localo.a = String.valueOf(localPackageManager.getApplicationLabel(localApplicationInfo));
      if (localPackageInfo1 != null)
      {
        str = localPackageInfo1.versionName;
        localo.b = str;
        return localo;
      }
      String str = "";
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localPackageInfo1 = null;
      break label51:
    }
  }

  byte[] d()
  {
    ApplicationInfo localApplicationInfo = this.c.getApplicationInfo();
    Drawable localDrawable = this.c.getPackageManager().getApplicationIcon(localApplicationInfo);
    if (localDrawable instanceof BitmapDrawable);
    byte[] arrayOfByte1;
    try
    {
      Bitmap localBitmap = ((BitmapDrawable)localDrawable).getBitmap();
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      localBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
      byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
      arrayOfByte1 = arrayOfByte2;
      return arrayOfByte1;
    }
    catch (Exception localException)
    {
      this.d.e("DataCollector", "Unable to create an app icon", localException);
      arrayOfByte1 = null;
    }
  }

  boolean e()
  {
    int i = Settings.Secure.getInt(this.c.getContentResolver(), "install_non_market_apps", 0);
    int j = 0;
    if (i != 0)
      j = 1;
    return j;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.l
 * JD-Core Version:    0.5.3
 */