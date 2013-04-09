package com.pad.android.xappad;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.pad.android.util.AdLog;
import com.pad.android.util.AdWakeLock;

public class AdReminderNotification extends BroadcastReceiver
{
  NotificationManager nm;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    String str1 = localBundle.getString("sectionid");
    AdLog.i("LBAdController", "onReceived called AdReminderNotification - " + str1);
    AdLog.i("LBAdController", "alarmType - " + localBundle.getString("alarmtype"));
    String str2 = localBundle.getString("alarmtype");
    if (str2.equals("cancel"))
    {
      this.nm = ((NotificationManager)paramContext.getSystemService("notification"));
      this.nm.cancel(1002);
    }
    do
      return;
    while (!(str2.equals("reminder")));
    AdLog.i("LBAdController", "Reminder Alarm triggered with sectionid - " + str1);
    this.nm = ((NotificationManager)paramContext.getSystemService("notification"));
    int[] arrayOfInt = { 17301620, 17301547, 17301516, 17301514, 17301618 };
    int i = 0;
    String str3 = "";
    try
    {
      AdLog.i("LBAdController", "get values from bundle");
      i = Integer.valueOf(localBundle.getString("remindericon")).intValue();
      str3 = localBundle.getString("remindertitle");
      String str4;
      Notification localNotification3;
      try
      {
        AdLog.e("LBAdController", "trigger the reminder notification");
        AdWakeLock.acquire(paramContext);
        this.nm.notify(1002, localNotification3);
        AdWakeLock.release();
        return;
      }
      catch (Exception localException4)
      {
        AdLog.printStackTrace("LBAdController", localException4);
        AdLog.e("LBAdController", "Error in reminder notification - " + localException4.getMessage());
        return;
      }
    }
    catch (Exception localException2)
    {
      Notification localNotification2;
      try
      {
        AdLog.e("LBAdController", "trigger the reminder notification");
        AdWakeLock.acquire(paramContext);
        this.nm.notify(1002, localNotification2);
        AdWakeLock.release();
        return;
      }
      catch (Exception localException3)
      {
        AdLog.printStackTrace("LBAdController", localException3);
        AdLog.e("LBAdController", "Error in reminder notification - " + localException3.getMessage());
        return;
      }
    }
    finally
    {
      AdLog.e("LBAdController", "into finally statement");
      Notification localNotification1 = new Notification(arrayOfInt[i], str3, System.currentTimeMillis());
      localNotification1.flags = (0x10 | localNotification1.flags);
      localNotification1.setLatestEventInfo(paramContext, str3, "", PendingIntent.getActivity(paramContext, 0, new Intent(), 0));
      try
      {
        AdLog.e("LBAdController", "trigger the reminder notification");
        AdWakeLock.acquire(paramContext);
        this.nm.notify(1002, localNotification1);
        AdWakeLock.release();
        throw localObject;
      }
      catch (Exception localException1)
      {
        AdLog.printStackTrace("LBAdController", localException1);
        AdLog.e("LBAdController", "Error in reminder notification - " + localException1.getMessage());
      }
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.pad.android.xappad.AdReminderNotification
 * JD-Core Version:    0.5.3
 */