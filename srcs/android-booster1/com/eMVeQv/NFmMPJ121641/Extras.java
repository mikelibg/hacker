package com.eMVeQv.NFmMPJ121641;

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
    return str;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.Extras
 * JD-Core Version:    0.5.3
 */