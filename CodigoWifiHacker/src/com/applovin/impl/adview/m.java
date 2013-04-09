package com.applovin.impl.adview;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.applovin.sdk.AppLovinAdSize;

class m
  implements View.OnTouchListener
{
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = 1;
    int j;
    label23: int k;
    if (this.a == AppLovinAdSize.BANNER)
      if (paramMotionEvent.getAction() == 2)
      {
        j = i;
        if (paramMotionEvent.getAction() != 0)
          break label46;
        k = i;
        label33: if (j == 0)
          break label52;
      }
    while (true)
    {
      return i;
      j = 0;
      break label23:
      label46: k = 0;
      break label33:
      if (k != 0)
        label52: this.b.a(this.c);
      if (!(paramView.hasFocus()))
        paramView.requestFocus();
      i = 0;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.m
 * JD-Core Version:    0.5.3
 */