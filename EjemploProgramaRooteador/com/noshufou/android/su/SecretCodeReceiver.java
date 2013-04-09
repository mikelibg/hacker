package com.noshufou.android.su;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.preference.PreferenceManager;

public class SecretCodeReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getData().getHost();
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramContext);
    if ((!(localSharedPreferences.getBoolean("pref_ghost_mode", false))) || (!(localSharedPreferences.getString("pref_secret_code", "787378737").equals(str))))
      return;
    Intent localIntent = new Intent(paramContext, HomeActivity.class);
    localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     com.noshufou.android.su.SecretCodeReceiver
 * JD-Core Version:    0.5.3
 */