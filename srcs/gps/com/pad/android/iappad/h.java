package com.pad.android.iappad;

import com.pad.android.util.AdLog;

final class h
  implements Runnable
{
  public final void run()
  {
    AdLog.i("LBAdController", "Tease Time passed - loading Ad");
    AdController.u(this.a);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.iappad.h
 * JD-Core Version:    0.5.3
 */