package com.apperhand.common.dto.protocol;

public class CommandStatusResponse extends BaseResponse
{
  private static final long serialVersionUID = 1904444010626981649L;
  private long nextCommandInterval = -1L;

  public CommandStatusResponse()
  {
  }

  public CommandStatusResponse(long paramLong)
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
    return "CommandStatusResponse [nextCommandInterval=" + this.nextCommandInterval + ", toString()=" + super.toString() + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.protocol.CommandStatusResponse
 * JD-Core Version:    0.5.3
 */