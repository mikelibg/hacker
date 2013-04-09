package com.apperhand.device.a.b;

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
  protected final c a;
  protected final String b;
  protected final Command.Commands c;
  protected com.apperhand.device.a.a d;
  protected com.apperhand.device.a.b e;

  public b(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command.Commands paramCommands)
  {
    this.e = paramb;
    this.d = parama;
    this.a = parama.a();
    this.b = paramString;
    this.c = paramCommands;
  }

  protected abstract BaseResponse a()
    throws f;

  protected final List<CommandStatus> a(Command.Commands paramCommands, CommandStatus.Status paramStatus, String paramString, Map<String, Object> paramMap)
  {
    CommandStatus localCommandStatus = new CommandStatus();
    ArrayList localArrayList = new ArrayList(1);
    localCommandStatus.setCommand(paramCommands);
    localCommandStatus.setId(this.b);
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
      CommandStatusResponse localCommandStatusResponse = (CommandStatusResponse)this.d.b().a(paramCommandStatusRequest, Command.Commands.COMMANDS_STATUS, null, CommandStatusResponse.class);
      this.e.c(localCommandStatusResponse.getNextCommandInterval());
      this.e.b(e.a(localCommandStatusResponse));
      return;
    }
    catch (f localf)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.c.getString();
      String str = String.format("Unable to send command status for command [%s]!!!!", arrayOfObject);
      this.d.a().a(c.a.b, str, localf);
    }
  }

  public abstract void a(Map<String, Object> paramMap)
    throws f;

  protected CommandStatusRequest b()
    throws f
  {
    CommandStatusRequest localCommandStatusRequest = new CommandStatusRequest();
    localCommandStatusRequest.setApplicationDetails(this.d.j());
    return localCommandStatusRequest;
  }

  public final void c()
  {
    this.a.a(c.a.b, "Entering execute()");
    try
    {
      BaseResponse localBaseResponse = a();
      if ((localBaseResponse == null) || (!(localBaseResponse.isValidResponse())))
      {
        this.a.a(c.a.a, "Server Error in " + this.c.name());
        CommandStatusRequest localCommandStatusRequest2 = b();
        localCommandStatusRequest2.setStatuses(a(this.c, CommandStatus.Status.FAILURE, "Got server error", null));
        a(localCommandStatusRequest2);
        return;
      }
      this.e.b(e.a(localBaseResponse));
      Map localMap = a(localBaseResponse);
      if ((localMap != null) && (localMap.get("skip_status") == Boolean.TRUE))
        return;
      a(localMap);
      return;
    }
    catch (f localf1)
    {
      this.a.a(c.a.c, "Unable to send command", localf1);
      try
      {
        CommandStatusRequest localCommandStatusRequest1 = new CommandStatusRequest();
        localCommandStatusRequest1.setApplicationDetails(this.d.j());
        localCommandStatusRequest1.setStatuses(a(this.c, CommandStatus.Status.FAILURE, localf1.toString(), null));
        a(localCommandStatusRequest1);
        return;
      }
      catch (f localf2)
      {
        this.a.a(c.a.c, "Unable to send exception status command", localf2);
      }
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.device.a.b.b
 * JD-Core Version:    0.5.3
 */