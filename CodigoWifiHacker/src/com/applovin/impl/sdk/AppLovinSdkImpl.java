package com.applovin.impl.sdk;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.Log;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.applovin.sdk.AppLovinTargetingData;
import com.applovin.sdk.Logger;

public class AppLovinSdkImpl extends AppLovinSdk
{
  public static final String FULL_VERSION = "4.2.0-4.2.1";
  public static final String IMPL_VERSION = "4.2.1";
  private String a;
  private AppLovinSdkSettings b;
  private Context c;
  private Logger d;
  private q e;
  private M f;
  private z g;
  private h h;
  private A i;
  private ae j;
  private f k;
  private b l;
  private boolean m = true;
  private boolean n = false;
  private boolean o = false;
  private boolean p = false;
  private boolean q = false;

  private static boolean h()
  {
    if ((Build.VERSION.RELEASE.startsWith("1.")) || (Build.VERSION.RELEASE.startsWith("2.0")) || (Build.VERSION.RELEASE.startsWith("2.1")));
    for (int i1 = 0; ; i1 = 1)
      return i1;
  }

  M a()
  {
    return this.f;
  }

  Object a(y paramy)
  {
    return this.g.a(paramy);
  }

  void a(boolean paramBoolean)
  {
    this.m = false;
    this.n = paramBoolean;
    this.o = true;
  }

  q b()
  {
    return this.e;
  }

  A c()
  {
    return this.i;
  }

  boolean d()
  {
    return this.m;
  }

  boolean e()
  {
    return this.o;
  }

  void f()
  {
    this.m = true;
    this.f.a(new L(this), 0L);
  }

  void g()
  {
    this.g.d();
    this.g.b();
    this.i.a();
  }

  public AppLovinAdService getAdService()
  {
    return this.l;
  }

  public Context getApplicationContext()
  {
    return this.c;
  }

  public h getConnectionManager()
  {
    return this.h;
  }

  public Logger getLogger()
  {
    return this.d;
  }

  public String getSdkKey()
  {
    return this.a;
  }

  public AppLovinSdkSettings getSettings()
  {
    return this.b;
  }

  public z getSettingsManager()
  {
    return this.g;
  }

  public AppLovinTargetingData getTargetingData()
  {
    return this.k;
  }

  public boolean hasCriticalErrors()
  {
    if ((this.p) || (this.q));
    for (int i1 = 1; ; i1 = 0)
      return i1;
  }

  protected void initialize(String paramString, AppLovinSdkSettings paramAppLovinSdkSettings, Context paramContext)
  {
    this.a = paramString;
    this.b = paramAppLovinSdkSettings;
    this.c = paramContext;
    t localt = new t();
    this.d = localt;
    this.g = new z(this);
    this.e = new q(this);
    this.f = new M(this);
    this.h = new h(this);
    this.i = new A(this);
    this.j = new ae(this);
    this.l = new b(this);
    this.k = new f(this);
    if (!(h()))
    {
      this.p = true;
      Log.e("AppLovinSdk", "Unable to initalize AppLovin SDK: Android SDK version has to be at least level 8");
    }
    if ((paramString == null) || (paramString.length() < 1))
    {
      this.q = true;
      Log.e("AppLovinSdk", "Unable to find AppLovin SDK key. Please add     meta-data android:name=\"applovin.sdk.key\" android:value=\"YOUR_SDK_KEY_HERE\" into AndroidManifest.xml.");
    }
    if (!(hasCriticalErrors()))
    {
      localt.a(this.e);
      localt.a(this.g);
      if (paramAppLovinSdkSettings instanceof s)
        localt.a(((s)paramAppLovinSdkSettings).a());
      this.g.c();
      if (((Boolean)this.g.a(w.b)).booleanValue())
      {
        this.g.a(paramAppLovinSdkSettings);
        this.g.a(w.b, Boolean.valueOf(false));
        this.g.b();
      }
      f();
    }
    while (true)
    {
      return;
      a(false);
    }
  }

  public boolean isEnabled()
  {
    return this.n;
  }

  public void setPluginVersion(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("No version specified");
    this.g.a(w.H, paramString);
    this.g.b();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.AppLovinSdkImpl
 * JD-Core Version:    0.5.3
 */