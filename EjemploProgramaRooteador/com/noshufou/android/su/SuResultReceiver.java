package com.noshufou.android.su;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.noshufou.android.su.service.ResultService;

public class SuResultReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getIntExtra("version_code", 0) < 6)
    {
      NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
      Notification localNotification = new Notification(2130837553, paramContext.getString(2131165346), System.currentTimeMillis());
      PendingIntent localPendingIntent = PendingIntent.getActivity(paramContext, 0, new Intent(paramContext, UpdaterActivity.class), 0);
      localNotification.setLatestEventInfo(paramContext, paramContext.getString(2131165347), paramContext.getString(2131165348), localPendingIntent);
      localNotification.flags = (0x10 | localNotification.flags);
      localNotificationManager.notify(0, localNotification);
      return;
    }
    Intent localIntent = new Intent(paramContext, ResultService.class);
    localIntent.putExtras(paramIntent);
    localIntent.putExtra("action", 1);
    paramContext.startService(localIntent);
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     com.noshufou.android.su.SuResultReceiver
 * JD-Core Version:    0.5.3
 */