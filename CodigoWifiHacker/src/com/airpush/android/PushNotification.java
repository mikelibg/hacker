package com.airpush.android;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.util.Log;

class PushNotification
{
  private static final String TAG = "AirpushSDK";
  private static Context context;
  private Runnable send_Task = new Runnable()
  {
    public void run()
    {
      PushNotification.reStartSDK(PushNotification.context, true);
    }
  };

  public PushNotification(Context paramContext)
  {
    context = paramContext;
  }

  static void reStartSDK(Context paramContext, boolean paramBoolean)
  {
    context = paramContext;
    long l1 = 0L;
    if (paramBoolean)
    {
      long l2 = SetPreferences.getSDKStartTime(context);
      if (l2 != 0L)
      {
        long l3 = System.currentTimeMillis();
        if (l3 < l2)
        {
          long l4 = l2 - l3;
          Log.i("AirpushSDK", "SDK will restart after " + l4 + " ms.");
          l1 = l4;
          long l5 = l4 / 60000L;
          Util.printDebugLog("time difference : " + l5 + " minutes");
        }
      }
    }
    while (true)
      try
      {
        Intent localIntent = new Intent(context, PushService.class);
        localIntent.setAction("SetMessageReceiver");
        PendingIntent localPendingIntent = PendingIntent.getService(context, 0, localIntent, 0);
        ((AlarmManager)context.getSystemService("alarm")).setInexactRepeating(0, l1 + System.currentTimeMillis() + IConstants.INTERVAL_FIRST_TIME.intValue(), Util.getMessageIntervalTime(), localPendingIntent);
        label176: return;
        l1 = 1800000L;
        Util.printDebugLog("SDK will start after " + l1 + " ms.");
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        break label176:
      }
  }

  void startAirpush()
  {
    if (!(Airpush.checkRequiredPermission(context)))
      Log.i("AirpushSDK", "Unable to start airpush.");
    while (true)
    {
      return;
      if (!(new UserDetails(context).setImeiInMd5()))
        continue;
      try
      {
        new SetPreferences(context).setPreferencesData();
        SetPreferences.getDataSharedPrefrences(context);
        if (Util.isTestmode())
          Log.i("AirpushSDK", "Airpush push notification is running in test mode.");
        Log.i("AirpushSDK", "Push Notification Service...." + Util.isDoPush());
        Log.i("AirpushSDK", "Initialising push.....");
        if (!(Util.checkInternetConnection(context)))
          break label154;
        new Handler().postDelayed(this.send_Task, 6000L);
      }
      catch (Exception localException)
      {
        Util.printLog(localException.getMessage());
      }
      continue;
      label154: reStartSDK(context, false);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.airpush.android.PushNotification
 * JD-Core Version:    0.5.3
 */