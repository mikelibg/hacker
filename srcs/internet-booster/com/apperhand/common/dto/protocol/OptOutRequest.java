package com.apperhand.common.dto.protocol;

import com.apperhand.common.dto.OptOutDetails;

public class OptOutRequest extends BaseRequest
{
  private static final long serialVersionUID = -2767172802760161992L;
  private OptOutDetails details;

  public OptOutDetails getDetails()
  {
    return this.details;
  }

  public void setDetails(OptOutDetails paramOptOutDetails)
  {
    this.details = paramOptOutDetails;
  }

  public String toString()
  {
    return "OptOutRequest [details=" + this.details + ", toString()=" + super.toString() + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.protocol.OptOutRequest
 * JD-Core Version:    0.5.3
 */