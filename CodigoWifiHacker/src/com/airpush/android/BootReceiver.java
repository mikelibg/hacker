package com.airpush.android;

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
          new PushNotification(this.val$arg0).startAirpush();
          Util.printDebugLog("Airpush SDK started form BootReciver.");
        }
      }
      , 4000L);
    }
    catch (Exception localException)
    {
      Util.printLog("Error occoured while starting BootReciver. " + localException.getMessage());
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.airpush.android.BootReceiver
 * JD-Core Version:    0.5.3
 */