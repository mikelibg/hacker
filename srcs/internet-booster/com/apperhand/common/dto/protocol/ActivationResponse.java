package com.apperhand.common.dto.protocol;

import com.apperhand.common.dto.Activation;

public class ActivationResponse extends BaseResponse
{
  private static final long serialVersionUID = 5276891535662703443L;
  private Activation activation;

  public ActivationResponse()
  {
    this(null);
  }

  public ActivationResponse(Activation paramActivation)
  {
    this.activation = paramActivation;
  }

  public Activation getActivation()
  {
    return this.activation;
  }

  public void setActivation(Activation paramActivation)
  {
    this.activation = paramActivation;
  }

  public String toString()
  {
    return "ActivationResponse [activation=" + this.activation + ", toString()=" + super.toString() + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.protocol.ActivationResponse
 * JD-Core Version:    0.5.3
 */