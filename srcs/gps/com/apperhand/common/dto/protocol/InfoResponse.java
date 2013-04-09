package com.apperhand.common.dto.protocol;

public class InfoResponse extends BaseResponse
{
  private static final long serialVersionUID = -6549210717995475041L;
  private long nextCommandInterval = -1L;

  public InfoResponse()
  {
  }

  public InfoResponse(long paramLong)
  {
    this.nextCommandInterval = paramLong;
  }

  public long getNextCommandInterval()
  {
    return this.nextCommandInterval;
  }

  public void setNextCommandInterval(long paramLong)
  {
    this.nextCommandInterval = paramLong;
  }

  public String toString()
  {
    return "InfoResponse [nextCommandInterval=" + this.nextCommandInterval + ", toString()=" + super.toString() + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.protocol.InfoResponse
 * JD-Core Version:    0.5.3
 */