package com.pad.android.xappad;

import android.content.Context;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.pad.android.util.AdLog;

public abstract class AdWakeLock
{
  private static final String LB_LOG = "LBAdController";
  private static PowerManager.WakeLock wakeLock;

  public static void acquire(Context paramContext)
  {
    if (wakeLock != null)
      wakeLock.release();
    try
    {
      wakeLock = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(805306394, "AdControllerWakeLock");
      wakeLock.acquire();
      return;
    }
    catch (Exception localException)
    {
      AdLog.e("LBAdController", "Error acquiring Wake Lock - " + localException.getMessage());
      AdLog.printStackTrace("LBAdController", localException);
    }
  }

  public static void release()
  {
    try
    {
      if (wakeLock != null)
        wakeLock.release();
      wakeLock = null;
      return;
    }
    catch (Exception localException)
    {
      AdLog.e("LBAdController", "Error releasing Wake Lock - " + localException.getMessage());
      AdLog.printStackTrace("LBAdController", localException);
      wakeLock = null;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.pad.android.xappad.AdWakeLock
 * JD-Core Version:    0.5.3
 */