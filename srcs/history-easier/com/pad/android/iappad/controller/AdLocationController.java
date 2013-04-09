package com.pad.android.iappad.controller;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import com.pad.android.iappad.AdController;
import com.pad.android.richmedia.view.AdView;
import java.util.Iterator;
import java.util.List;

public class AdLocationController extends AdController
{
  private LocationManager c;
  private boolean d = false;
  private a e;
  private a f;
  private int g;
  private boolean h = false;

  public AdLocationController(AdView paramAdView, Context paramContext)
  {
    super(paramAdView, paramContext);
    try
    {
      this.c = ((LocationManager)paramContext.getSystemService("location"));
      if (this.c.getProvider("gps") != null)
        this.e = new a(this, paramContext, this, "gps");
      if (this.c.getProvider("network") != null)
        this.f = new a(this, paramContext, this, "network");
      this.d = true;
      return;
    }
    catch (SecurityException localSecurityException)
    {
    }
  }

  private static String a(Location paramLocation)
  {
    return "{ lat: " + paramLocation.getLatitude() + ", lon: " + paramLocation.getLongitude() + ", acc: " + paramLocation.getAccuracy() + "}";
  }

  public void allowLocationServices(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public boolean allowLocationServices()
  {
    return this.h;
  }

  public void fail()
  {
    Log.e("AdLocationController", "Location can't be determined");
    this.b.injectJavaScript("window.ormmaview.fireErrorEvent(\"Location cannot be identified\", \"AdOrmmaLocationController\")");
  }

  public String getLocation()
  {
    Log.d("AdLocationController", "getLocation: hasPermission: " + this.d);
    if (!(this.d))
      return null;
    Iterator localIterator = this.c.getProviders(true).iterator();
    Object localObject = null;
    while (true)
    {
      if (!(localIterator.hasNext()));
      do
      {
        Log.d("AdLocationController", "getLocation: " + localObject);
        if (localObject != null);
        return a((Location)localObject);
        localObject = this.c.getLastKnownLocation((String)localIterator.next());
      }
      while (localObject != null);
    }
  }

  public void startLocationListener()
  {
    if (this.g == 0)
    {
      if (this.f != null)
        this.f.a();
      if (this.e != null)
        this.e.a();
    }
    this.g = (1 + this.g);
  }

  public void stopAllListeners()
  {
    this.g = 0;
    try
    {
      this.e.b();
      try
      {
        this.f.b();
        return;
      }
      catch (Exception localException2)
      {
        return;
      }
    }
    catch (Exception localException1)
    {
    }
  }

  public void stopLocationListener()
  {
    this.g = (-1 + this.g);
    if (this.g != 0)
      return;
    if (this.f != null)
      this.f.b();
    if (this.e == null)
      return;
    this.e.b();
  }

  public void success(Location paramLocation)
  {
    String str = "window.ormmaview.fireChangeEvent({ location: " + a(paramLocation) + "})";
    Log.d("AdLocationController", str);
    this.b.injectJavaScript(str);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.iappad.controller.AdLocationController
 * JD-Core Version:    0.5.3
 */