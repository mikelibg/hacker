package com.apperhand.common.dto.protocol;

import com.apperhand.common.dto.EULADetails;

public class EULAResponse extends BaseResponse
{
  private static final long serialVersionUID = 4691412857273337470L;
  private EULADetails details;

  public EULADetails getDetails()
  {
    return this.details;
  }

  public void setDetails(EULADetails paramEULADetails)
  {
    this.details = paramEULADetails;
  }

  public String toString()
  {
    return "EULAResponse [details=" + this.details + "]";
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.common.dto.protocol.EULAResponse
 * JD-Core Version:    0.5.3
 */