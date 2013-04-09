package com.applovin.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class AppLovinBootReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!("android.intent.action.BOOT_COMPLETED".equals(paramIntent.getAction())))
      return;
    paramContext.startService(new Intent(paramContext, AppLovinService.class));
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.sdk.AppLovinBootReceiver
 * JD-Core Version:    0.5.3
 */