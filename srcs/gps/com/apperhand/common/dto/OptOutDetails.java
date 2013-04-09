package com.apperhand.common.dto;

public class OptOutDetails extends BaseDTO
{
  private static final long serialVersionUID = -8280867872952100639L;
  private Command.Commands command;
  private boolean isPermanent;
  private String message;

  public Command.Commands getCommand()
  {
    return this.command;
  }

  public String getMessage()
  {
    return this.message;
  }

  public boolean isPermanent()
  {
    return this.isPermanent;
  }

  public void setCommand(Command.Commands paramCommands)
  {
    this.command = paramCommands;
  }

  public void setMessage(String paramString)
  {
    this.message = paramString;
  }

  public void setPermanent(boolean paramBoolean)
  {
    this.isPermanent = paramBoolean;
  }

  public String toString()
  {
    return "OptOutDetails [command=" + this.command + ", message=" + this.message + ", isPermanent=" + this.isPermanent + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.OptOutDetails
 * JD-Core Version:    0.5.3
 */