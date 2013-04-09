package com.apperhand.common.dto.protocol;

public class CommandsRequest extends BaseRequest
{
  private static final long serialVersionUID = -4744028654419893695L;
  private long currentInterval = -1L;
  private String initiationType;
  private boolean needSpecificParameters;

  public long getCurrentInterval()
  {
    return this.currentInterval;
  }

  public String getInitiationType()
  {
    return this.initiationType;
  }

  public boolean isNeedSpecificParameters()
  {
    return this.needSpecificParameters;
  }

  public void setCurrentInterval(long paramLong)
  {
    this.currentInterval = paramLong;
  }

  public void setInitiationType(String paramString)
  {
    this.initiationType = paramString;
  }

  public void setNeedSpecificParameters(boolean paramBoolean)
  {
    this.needSpecificParameters = paramBoolean;
  }

  public String toString()
  {
    return "CommandsRequest [initiationType=" + this.initiationType + ", needSpecificParameters=" + this.needSpecificParameters + ", currentInterval=" + this.currentInterval + ", toString()=" + super.toString() + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.protocol.CommandsRequest
 * JD-Core Version:    0.5.3
 */