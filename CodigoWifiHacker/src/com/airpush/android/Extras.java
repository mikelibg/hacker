package com.airpush.android;

import android.accounts.Account;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.Log;

public abstract class Extras
{
  static String getEmail(Context paramContext)
  {
    String str = "";
    try
    {
      if ((Build.VERSION.SDK_INT >= 5) && (paramContext.checkCallingOrSelfPermission("android.permission.GET_ACCOUNTS") == 0))
        str = android.accounts.AccountManager.get(paramContext).getAccountsByType("com.google")[0].name;
      return str;
    }
    catch (Exception localException)
    {
      Log.i("AirpushSDK", "No email account found.");
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.airpush.android.Extras
 * JD-Core Version:    0.5.3
 */