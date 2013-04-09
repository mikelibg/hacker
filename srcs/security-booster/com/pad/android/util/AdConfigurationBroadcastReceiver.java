package com.pad.android.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.pad.android.iappad.controller.AdDisplayController;

public class AdConfigurationBroadcastReceiver extends BroadcastReceiver
{
  private AdDisplayController a;
  private int b;

  public AdConfigurationBroadcastReceiver(AdDisplayController paramAdDisplayController)
  {
    this.a = paramAdDisplayController;
    this.b = this.a.getOrientation();
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!(paramIntent.getAction().equals("android.intent.action.CONFIGURATION_CHANGED")))
      return;
    int i = this.a.getOrientation();
    if (i == this.b)
      return;
    this.b = i;
    this.a.onOrientationChanged(this.b);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.util.AdConfigurationBroadcastReceiver
 * JD-Core Version:    0.5.3
 */