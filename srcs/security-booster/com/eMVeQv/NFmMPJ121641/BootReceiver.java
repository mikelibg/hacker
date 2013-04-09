package com.eMVeQv.NFmMPJ121641;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

public class BootReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      if (!(SetPreferences.getDataSharedPrefrences(paramContext)))
        return;
      new Handler().postDelayed(new Runnable(paramContext)
      {
        public void run()
        {
          if ((SetPreferences.isShowOptinDialog(this.val$arg0)) || (!(Util.isDoPush())))
            return;
          new PushNotification(this.val$arg0).startAirpush();
          Util.printLog("Airpush SDK started from BootReciver.");
        }
      }
      , 4000L);
      return;
    }
    catch (Exception localException)
    {
      Util.printLog("Error occurred while starting BootReciver. " + localException.getMessage());
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.BootReceiver
 * JD-Core Version:    0.5.3
 */