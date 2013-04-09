package com.pad.android.util;

import android.widget.RelativeLayout;
import java.lang.reflect.Method;

final class d
  implements Runnable
{
  public final void run()
  {
    if (AdOptinView.e(this.a) != null)
      AdOptinView.e(this.a).removeAllViews();
    this.a.setVisibility(4);
    try
    {
      Class.forName("android.webkit.WebView").getMethod("onPause", null).invoke(this, null);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.util.d
 * JD-Core Version:    0.5.3
 */