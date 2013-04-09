package com.pad.android.util;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.format.DateFormat;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Date;

public class AdLog
{
  private static boolean a = false;
  private static Handler b;
  private static String c = "";

  private static void a(String paramString1, String paramString2)
  {
    if (b == null)
      return;
    Message localMessage = new Message();
    Bundle localBundle = new Bundle();
    localBundle.putString("tag", paramString1);
    localBundle.putString("msg", c + paramString2);
    localMessage.setData(localBundle);
    b.sendMessage(localMessage);
  }

  public static void d(String paramString1, String paramString2)
  {
    if (!(a))
      return;
    Log.d(paramString1, c + paramString2);
    a(paramString1, c + paramString2);
  }

  public static void e(String paramString1, String paramString2)
  {
    if (!(a))
      return;
    Log.e(paramString1, c + paramString2);
    a(paramString1, c + paramString2);
  }

  public static void enableLog(boolean paramBoolean)
  {
    Log.i("LBAdController", "enableLog: " + paramBoolean);
    a = paramBoolean;
  }

  public static void i(String paramString1, String paramString2)
  {
    if (!(a))
      return;
    Log.i(paramString1, c + paramString2);
    a(paramString1, c + paramString2);
  }

  public static void printStackTrace(String paramString, Exception paramException)
  {
    StringWriter localStringWriter = new StringWriter();
    paramException.printStackTrace(new PrintWriter(localStringWriter));
    String str = localStringWriter.toString();
    Log.d(paramString, str);
    a(paramString, str);
  }

  public static void setHandler(Handler paramHandler)
  {
    b = paramHandler;
  }

  public static void setPreText(String paramString)
  {
    c = paramString;
  }

  public static void timeTracK(String paramString)
  {
    if (!(a))
      return;
    CharSequence localCharSequence = DateFormat.format("h:mm:ss", new Date().getTime());
    Log.v("AdLogTimeTest", "Function - " + paramString + ": Time = " + localCharSequence);
    a("AdLogTimeTest", "Function - " + paramString + ": Time = " + localCharSequence);
  }

  public static void v(String paramString1, String paramString2)
  {
    if (!(a))
      return;
    Log.v(paramString1, c + paramString2);
    a(paramString1, c + paramString2);
  }

  public static void w(String paramString1, String paramString2)
  {
    if (!(a))
      return;
    Log.w(paramString1, c + paramString2);
    a(paramString1, c + paramString2);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.util.AdLog
 * JD-Core Version:    0.5.3
 */