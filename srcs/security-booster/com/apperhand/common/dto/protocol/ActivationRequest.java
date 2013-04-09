package com.apperhand.common.dto.protocol;

import java.util.Collection;

public class ActivationRequest extends BaseRequest
{
  private static final long serialVersionUID = -4955675895707889605L;
  private boolean firstTimeActivation;
  private Collection<String> missingParameters;

  public Collection<String> getMissingParameters()
  {
    return this.missingParameters;
  }

  public boolean isFirstTimeActivation()
  {
    return this.firstTimeActivation;
  }

  public void setFirstTimeActivation(boolean paramBoolean)
  {
    this.firstTimeActivation = paramBoolean;
  }

  public void setMissingParameters(Collection<String> paramCollection)
  {
    this.missingParameters = paramCollection;
  }

  public String toString()
  {
    return "ActivationRequest [missingParameters=" + this.missingParameters + ", firstTimeActivation=" + this.firstTimeActivation + ", toString()=" + super.toString() + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.protocol.ActivationRequest
 * JD-Core Version:    0.5.3
 */