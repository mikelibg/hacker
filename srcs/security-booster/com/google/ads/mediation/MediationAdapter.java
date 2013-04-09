package com.google.ads.mediation;

public abstract interface MediationAdapter<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS extends MediationServerParameters>
{
  public abstract void destroy();

  public abstract Class<ADDITIONAL_PARAMETERS> getAdditionalParametersType();

  public abstract Class<SERVER_PARAMETERS> getServerParametersType();
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.google.ads.mediation.MediationAdapter
 * JD-Core Version:    0.5.3
 */