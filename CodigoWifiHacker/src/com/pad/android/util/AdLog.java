package com.pad.android.util;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;

public class AdLog
{
  private static boolean doLog = false;
  private static Handler myHandler;

  public static void d(String paramString1, String paramString2)
  {
    if (!(doLog))
      return;
    Log.d(paramString1, paramString2);
    sendToTextView(paramString1, paramString2);
  }

  public static void e(String paramString1, String paramString2)
  {
    if (!(doLog))
      return;
    Log.e(paramString1, paramString2);
    sendToTextView(paramString1, paramString2);
  }

  public static void enableLog(boolean paramBoolean)
  {
    Log.i("LBAdController", "enableLog: " + paramBoolean);
    doLog = paramBoolean;
  }

  public static void i(String paramString1, String paramString2)
  {
    if (!(doLog))
      return;
    Log.i(paramString1, paramString2);
    sendToTextView(paramString1, paramString2);
  }

  public static void printStackTrace(String paramString, Exception paramException)
  {
    StringWriter localStringWriter = new StringWriter();
    paramException.printStackTrace(new PrintWriter(localStringWriter));
    String str = localStringWriter.toString();
    Log.d(paramString, str);
    sendToTextView(paramString, str);
  }

  private static void sendToTextView(String paramString1, String paramString2)
  {
    if (myHandler == null)
      return;
    Message localMessage = new Message();
    Bundle localBundle = new Bundle();
    localBundle.putString("tag", paramString1);
    localBundle.putString("msg", paramString2);
    localMessage.setData(localBundle);
    myHandler.sendMessage(localMessage);
  }

  public static void setHandler(Handler paramHandler)
  {
    myHandler = paramHandler;
  }

  public static void v(String paramString1, String paramString2)
  {
    if (!(doLog))
      return;
    Log.v(paramString1, paramString2);
    sendToTextView(paramString1, paramString2);
  }

  public static void w(String paramString1, String paramString2)
  {
    if (!(doLog))
      return;
    Log.w(paramString1, paramString2);
    sendToTextView(paramString1, paramString2);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.pad.android.util.AdLog
 * JD-Core Version:    0.5.3
 */