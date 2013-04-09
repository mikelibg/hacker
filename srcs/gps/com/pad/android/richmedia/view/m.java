package com.pad.android.richmedia.view;

import android.os.Handler;
import com.pad.android.iappad.AdController;
import java.lang.reflect.Method;

final class m
  implements Runnable
{
  public final void run()
  {
    try
    {
      Class.forName("android.webkit.WebView").getMethod("onPause", null).invoke(this, null);
      AdView.i(this.a).sendEmptyMessage(1001);
      if (AdView.g(this.a) != null)
        AdView.g(this.a).destroyAd();
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.richmedia.view.m
 * JD-Core Version:    0.5.3
 */