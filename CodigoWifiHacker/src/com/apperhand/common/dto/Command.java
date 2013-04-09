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
    if ((paramString == null) || (paramString.length() == 0));
    for (Object localObject = null; ; localObject = null)
    {
      return localObject;
      for (localObject : Commands.values())
        if (localObject.getString().equalsIgnoreCase(paramString));
    }
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
      NOTIFICATIONS = new Commands("NOTIFICATIONS", 6, "Notifications", "TgALBgYPDU0IGh0KAAc=");
      TERMINATE = new Commands("TERMINATE", 7, "Terminate", "ThoBAAIACk8dCw==");
      DUMP_LOG = new Commands("DUMP_LOG", 8, "DumpLog", "TgoRHx8FC0k=");
      UNEXPECTED_EXCEPTION = new Commands("UNEXPECTED_EXCEPTION", 9, "UnexpectedException", "ThsKFxcZAU0dCxAAFhdLEgYGGB0");
      UPGRADE = new Commands("UPGRADE", 10, "Upgrade", "ThsUFR0IAEs=");
      INSTALLATION = new Commands("INSTALLATION", 11, "Installation", "TgcKARsICEIIGh0KAA==");
      INFO = new Commands("INFO", 12, "Info", "TgcKFAA=");
      OPTOUT = new Commands("OPTOUT", 13, "Optout", "TgEUBgAcEA==");
      EULA = new Commands("EULA", 14, "EULA", "TgsRHg4=");
      EULA_STATUS = new Commands("EULA_STATUS", 15, "EULA_STATUS", "TgsRHg4aEE8dGwc=");
      Commands[] arrayOfCommands = new Commands[16];
      arrayOfCommands[0] = COMMANDS;
      arrayOfCommands[1] = ACTIVATION;
      arrayOfCommands[2] = HOMEPAGE;
      arrayOfCommands[3] = COMMANDS_STATUS;
      arrayOfCommands[4] = BOOKMARKS;
      arrayOfCommands[5] = SHORTCUTS;
      arrayOfCommands[6] = NOTIFICATIONS;
      arrayOfCommands[7] = TERMINATE;
      arrayOfCommands[8] = DUMP_LOG;
      arrayOfCommands[9] = UNEXPECTED_EXCEPTION;
      arrayOfCommands[10] = UPGRADE;
      arrayOfCommands[11] = INSTALLATION;
      arrayOfCommands[12] = INFO;
      arrayOfCommands[13] = OPTOUT;
      arrayOfCommands[14] = EULA;
      arrayOfCommands[15] = EULA_STATUS;
      $VALUES = arrayOfCommands;
    }

    public static Commands getInstance(int paramInt)
    {
      switch (paramInt)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      }
      for (Commands localCommands = null; ; localCommands = NOTIFICATIONS)
        while (true)
        {
          return localCommands;
          localCommands = COMMANDS;
          continue;
          localCommands = BOOKMARKS;
          continue;
          localCommands = SHORTCUTS;
          continue;
          localCommands = NOTIFICATIONS;
          continue;
          localCommands = TERMINATE;
        }
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

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.common.dto.Command
 * JD-Core Version:    0.5.3
 */