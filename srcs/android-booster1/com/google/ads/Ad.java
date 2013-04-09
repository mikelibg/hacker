package com.google.ads;

public abstract interface Ad
{
  public abstract boolean isReady();

  public abstract void loadAd(AdRequest paramAdRequest);

  public abstract void setAdListener(AdListener paramAdListener);

  public abstract void stopLoading();
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.google.ads.Ad
 * JD-Core Version:    0.5.3
 */