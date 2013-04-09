package com.google.ads.mediation;

import android.app.Activity;

public abstract interface MediationInterstitialAdapter<ADDITIONAL_PARAMETERS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> extends MediationAdapter<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS>
{
  public abstract void requestInterstitialAd(MediationInterstitialListener paramMediationInterstitialListener, Activity paramActivity, SERVER_PARAMETERS paramSERVER_PARAMETERS, MediationAdRequest paramMediationAdRequest, ADDITIONAL_PARAMETERS paramADDITIONAL_PARAMETERS);

  public abstract void showInterstitial();
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.google.ads.mediation.MediationInterstitialAdapter
 * JD-Core Version:    0.5.3
 */