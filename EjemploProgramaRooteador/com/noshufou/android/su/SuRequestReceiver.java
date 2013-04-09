package com.noshufou.android.su;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.net.LocalSocketAddress.Namespace;
import android.preference.PreferenceManager;
import android.util.Log;
import java.io.IOException;
import java.io.OutputStream;

public class SuRequestReceiver extends BroadcastReceiver
{
  public static final String EXTRA_ALLOW = "allow";
  public static final String EXTRA_CALLERUID = "caller_uid";
  public static final String EXTRA_CMD = "desired_cmd";
  public static final String EXTRA_SOCKET = "socket";
  public static final String EXTRA_UID = "desired_uid";
  public static final String EXTRA_VERSION_CODE = "version_code";
  private static final String TAG = "Su.SuRequestReceiver";

  private void sendResult(Context paramContext, Intent paramIntent, boolean paramBoolean)
  {
    LocalSocket localLocalSocket = new LocalSocket();
    try
    {
      localLocalSocket.connect(new LocalSocketAddress(paramIntent.getStringExtra("socket"), LocalSocketAddress.Namespace.FILESYSTEM));
      OutputStream localOutputStream = localLocalSocket.getOutputStream();
      if (paramBoolean)
      {
        str = "ALLOW";
        localOutputStream.write(str.getBytes());
        localOutputStream.flush();
        localOutputStream.close();
        localLocalSocket.close();
        return;
      }
      String str = "DENY";
    }
    catch (IOException localIOException)
    {
      Log.e("Su.SuRequestReceiver", "Failed to write to socket", localIOException);
    }
  }

  private void showPrompt(Context paramContext, Intent paramIntent)
  {
    Intent localIntent = new Intent(paramContext, SuRequestActivity.class);
    localIntent.putExtras(paramIntent);
    localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramContext);
    String str = localSharedPreferences.getString("pref_automatic_action", "prompt");
    if (str.equals("deny"))
    {
      sendResult(paramContext, paramIntent, false);
      return;
    }
    if (str.equals("allow"))
    {
      sendResult(paramContext, paramIntent, true);
      return;
    }
    if (localSharedPreferences.getInt("pref_timeout", 0) > 0)
    {
      long l = localSharedPreferences.getLong("active_" + paramIntent.getIntExtra("caller_uid", 0), 0L);
      if (System.currentTimeMillis() < l)
      {
        sendResult(paramContext, paramIntent, true);
        return;
      }
      showPrompt(paramContext, paramIntent);
      return;
    }
    showPrompt(paramContext, paramIntent);
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     com.noshufou.android.su.SuRequestReceiver
 * JD-Core Version:    0.5.3
 */