package com.pad.android.iappad;

import android.os.Handler;
import com.pad.android.listener.AdAudioListener;
import com.pad.android.util.AdLog;

final class j
  implements Runnable
{
  public final void run()
  {
    try
    {
      if ((!(AdController.A(this.a))) && (!(AdController.w(this.a))))
      {
        AdLog.i("LBAdController", "onAdProgress triggered");
        AdController.m(this.a).onAdProgress();
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

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.iappad.j
 * JD-Core Version:    0.5.3
 */