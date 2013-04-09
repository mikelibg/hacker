package com.apperhand.common.dto.protocol;

import com.apperhand.common.dto.ApplicationDetails;
import com.apperhand.common.dto.BaseDTO;
import java.util.HashMap;
import java.util.Map;

public abstract class BaseRequest extends BaseDTO
{
  private static final long serialVersionUID = -8678102737921448588L;
  protected String abTestId;
  protected ApplicationDetails applicationDetails;
  protected Map<String, String> parameters = new HashMap();

  public String getAbTestId()
  {
    return this.abTestId;
  }

  public ApplicationDetails getApplicationDetails()
  {
    return this.applicationDetails;
  }

  public Map<String, String> getParameters()
  {
    return this.parameters;
  }

  public void setAbTestId(String paramString)
  {
    this.abTestId = paramString;
  }

  public void setApplicationDetails(ApplicationDetails paramApplicationDetails)
  {
    this.applicationDetails = paramApplicationDetails;
  }

  public void setParameters(Map<String, String> paramMap)
  {
    this.parameters = paramMap;
  }

  public String toString()
  {
    return "BaseRequest [applicationDetails=" + this.applicationDetails + ", parameters=" + this.parameters + ", abTestId=" + this.abTestId + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.protocol.BaseRequest
 * JD-Core Version:    0.5.3
 */