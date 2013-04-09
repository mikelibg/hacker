package com.google.ads.mediation.customevent;

public abstract interface CustomEventListener
{
  public abstract void onDismissScreen();

  public abstract void onFailedToReceiveAd();

  public abstract void onLeaveApplication();

  public abstract void onPresentScreen();
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.google.ads.mediation.customevent.CustomEventListener
 * JD-Core Version:    0.5.3
 */