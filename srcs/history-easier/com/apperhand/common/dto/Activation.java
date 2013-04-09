package com.apperhand.common.dto;

import java.util.Map;

public class Activation extends BaseDTO
{
  private static final long serialVersionUID = 3085832803649412152L;
  private String eula;
  private Map<String, String> parameters;

  public Activation()
  {
    this(null, null);
  }

  public Activation(String paramString, Map<String, String> paramMap)
  {
    this.eula = paramString;
    this.parameters = paramMap;
  }

  public String getEula()
  {
    return this.eula;
  }

  public Map<String, String> getParameters()
  {
    return this.parameters;
  }

  public void setEula(String paramString)
  {
    this.eula = paramString;
  }

  public void setParameters(Map<String, String> paramMap)
  {
    this.parameters = paramMap;
  }

  public String toString()
  {
    return "Activation [eula=" + this.eula + ", parameters=" + this.parameters + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.Activation
 * JD-Core Version:    0.5.3
 */