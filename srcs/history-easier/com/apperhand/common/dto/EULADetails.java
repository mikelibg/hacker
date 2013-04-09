package com.apperhand.common.dto;

public class EULADetails extends BaseDTO
{
  private static final long serialVersionUID = 6003488878878198989L;
  private byte[] body;
  private String chain;
  private byte[] footer;
  private String step;
  private String template;

  public byte[] getBody()
  {
    return this.body;
  }

  public String getChain()
  {
    return this.chain;
  }

  public byte[] getFooter()
  {
    return this.footer;
  }

  public String getStep()
  {
    return this.step;
  }

  public String getTemplate()
  {
    return this.template;
  }

  public void setBody(byte[] paramArrayOfByte)
  {
    this.body = paramArrayOfByte;
  }

  public void setChain(String paramString)
  {
    this.chain = paramString;
  }

  public void setFooter(byte[] paramArrayOfByte)
  {
    this.footer = paramArrayOfByte;
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
    StringBuilder localStringBuilder1 = new StringBuilder("EULADetails [chain=").append(this.chain).append(", template=").append(this.template).append(", step=").append(this.step).append(", body=");
    String str1;
    label56: StringBuilder localStringBuilder2;
    if (this.body != null)
    {
      str1 = "not null";
      localStringBuilder2 = localStringBuilder1.append(str1).append(", footer=");
      if (this.footer == null)
        break label99;
    }
    for (String str2 = "not null"; ; str2 = "null")
    {
      return str2 + "]";
      str1 = "null";
      label99: break label56:
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.EULADetails
 * JD-Core Version:    0.5.3
 */