package com.pad.android.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.pad.android.iappad.controller.AdNetworkController;

public class AdNetworkBroadcastReceiver extends BroadcastReceiver
{
  private AdNetworkController a;

  public AdNetworkBroadcastReceiver(AdNetworkController paramAdNetworkController)
  {
    this.a = paramAdNetworkController;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!(paramIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")))
      return;
    this.a.onConnectionChanged();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.util.AdNetworkBroadcastReceiver
 * JD-Core Version:    0.5.3
 */