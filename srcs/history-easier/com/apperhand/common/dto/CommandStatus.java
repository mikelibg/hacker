package com.apperhand.common.dto;

public class CommandStatus extends Command
{
  private static final long serialVersionUID = 4005495549492869561L;
  private String message;
  private Status status;

  public String getMessage()
  {
    return this.message;
  }

  public Status getStatus()
  {
    return this.status;
  }

  public void setMessage(String paramString)
  {
    this.message = paramString;
  }

  public void setStatus(Status paramStatus)
  {
    this.status = paramStatus;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("CommandStatus [status=").append(this.status).append(", message=");
    if (this.message != null)
      if (this.message.length() <= 200);
    for (String str = this.message.substring(0, 200); ; str = "null")
      while (true)
      {
        return str + ", command=" + super.toString() + "]";
        str = this.message;
      }
  }

  public static enum Status
  {
    static
    {
      FAILURE = new Status("FAILURE", 1);
      EXCEPTION = new Status("EXCEPTION", 2);
      SUCCESS_WITH_WARNING = new Status("SUCCESS_WITH_WARNING", 3);
      WAITING_FOR_LOG_DUMP = new Status("WAITING_FOR_LOG_DUMP", 4);
      LOG_DUMP = new Status("LOG_DUMP", 5);
      OPT_OUT = new Status("OPT_OUT", 6);
      Status[] arrayOfStatus = new Status[7];
      arrayOfStatus[0] = SUCCESS;
      arrayOfStatus[1] = FAILURE;
      arrayOfStatus[2] = EXCEPTION;
      arrayOfStatus[3] = SUCCESS_WITH_WARNING;
      arrayOfStatus[4] = WAITING_FOR_LOG_DUMP;
      arrayOfStatus[5] = LOG_DUMP;
      arrayOfStatus[6] = OPT_OUT;
      $VALUES = arrayOfStatus;
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.CommandStatus
 * JD-Core Version:    0.5.3
 */