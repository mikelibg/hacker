package com.wifi.hacker.cracker;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViews;

public class hiqe867i4vwikv3pa extends AppWidgetProvider
{
  public void onUpdate(Context paramContext, AppWidgetManager paramAppWidgetManager, int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    for (int j = 0; ; ++j)
    {
      if (j >= i)
        return;
      int k = paramArrayOfInt[j];
      PendingIntent localPendingIntent = PendingIntent.getActivity(paramContext, 0, new Intent(paramContext, MainActivity.class), 0);
      RemoteViews localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2130903042);
      localRemoteViews.setOnClickPendingIntent(2131165186, localPendingIntent);
      paramAppWidgetManager.updateAppWidget(k, localRemoteViews);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.wifi.hacker.cracker.hiqe867i4vwikv3pa
 * JD-Core Version:    0.5.3
 */