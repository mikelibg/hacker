package com.apperhand.common.dto;

public class Homepage extends BaseDTO
{
  private static final long serialVersionUID = 7900798598608490759L;
  private String pageURL;

  public Homepage()
  {
  }

  public Homepage(String paramString)
  {
    this.pageURL = paramString;
  }

  public String getPageURL()
  {
    return this.pageURL;
  }

  public void setPageURL(String paramString)
  {
    this.pageURL = paramString;
  }

  public String toString()
  {
    return "Homepage [pageURL=" + this.pageURL + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.Homepage
 * JD-Core Version:    0.5.3
 */