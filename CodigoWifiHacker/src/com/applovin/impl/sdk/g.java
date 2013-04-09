package com.applovin.impl.sdk;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;

class g
{
  static void a()
  {
    try
    {
      if (Build.VERSION.SDK_INT >= 9)
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  static String b()
  {
    String str;
    try
    {
      if (Build.VERSION.SDK_INT < 9)
        break label15;
      str = Build.SERIAL;
      label15: return str;
    }
    catch (Throwable localThrowable)
    {
      str = null;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.g
 * JD-Core Version:    0.5.3
 */