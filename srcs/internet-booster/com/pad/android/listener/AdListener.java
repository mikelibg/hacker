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

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.listener.AdListener
 * JD-Core Version:    0.5.3
 */