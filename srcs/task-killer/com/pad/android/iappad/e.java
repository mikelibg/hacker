package com.pad.android.iappad;

import android.app.ProgressDialog;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.pad.android.util.AdLog;

final class e
  implements View.OnClickListener
{
  public final void onClick(View paramView)
  {
    AdController.a(this.a, ProgressDialog.show(AdController.n(this.a), "", "Checking....Please Wait!", true));
    if (AdController.g(this.a) == null)
      AdController.a(this.a, new s(this.a));
    AdController.a(this.a, new Handler());
    try
    {
      AdLog.i("LBAdController", "Manually Polling");
      AdController.f(this.a).post(AdController.g(this.a));
      return;
    }
    catch (Exception localException)
    {
      AdLog.e("LBAdController", "Error in manual polling - " + localException.getMessage());
      AdLog.printStackTrace("LBAdController", localException);
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.iappad.e
 * JD-Core Version:    0.5.3
 */