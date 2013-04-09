package com.pad.android.iappad.controller;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;

final class a
  implements LocationListener
{
  private AdLocationController a;
  private LocationManager b;
  private String c;

  public a(AdLocationController paramAdLocationController1, Context paramContext, AdLocationController paramAdLocationController2, String paramString)
  {
    this.a = paramAdLocationController2;
    this.b = ((LocationManager)paramContext.getSystemService("location"));
    this.c = paramString;
  }

  public final void a()
  {
    this.b.requestLocationUpdates(this.c, 0L, 0.0F, this);
  }

  public final void b()
  {
    this.b.removeUpdates(this);
  }

  public final void onLocationChanged(Location paramLocation)
  {
    this.a.success(paramLocation);
  }

  public final void onProviderDisabled(String paramString)
  {
    this.a.fail();
  }

  public final void onProviderEnabled(String paramString)
  {
  }

  public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
    if (paramInt != 0)
      return;
    this.a.fail();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.iappad.controller.a
 * JD-Core Version:    0.5.3
 */