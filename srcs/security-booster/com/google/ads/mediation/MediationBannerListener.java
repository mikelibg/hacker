package com.google.ads.mediation;

import com.google.ads.AdRequest.ErrorCode;

public abstract interface MediationBannerListener
{
  public abstract void onClick(MediationBannerAdapter<?, ?> paramMediationBannerAdapter);

  public abstract void onDismissScreen(MediationBannerAdapter<?, ?> paramMediationBannerAdapter);

  public abstract void onFailedToReceiveAd(MediationBannerAdapter<?, ?> paramMediationBannerAdapter, AdRequest.ErrorCode paramErrorCode);

  public abstract void onLeaveApplication(MediationBannerAdapter<?, ?> paramMediationBannerAdapter);

  public abstract void onPresentScreen(MediationBannerAdapter<?, ?> paramMediationBannerAdapter);

  public abstract void onReceivedAd(MediationBannerAdapter<?, ?> paramMediationBannerAdapter);
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.google.ads.mediation.MediationBannerListener
 * JD-Core Version:    0.5.3
 */