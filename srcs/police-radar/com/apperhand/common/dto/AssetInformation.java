package com.apperhand.common.dto;

import java.util.Map;

public class AssetInformation extends BaseDTO
{
  private static final long serialVersionUID = 3787775034992581869L;
  private Map<String, Object> parameters;
  private int position;
  private State state;
  private String url;

  public Map<String, Object> getParameters()
  {
    return this.parameters;
  }

  public int getPosition()
  {
    return this.position;
  }

  public State getState()
  {
    return this.state;
  }

  public String getUrl()
  {
    return this.url;
  }

  public void setParameters(Map<String, Object> paramMap)
  {
    this.parameters = paramMap;
  }

  public void setPosition(int paramInt)
  {
    this.position = paramInt;
  }

  public void setState(State paramState)
  {
    this.state = paramState;
  }

  public void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public String toString()
  {
    return "AssetInformation [url=" + this.url + ", position=" + this.position + ", state=" + this.state + ", parameters=" + this.parameters + "]";
  }

  public static enum State
  {
    static
    {
      State[] arrayOfState = new State[2];
      arrayOfState[0] = EXIST;
      arrayOfState[1] = OPTOUT;
      $VALUES = arrayOfState;
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.AssetInformation
 * JD-Core Version:    0.5.3
 */