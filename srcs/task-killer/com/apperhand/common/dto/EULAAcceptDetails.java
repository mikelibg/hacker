package com.apperhand.common.dto;

public class EULAAcceptDetails extends BaseDTO
{
  private static final long serialVersionUID = -7125372268648959545L;
  private boolean accepted;
  private String button;
  private String chain;
  private long counter;
  private long globalCounter;
  private String step;
  private String template;

  public String getButton()
  {
    return this.button;
  }

  public String getChain()
  {
    return this.chain;
  }

  public long getCounter()
  {
    return this.counter;
  }

  public long getGlobalCounter()
  {
    return this.globalCounter;
  }

  public String getStep()
  {
    return this.step;
  }

  public String getTemplate()
  {
    return this.template;
  }

  public boolean isAccepted()
  {
    return this.accepted;
  }

  public void setAccepted(boolean paramBoolean)
  {
    this.accepted = paramBoolean;
  }

  public void setButton(String paramString)
  {
    this.button = paramString;
  }

  public void setChain(String paramString)
  {
    this.chain = paramString;
  }

  public void setCounter(long paramLong)
  {
    this.counter = paramLong;
  }

  public void setGlobalCounter(long paramLong)
  {
    this.globalCounter = paramLong;
  }

  public void setStep(String paramString)
  {
    this.step = paramString;
  }

  public void setTemplate(String paramString)
  {
    this.template = paramString;
  }

  public String toString()
  {
    return "EULAAcceptDetails [chain=" + this.chain + ", template=" + this.template + ", accepted=" + this.accepted + ", button=" + this.button + ", counter=" + this.counter + ", globalCounter=" + this.globalCounter + ", step=" + this.step + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.EULAAcceptDetails
 * JD-Core Version:    0.5.3
 */