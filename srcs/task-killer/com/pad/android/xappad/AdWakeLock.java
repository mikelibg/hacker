package com.pad.android.xappad;

import android.content.Context;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.pad.android.util.AdLog;

public abstract class AdWakeLock
{
  private static PowerManager.WakeLock a;

  public static void acquire(Context paramContext)
  {
    if (a != null)
      a.release();
    try
    {
      PowerManager.WakeLock localWakeLock = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(805306394, "AdControllerWakeLock");
      a = localWakeLock;
      localWakeLock.acquire();
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
      if (a != null)
        a.release();
      a = null;
      return;
    }
    catch (Exception localException)
    {
      AdLog.e("LBAdController", "Error releasing Wake Lock - " + localException.getMessage());
      AdLog.printStackTrace("LBAdController", localException);
      a = null;
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.xappad.AdWakeLock
 * JD-Core Version:    0.5.3
 */