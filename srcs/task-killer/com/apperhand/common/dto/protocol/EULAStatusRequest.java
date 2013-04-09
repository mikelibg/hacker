package com.apperhand.common.dto.protocol;

import com.apperhand.common.dto.EULAAcceptDetails;

public class EULAStatusRequest extends BaseRequest
{
  private static final long serialVersionUID = -2317367096091465630L;
  private EULAAcceptDetails details;

  public EULAAcceptDetails getDetails()
  {
    return this.details;
  }

  public void setDetails(EULAAcceptDetails paramEULAAcceptDetails)
  {
    this.details = paramEULAAcceptDetails;
  }

  public String toString()
  {
    return "EULAStatusRequest [details=" + this.details + ", toString()=" + super.toString() + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.protocol.EULAStatusRequest
 * JD-Core Version:    0.5.3
 */