package com.noshufou.android.su;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import com.noshufou.android.su.util.Util;

public class InstallReceiver extends BroadcastReceiver
{
  private static final String TAG = "Su.InstallReceiver";

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    String str1 = paramIntent.getDataString().split(":")[1];
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(str1, 4096);
      if (Util.isPackageMalicious(paramContext, localPackageInfo) != 0)
      {
        NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
        Notification localNotification = new Notification(2130837553, paramContext.getString(2131165359), System.currentTimeMillis());
        String str2 = paramContext.getString(2131165185);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localPackageManager.getApplicationLabel(localPackageInfo.applicationInfo);
        localNotification.setLatestEventInfo(paramContext, str2, paramContext.getString(2131165360, arrayOfObject), PendingIntent.getActivity(paramContext, 0, new Intent("android.intent.action.DELETE", paramIntent.getData()), 0));
        localNotification.flags = (0x10 | localNotification.flags);
        localNotificationManager.notify(0, localNotification);
      }
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.e("Su.InstallReceiver", "PackageManager divided by zero...", localNameNotFoundException);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.InstallReceiver
 * JD-Core Version:    0.5.3
 */