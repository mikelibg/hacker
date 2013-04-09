package com.pad.android.xappad;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import java.net.HttpURLConnection;
import java.net.URL;

final class d extends AsyncTask
{
  private int a;
  private CharSequence b;
  private CharSequence c;
  private CharSequence d;
  private NotificationManager e;
  private PendingIntent f;
  private String g = ".R$layout";
  private String h = ".R$id";
  private String i = "xappad_notification";
  private String j = "xappad_mainview";
  private String k = "xappad_customtextview";
  private String l = "xappad_bannerviewimg";
  private String m = "xappad_bannerviewtext";

  public d(AdController paramAdController, int paramInt, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, NotificationManager paramNotificationManager, PendingIntent paramPendingIntent)
  {
    this.a = paramInt;
    this.b = paramCharSequence1;
    this.c = paramCharSequence2;
    this.d = paramCharSequence3;
    this.e = paramNotificationManager;
    this.f = paramPendingIntent;
  }

  private static Bitmap a(String[] paramArrayOfString)
  {
    String str = paramArrayOfString[0];
    if ((str != null) && (!(str.equals(""))))
      try
      {
        Bitmap localBitmap = BitmapFactory.decodeStream(((HttpURLConnection)new URL(str).openConnection()).getInputStream());
        return localBitmap;
      }
      catch (Exception localException)
      {
        return null;
      }
    return null;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.xappad.d
 * JD-Core Version:    0.5.3
 */