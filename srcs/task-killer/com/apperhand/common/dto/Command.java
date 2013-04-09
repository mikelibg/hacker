package com.apperhand.common.dto;

import java.util.Map;
import java.util.UUID;

public class Command extends BaseDTO
{
  private static final long serialVersionUID = 4898626949566617224L;
  private Commands command;
  private String id;
  private Map<String, Object> parameters;

  public Command()
  {
    this(null);
  }

  public Command(Commands paramCommands)
  {
    this(paramCommands, UUID.randomUUID().toString(), null);
  }

  public Command(Commands paramCommands, String paramString)
  {
    this(paramCommands, paramString, null);
  }

  public Command(Commands paramCommands, String paramString, Map<String, Object> paramMap)
  {
    this.command = paramCommands;
    this.id = paramString;
    this.parameters = paramMap;
  }

  public Command(Command paramCommand)
  {
    this(paramCommand.command, paramCommand.id, paramCommand.parameters);
  }

  public static Commands getCommandByName(String paramString)
  {
    Object localObject;
    if ((paramString == null) || (paramString.length() == 0))
    {
      localObject = null;
      return localObject;
    }
    for (localObject : Commands.values())
      if (localObject.getString().equalsIgnoreCase(paramString));
    return null;
  }

  public Commands getCommand()
  {
    return this.command;
  }

  public String getId()
  {
    return this.id;
  }

  public Map<String, Object> getParameters()
  {
    return this.parameters;
  }

  public void setCommand(Commands paramCommands)
  {
    this.command = paramCommands;
  }

  public void setId(String paramString)
  {
    this.id = paramString;
  }

  public void setParameters(Map<String, Object> paramMap)
  {
    this.parameters = paramMap;
  }

  public String toString()
  {
    return "Command [command=" + this.command + ", id=" + this.id + ", parameters=" + this.parameters + "]";
  }

  public static enum Commands
  {
    private String internalUri;
    private String string;
    private String uri = null;

    static
    {
      ACTIVATION = new Commands("ACTIVATION", 1, "Activation", "Tg8HBgYfBVoM");
      HOMEPAGE = new Commands("HOMEPAGE", 2, "Homepage", "TgYLHwoZBUkM");
      COMMANDS_STATUS = new Commands("COMMANDS_STATUS", 3, "CommandsStatus", "Tg0LHwIICkoaGhURGwc=");
      BOOKMARKS = new Commands("BOOKMARKS", 4, "Bookmarks", "TgwLHQQEBVwCHQ==");
      SHORTCUTS = new Commands("SHORTCUTS", 5, "Shortcuts", "Th0MHR0dB1sdHQ==");
      TERMINATE = new Commands("TERMINATE", 6, "Terminate", "ThoBAAIACk8dCw==");
      DUMP_LOG = new Commands("DUMP_LOG", 7, "DumpLog", "TgoRHx8FC0k=");
      UNEXPECTED_EXCEPTION = new Commands("UNEXPECTED_EXCEPTION", 8, "UnexpectedException", "ThsKFxcZAU0dCxAAFhdLEgYGGB0");
      UPGRADE = new Commands("UPGRADE", 9, "Upgrade", "ThsUFR0IAEs=");
      INSTALLATION = new Commands("INSTALLATION", 10, "Installation", "TgcKARsICEIIGh0KAA==");
      INFO = new Commands("INFO", 11, "Info", "TgcKFAA=");
      OPTOUT = new Commands("OPTOUT", 12, "Optout", "TgEUBgAcEA==");
      EULA = new Commands("EULA", 13, "EULA", "TgsRHg4=");
      EULA_STATUS = new Commands("EULA_STATUS", 14, "EULA_STATUS", "TgsRHg4aEE8dGwc=");
      Commands[] arrayOfCommands = new Commands[15];
      arrayOfCommands[0] = COMMANDS;
      arrayOfCommands[1] = ACTIVATION;
      arrayOfCommands[2] = HOMEPAGE;
      arrayOfCommands[3] = COMMANDS_STATUS;
      arrayOfCommands[4] = BOOKMARKS;
      arrayOfCommands[5] = SHORTCUTS;
      arrayOfCommands[6] = TERMINATE;
      arrayOfCommands[7] = DUMP_LOG;
      arrayOfCommands[8] = UNEXPECTED_EXCEPTION;
      arrayOfCommands[9] = UPGRADE;
      arrayOfCommands[10] = INSTALLATION;
      arrayOfCommands[11] = INFO;
      arrayOfCommands[12] = OPTOUT;
      arrayOfCommands[13] = EULA;
      arrayOfCommands[14] = EULA_STATUS;
      $VALUES = arrayOfCommands;
    }

    public final String getInternalUri()
    {
      return this.internalUri;
    }

    public final String getString()
    {
      return this.string;
    }

    public final String getUri()
    {
      return this.uri;
    }

    public final void setUri(String paramString)
    {
      this.uri = paramString;
    }
  }

  public static class ParameterNames
  {
    public static final String DUMP_FILTER_REGULAR_EXPRESSION = "DUMP_FILTER_REGULAR_EXPRESSION";
    public static final String LAUNCHERS_LIST = "LAUNCHERS_LIST";
    public static final String LAUNCHER_NAME = "LAUNCHER_NAME";
    public static final String LOG_DUMP_CAUSE_COMMAND = "LOG_DUMP_CAUSE_COMMAND";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.Command
 * JD-Core Version:    0.5.3
 */