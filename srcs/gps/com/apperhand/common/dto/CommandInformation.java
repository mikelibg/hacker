package com.apperhand.common.dto;

import java.util.List;

public class CommandInformation extends BaseDTO
{
  private static final long serialVersionUID = -7074177583024278553L;
  private List<AssetInformation> assets;
  private Command.Commands command;
  private String message;
  private boolean valid;

  public CommandInformation()
  {
  }

  public CommandInformation(Command.Commands paramCommands)
  {
    this.command = paramCommands;
  }

  public List<AssetInformation> getAssets()
  {
    return this.assets;
  }

  public Command.Commands getCommand()
  {
    return this.command;
  }

  public String getMessage()
  {
    return this.message;
  }

  public boolean isValid()
  {
    return this.valid;
  }

  public void setAssets(List<AssetInformation> paramList)
  {
    this.assets = paramList;
  }

  public void setCommand(Command.Commands paramCommands)
  {
    this.command = paramCommands;
  }

  public void setMessage(String paramString)
  {
    this.message = paramString;
  }

  public void setValid(boolean paramBoolean)
  {
    this.valid = paramBoolean;
  }

  public String toString()
  {
    return "CommandInformation [command=" + this.command + ", valid=" + this.valid + ", message=" + this.message + ", assets=" + this.assets + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.CommandInformation
 * JD-Core Version:    0.5.3
 */