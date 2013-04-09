package com.google.ads;

public abstract interface AdListener
{
  public abstract void onDismissScreen(Ad paramAd);

  public abstract void onFailedToReceiveAd(Ad paramAd, AdRequest.ErrorCode paramErrorCode);

  public abstract void onLeaveApplication(Ad paramAd);

  public abstract void onPresentScreen(Ad paramAd);

  public abstract void onReceiveAd(Ad paramAd);
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.google.ads.AdListener
 * JD-Core Version:    0.5.3
 */