package com.apperhand.common.dto.protocol;

import com.apperhand.common.dto.Command;
import java.util.List;

public class CommandsResponse extends BaseResponse
{
  private static final transient long DEFAULT_COMMANDS_INTERVAL_SECONDS = 60L;
  private static final long serialVersionUID = 3847722309306645969L;
  private List<Command> commands;
  private long commandsInterval;

  public CommandsResponse()
  {
    this(60L);
  }

  public CommandsResponse(long paramLong)
  {
    this.commandsInterval = paramLong;
  }

  public List<Command> getCommands()
  {
    return this.commands;
  }

  public long getCommandsInterval()
  {
    return this.commandsInterval;
  }

  public void setCommands(List<Command> paramList)
  {
    this.commands = paramList;
  }

  public void setCommandsInterval(long paramLong)
  {
    this.commandsInterval = paramLong;
  }

  public String toString()
  {
    return "CommandsResponse [commands=" + this.commands + ", commandsInterval=" + this.commandsInterval + "]";
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.common.dto.protocol.CommandsResponse
 * JD-Core Version:    0.5.3
 */