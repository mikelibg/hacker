package com.applovin.sdk.bootstrap;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.applovin.sdk.AppLovinSdkUtils;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;

public class SdkBootstrap
{
  private static final SdkBootstrap a = new SdkBootstrap();
  private AtomicBoolean b = new AtomicBoolean();
  private boolean c = true;
  private Context d;
  private ClassLoader e;

  private void a(Context paramContext)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("No context specified");
    if (this.b.compareAndSet(false, true))
    {
      this.d = paramContext;
      if (!(AppLovinSdkUtils.isAutoUpdateEnabled(paramContext)))
        break label44;
      b(paramContext);
    }
    while (true)
    {
      return;
      label44: this.e = SdkBootstrap.class.getClassLoader();
    }
  }

  private void a(String paramString)
  {
    a(paramString, null);
  }

  private void a(String paramString, Throwable paramThrowable)
  {
    if (!(this.c))
      return;
    Log.i("AppLovinSdk", "[Boostrap] " + paramString, paramThrowable);
  }

  private void b(Context paramContext)
  {
    this.c = AppLovinSdkUtils.isVerboseLoggingEnabled(paramContext);
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("applovin.sdk.boostrap", 0);
    String str1 = localSharedPreferences.getString("version", "");
    String str2 = localSharedPreferences.getString("interface", "");
    if ((str1.length() > 0) && ("4.2.0".equals(str2)))
    {
      File localFile = new File(paramContext.getDir("al_sdk", 0), str1);
      if ((localFile.exists()) && (localFile.length() > 0L))
        this.e = new SdkClassLoader(localFile, paramContext.getDir("al_outdex", 0), SdkBootstrap.class.getClassLoader());
    }
    while (true)
    {
      checkForUpdates();
      return;
      a("SDK implementation file " + str1 + " has no content, using default implementation");
      disable();
      continue;
      disable();
    }
  }

  public static SdkBootstrap getInstance(Context paramContext)
  {
    a.a(paramContext);
    return a;
  }

  public void checkForUpdates()
  {
    if (!(AppLovinSdkUtils.isAutoUpdateEnabled(this.d)))
      return;
    SdkBoostrapTasks localSdkBoostrapTasks = (SdkBoostrapTasks)loadImplementation(SdkBoostrapTasks.class);
    if (localSdkBoostrapTasks == null)
      return;
    localSdkBoostrapTasks.startUpdateDownload(this.d.getApplicationContext());
  }

  public void disable()
  {
    disable(null);
  }

  public void disable(String paramString)
  {
    this.e = SdkBootstrap.class.getClassLoader();
    try
    {
      SharedPreferences localSharedPreferences = this.d.getSharedPreferences("applovin.sdk.boostrap", 0);
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      if ((paramString != null) && (paramString.length() > 0))
      {
        String str1 = localSharedPreferences.getString("version", "");
        String str2 = localSharedPreferences.getString("interface", "");
        String str3 = localSharedPreferences.getString("ServerEventId", "");
        String str4 = localSharedPreferences.getString("ServerChecksum", "");
        localEditor.putString("LastBoostrapError", str1 + "/" + str2 + "/" + str3 + "/" + str4 + ": " + paramString);
      }
      localEditor.putString("version", "");
      localEditor.putString("interface", "");
      localEditor.commit();
      return;
    }
    catch (Throwable localThrowable)
    {
      a("Unable to disable SDK auto updated because of " + paramString, localThrowable);
    }
  }

  public ClassLoader getClassLoader()
  {
    return this.e;
  }

  public Object loadImplementation(Class paramClass)
  {
    if (paramClass == null)
      throw new IllegalArgumentException("No master interface specified");
    Object localObject1;
    try
    {
      String str1 = paramClass.getSimpleName();
      String str2 = paramClass.getPackage().getName();
      String str3 = str2.substring(1 + str2.lastIndexOf(46));
      String str4 = "com.applovin.impl." + str3 + "." + str1 + "Impl";
      a("Loading " + str4 + "...");
      Object localObject2 = paramClass.cast(this.e.loadClass(str4).newInstance());
      localObject1 = localObject2;
      return localObject1;
    }
    catch (Throwable localThrowable)
    {
      a("Can't load " + paramClass.getSimpleName(), localThrowable);
      localObject1 = null;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.sdk.bootstrap.SdkBootstrap
 * JD-Core Version:    0.5.3
 */