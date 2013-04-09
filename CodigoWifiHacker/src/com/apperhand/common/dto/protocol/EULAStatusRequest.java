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

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.common.dto.protocol.EULAStatusRequest
 * JD-Core Version:    0.5.3
 */