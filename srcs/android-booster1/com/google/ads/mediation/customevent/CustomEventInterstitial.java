package com.google.ads.mediation.customevent;

import android.app.Activity;
import com.google.ads.mediation.MediationAdRequest;

public abstract interface CustomEventInterstitial
{
  public abstract void requestInterstitialAd(CustomEventInterstitialListener paramCustomEventInterstitialListener, Activity paramActivity, String paramString1, String paramString2, MediationAdRequest paramMediationAdRequest);

  public abstract void showInterstitial();
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.google.ads.mediation.customevent.CustomEventInterstitial
 * JD-Core Version:    0.5.3
 */