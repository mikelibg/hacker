package com.apperhand.common.dto.protocol;

import com.apperhand.common.dto.CommandInformation;
import java.util.List;

public class InfoRequest extends BaseRequest
{
  private static final long serialVersionUID = -8248106002559235972L;
  List<CommandInformation> information;

  public List<CommandInformation> getInformation()
  {
    return this.information;
  }

  public void setInformation(List<CommandInformation> paramList)
  {
    this.information = paramList;
  }

  public String toString()
  {
    return "InfoRequest [information=" + this.information + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.protocol.InfoRequest
 * JD-Core Version:    0.5.3
 */