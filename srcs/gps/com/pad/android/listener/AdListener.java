package com.pad.android.listener;

public abstract interface AdListener
{
  public abstract void onAdAlreadyCompleted();

  public abstract void onAdClicked();

  public abstract void onAdClosed();

  public abstract void onAdCompleted();

  public abstract void onAdFailed();

  public abstract void onAdHidden();

  public abstract void onAdLoaded();

  public abstract void onAdPaused();

  public abstract void onAdProgress();

  public abstract void onAdResumed();
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.listener.AdListener
 * JD-Core Version:    0.5.3
 */