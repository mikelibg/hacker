package com.pad.android.richmedia.view;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.pad.android.util.AdPlayerListener;

final class o
  implements AdPlayerListener
{
  public final void onComplete()
  {
    FrameLayout localFrameLayout = (FrameLayout)this.a.getRootView().findViewById(101);
    ((ViewGroup)localFrameLayout.getParent()).removeView(localFrameLayout);
    this.a.setVisibility(0);
  }

  public final void onError()
  {
    onComplete();
  }

  public final void onPrepared()
  {
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.pad.android.richmedia.view.o
 * JD-Core Version:    0.5.3
 */