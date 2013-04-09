package com.apperhand.common.dto.protocol;

import com.apperhand.common.dto.BaseDTO;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseResponse extends BaseDTO
{
  private static final long serialVersionUID = -1535279639837531044L;
  protected String abTest;
  protected Map<String, String> parameters = new HashMap();
  protected boolean validResponse = true;

  public String getAbTest()
  {
    return this.abTest;
  }

  public Map<String, String> getParameters()
  {
    return this.parameters;
  }

  public boolean isValidResponse()
  {
    return this.validResponse;
  }

  public void setAbTest(String paramString)
  {
    this.abTest = paramString;
  }

  public void setParameters(Map<String, String> paramMap)
  {
    this.parameters = paramMap;
  }

  public void setValidResponse(boolean paramBoolean)
  {
    this.validResponse = paramBoolean;
  }

  public String toString()
  {
    return "BaseResponse [parameters=" + this.parameters + ", abTests=" + this.abTest + ", validResponse=" + this.validResponse + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.protocol.BaseResponse
 * JD-Core Version:    0.5.3
 */