package com.pad.android.iappad.controller;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import com.pad.android.iappad.AdController;
import com.pad.android.richmedia.view.AdView;
import com.pad.android.util.AdNetworkBroadcastReceiver;

public class AdNetworkController extends AdController
{
  private ConnectivityManager c;
  private int d;
  private AdNetworkBroadcastReceiver e;
  private IntentFilter f;

  public AdNetworkController(AdView paramAdView, Context paramContext)
  {
    super(paramAdView, paramContext);
    this.c = ((ConnectivityManager)paramContext.getSystemService("connectivity"));
  }

  public String getNetwork()
  {
    NetworkInfo localNetworkInfo = this.c.getActiveNetworkInfo();
    String str = "unknown";
    if (localNetworkInfo == null);
    for (str = "offline"; ; str = "wifi")
    {
      int i;
      do
        while (true)
        {
          Log.d("AdOrmmaNetworkController", "getNetwork: " + str);
          return str;
          switch (a()[localNetworkInfo.getState().ordinal()])
          {
          case 4:
          case 5:
          default:
            i = localNetworkInfo.getType();
            if (i != 0)
              break;
            str = "cell";
            break;
          case 6:
            str = "unknown";
            break;
          case 3:
          }
          str = "offline";
        }
      while (i != 1);
    }
  }

  public void onConnectionChanged()
  {
    String str = "window.ormmaview.fireChangeEvent({ network: '" + getNetwork() + "'});";
    Log.d("AdOrmmaNetworkController", str);
    this.b.injectJavaScript(str);
  }

  public void startNetworkListener()
  {
    if (this.d == 0)
    {
      this.e = new AdNetworkBroadcastReceiver(this);
      this.f = new IntentFilter();
      this.f.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    }
    this.d = (1 + this.d);
    this.a.registerReceiver(this.e, this.f);
  }

  public void stopAllListeners()
  {
    this.d = 0;
    try
    {
      this.a.unregisterReceiver(this.e);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void stopNetworkListener()
  {
    this.d = (-1 + this.d);
    if (this.d != 0)
      return;
    this.a.unregisterReceiver(this.e);
    this.e = null;
    this.f = null;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.iappad.controller.AdNetworkController
 * JD-Core Version:    0.5.3
 */