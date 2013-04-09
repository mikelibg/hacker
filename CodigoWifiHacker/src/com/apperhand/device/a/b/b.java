package com.apperhand.device.a.b;

import com.apperhand.common.dto.Command;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.CommandStatus;
import com.apperhand.common.dto.CommandStatus.Status;
import com.apperhand.common.dto.protocol.BaseResponse;
import com.apperhand.common.dto.protocol.CommandStatusRequest;
import com.apperhand.common.dto.protocol.CommandStatusResponse;
import com.apperhand.device.a.d.c;
import com.apperhand.device.a.d.c.a;
import com.apperhand.device.a.d.e;
import com.apperhand.device.a.d.f;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public abstract class b
{
  protected final String a;
  protected final c b;
  protected final String c;
  protected final Command.Commands d;
  protected com.apperhand.device.a.a e;
  protected com.apperhand.device.a.b f;

  public b(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command.Commands paramCommands)
  {
	  //f es un Exception
    this.f = paramb;
    this.e = parama;
    this.a = "FRM." + super.getClass().getSimpleName();
    this.b = parama.a();
    this.c = paramString;
    this.d = paramCommands;
  }

  protected abstract BaseResponse a()
    throws f;

  protected final List<CommandStatus> a(Command.Commands paramCommands, CommandStatus.Status paramStatus, String paramString, Map<String, Object> paramMap)
  {
    CommandStatus localCommandStatus = new CommandStatus();
    ArrayList localArrayList = new ArrayList(1);
    localCommandStatus.setCommand(paramCommands);
    localCommandStatus.setId(this.c);
    localCommandStatus.setMessage(paramString);
    localCommandStatus.setStatus(paramStatus);
    localCommandStatus.setParameters(paramMap);
    localArrayList.add(localCommandStatus);
    return localArrayList;
  }

  protected abstract Map<String, Object> a(BaseResponse paramBaseResponse)
    throws f;

  protected final void a(CommandStatusRequest paramCommandStatusRequest)
    throws f
  {
    try
    {
      CommandStatusResponse localCommandStatusResponse = (CommandStatusResponse)this.e.b().a(paramCommandStatusRequest, Command.Commands.COMMANDS_STATUS, CommandStatusResponse.class);
      this.f.b(localCommandStatusResponse.getNextCommandInterval());
      this.f.b(e.a(localCommandStatusResponse));
      return;
    }
    catch (f localf)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.d.getString();
      String str = String.format("Unable to send command status for command [%s]!!!!", arrayOfObject);
      this.e.a().a(c.a.b, this.a, str, localf);
    }
  }

  public abstract void a(Map<String, Object> paramMap)
    throws f;

  protected CommandStatusRequest b()
    throws f
  {
    CommandStatusRequest localCommandStatusRequest = new CommandStatusRequest();
    localCommandStatusRequest.setApplicationDetails(this.e.j());
    return localCommandStatusRequest;
  }

  public final void c()
  {
    this.b.a(c.a.a, this.a, "Entering execute()");
    try
    {
      BaseResponse localBaseResponse = a();
      if ((localBaseResponse == null) || (!(localBaseResponse.isValidResponse())))
      {
        this.b.a(c.a.a, this.a, "Server Error in " + this.d.name());
        CommandStatusRequest localCommandStatusRequest2 = b();
        localCommandStatusRequest2.setStatuses(a(this.d, CommandStatus.Status.FAILURE, "Got server error", null));
        a(localCommandStatusRequest2);
        return;
      }
      this.f.b(e.a(localBaseResponse));
      Map localMap = a(localBaseResponse);
      if ((localMap != null) && (localMap.get("skip_status") == Boolean.TRUE))
        return;
      a(localMap);
    }
    catch (f localf1)
    {
      this.b.a(c.a.c, this.a, "Unable to send command", localf1);
      try
      {
        CommandStatusRequest localCommandStatusRequest1 = new CommandStatusRequest();
        localCommandStatusRequest1.setApplicationDetails(this.e.j());
        localCommandStatusRequest1.setStatuses(a(this.d, CommandStatus.Status.FAILURE, localf1.toString(), null));
        a(localCommandStatusRequest1);
      }
      catch (f localf2)
      {
        this.b.a(c.a.c, this.a, "Unable to send exception status command", localf2);
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.a.b.b
 * JD-Core Version:    0.5.3
 */