package com.pad.android.iappad;

import android.os.Handler;
import com.pad.android.listener.AdListener;
import com.pad.android.util.AdLog;

final class i
  implements Runnable
{
  public final void run()
  {
    try
    {
      if ((!(AdController.v(this.a))) && (!(AdController.w(this.a))))
      {
        AdLog.i("LBAdController", "onAdProgress triggered");
        AdController.k(this.a).onAdProgress();
        AdController.x(this.a).postDelayed(AdController.y(this.a), 1000 * AdController.z(this.a));
      }
      return;
    }
    catch (Exception localException)
    {
      AdLog.e("LBAdController", "error when onAdProgress triggered");
      AdLog.printStackTrace("LBAdController", localException);
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.iappad.i
 * JD-Core Version:    0.5.3
 */