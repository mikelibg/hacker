package com.pad.android.iappad;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class n
  implements View.OnTouchListener
{
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    paramMotionEvent.setAction(3);
    return false;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.iappad.n
 * JD-Core Version:    0.5.3
 */