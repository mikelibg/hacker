package com.apperhand.common.dto.protocol;

import com.apperhand.common.dto.CommandStatus;
import java.util.List;

public class CommandStatusRequest extends BaseRequest
{
  private static final long serialVersionUID = 5346676359806508659L;
  private List<CommandStatus> statuses;

  public List<CommandStatus> getStatuses()
  {
    return this.statuses;
  }

  public void setStatuses(List<CommandStatus> paramList)
  {
    this.statuses = paramList;
  }

  public String toString()
  {
    return "CommandStatusRequest [statuses=" + this.statuses + ", toString()=" + super.toString() + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.protocol.CommandStatusRequest
 * JD-Core Version:    0.5.3
 */