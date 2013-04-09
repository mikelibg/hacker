package com.applovin.impl.sdk;

import android.content.Context;
import android.os.PowerManager;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdUpdateListener;
import com.applovin.sdk.Logger;
import java.util.ArrayList;
import java.util.Collection;

class b
  implements AppLovinAdService
{
  private final AppLovinSdkImpl a;
  private final Logger b;
  private final Collection c = new ArrayList(10);
  private boolean d = false;
  private AppLovinAd e = null;
  private long f = 0L;
  private final Collection g = new ArrayList(5);
  private final Object h = new Object();

  b(AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    if (paramAppLovinSdkImpl == null)
      throw new IllegalArgumentException("No sdk specified");
    this.a = paramAppLovinSdkImpl;
    this.b = paramAppLovinSdkImpl.getLogger();
  }

  private void a(AppLovinAdSize paramAppLovinAdSize)
  {
    long l = ((Long)this.a.a(w.G)).longValue();
    if (l <= 0L)
      return;
    e locale = new e(this, paramAppLovinAdSize);
    this.a.a().a(locale, N.a, 1000L * (l + 2L));
  }

  private boolean a()
  {
    return ((PowerManager)this.a.getApplicationContext().getSystemService("power")).isScreenOn();
  }

  private boolean b(AppLovinAdSize paramAppLovinAdSize)
  {
    if ((((Boolean)this.a.a(w.F)).booleanValue()) && (paramAppLovinAdSize == AppLovinAdSize.BANNER));
    for (int i = 1; ; i = 0)
      return i;
  }

  public void addAdUpdateListener(AppLovinAdUpdateListener paramAppLovinAdUpdateListener)
  {
    if (paramAppLovinAdUpdateListener == null)
      throw new IllegalArgumentException("No ad listener specified");
    synchronized (this.c)
    {
      boolean bool = this.c.contains(paramAppLovinAdUpdateListener);
      int i = 0;
      if (!(bool))
      {
        this.c.add(paramAppLovinAdUpdateListener);
        i = 1;
        this.b.d("AppLovinAdService", "Added update listener: " + paramAppLovinAdUpdateListener);
      }
      if (i != 0)
      {
        e locale = new e(this, AppLovinAdSize.BANNER);
        this.a.a().a(locale, N.a);
      }
      return;
    }
  }

  public void loadNextAd(AppLovinAdSize paramAppLovinAdSize, AppLovinAdLoadListener paramAppLovinAdLoadListener)
  {
    loadNextAd(paramAppLovinAdSize, null, paramAppLovinAdLoadListener);
  }

  public void loadNextAd(AppLovinAdSize paramAppLovinAdSize, String paramString, AppLovinAdLoadListener paramAppLovinAdLoadListener)
  {
    if (paramAppLovinAdSize == null)
      throw new IllegalArgumentException("No ad size specified");
    if (paramAppLovinAdLoadListener == null)
      throw new IllegalArgumentException("No callback specified");
    if (b(paramAppLovinAdSize));
    while (true)
    {
      synchronized (this.h)
      {
        if (this.e != null)
          localAppLovinAd = this.e;
        boolean bool;
        do
        {
          if (localAppLovinAd != null)
          {
            paramAppLovinAdLoadListener.adReceived(localAppLovinAd);
            a(paramAppLovinAdSize);
          }
          return;
          this.g.add(paramAppLovinAdLoadListener);
          bool = this.d;
          localAppLovinAd = null;
        }
        while (bool);
        F localF2 = new F(paramAppLovinAdSize, new d(this, null), this.a);
        localF2.a(paramString);
        this.a.a().a(localF2, N.a);
        this.d = true;
        AppLovinAd localAppLovinAd = null;
      }
      F localF1 = new F(paramAppLovinAdSize, paramAppLovinAdLoadListener, this.a);
      localF1.a(paramString);
      this.a.a().a(localF1, N.a);
    }
  }

  public void loadNextAd(String paramString, AppLovinAdLoadListener paramAppLovinAdLoadListener)
  {
    if (paramString == null)
      throw new IllegalArgumentException("No ad ID specified");
    if (paramAppLovinAdLoadListener == null)
      throw new IllegalArgumentException("No callback specified");
    E localE = new E(paramString, paramAppLovinAdLoadListener, this.a);
    this.a.a().a(localE, N.a);
  }

  public void removeAdUpdateListener(AppLovinAdUpdateListener paramAppLovinAdUpdateListener)
  {
    if (paramAppLovinAdUpdateListener == null)
      return;
    synchronized (this.c)
    {
      this.c.remove(paramAppLovinAdUpdateListener);
      this.b.d("AppLovinAdService", "Removed update listener: " + paramAppLovinAdUpdateListener);
    }
  }

  public void trackAdClick(AppLovinAd paramAppLovinAd)
  {
    if (paramAppLovinAd == null)
      throw new IllegalArgumentException("No ad specified");
    V localV = new V(paramAppLovinAd, this.a);
    this.a.a().a(localV, N.a, 500L);
    synchronized (this.h)
    {
      this.e = null;
      this.f = 0L;
      return;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.b
 * JD-Core Version:    0.5.3
 */