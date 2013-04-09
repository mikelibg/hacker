package com.google.ads.mediation.customevent;

import android.view.View;

public abstract interface CustomEventBannerListener extends CustomEventListener
{
  public abstract void onClick();

  public abstract void onReceivedAd(View paramView);
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.google.ads.mediation.customevent.CustomEventBannerListener
 * JD-Core Version:    0.5.3
 */