package com.google.ads.mediation.customevent;

import android.view.View;

public abstract interface CustomEventBannerListener extends CustomEventListener
{
  public abstract void onClick();

  public abstract void onReceivedAd(View paramView);
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.google.ads.mediation.customevent.CustomEventBannerListener
 * JD-Core Version:    0.5.3
 */