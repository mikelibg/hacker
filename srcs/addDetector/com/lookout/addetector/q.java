package com.lookout.addetector;

import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;

final class q
  implements View.OnClickListener
{
  public final void onClick(View paramView)
  {
    monitorenter;
    try
    {
      if (!(this.a.a))
      {
        this.a.a = true;
        ScannerMainActivity.a(this.a, new r(this.a, 0));
        Log.d("AdNetworkScanner", "Starting package scan");
        ScannerMainActivity.d(this.a).execute(new Integer[0]);
      }
      return;
    }
    finally
    {
      monitorexit;
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.q
 * JD-Core Version:    0.5.3
 */