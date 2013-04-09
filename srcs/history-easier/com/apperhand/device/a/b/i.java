package com.apperhand.device.a.b;

import com.apperhand.common.dto.Command;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.CommandStatus.Status;
import com.apperhand.common.dto.Shortcut;
import com.apperhand.common.dto.protocol.BaseResponse;
import com.apperhand.common.dto.protocol.CommandStatusRequest;
import com.apperhand.common.dto.protocol.ShortcutRequest;
import com.apperhand.common.dto.protocol.ShortcutResponse;
import com.apperhand.device.a.a.e;
import com.apperhand.device.a.d.c;
import com.apperhand.device.a.d.c.a;
import com.apperhand.device.a.d.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class i extends b
{
  private e f;
  private String g = "";
  private String h = null;
  private boolean i = false;

  public i(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command paramCommand)
  {
    super(paramb, parama, paramString, paramCommand.getCommand());
    this.f = parama.e();
  }

  private BaseResponse a(ShortcutRequest paramShortcutRequest)
  {
    try
    {
      ShortcutResponse localShortcutResponse = (ShortcutResponse)this.d.b().a(paramShortcutRequest, Command.Commands.SHORTCUTS, null, ShortcutResponse.class);
      return localShortcutResponse;
    }
    catch (f localf)
    {
      this.d.a().a(c.a.b, "Unable to handle Shortcut command!!!!", localf);
    }
    return null;
  }

  protected final BaseResponse a()
    throws f
  {
    this.f.a();
    ShortcutRequest localShortcutRequest = new ShortcutRequest();
    localShortcutRequest.setApplicationDetails(this.d.j());
    localShortcutRequest.setSupportLauncher(Boolean.valueOf(this.f.c()));
    return a(localShortcutRequest);
  }

  protected final Map<String, Object> a(BaseResponse paramBaseResponse)
    throws f
  {
    List localList = ((ShortcutResponse)paramBaseResponse).getShortcutList();
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      Shortcut localShortcut;
      while (true)
      {
        if (!(localIterator.hasNext()))
          break label192;
        localShortcut = (Shortcut)localIterator.next();
        switch (1.a[localShortcut.getStatus().ordinal()])
        {
        default:
          c localc = this.a;
          c.a locala = c.a.c;
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = localShortcut.getStatus();
          arrayOfObject[1] = localShortcut.toString();
          localc.a(locala, String.format("Unknown action %s for shortcut %s", arrayOfObject));
        case 1:
        }
      }
      while (true)
        try
        {
          if (!(this.f.a(localShortcut)))
          {
            this.f.b(localShortcut);
            this.h = localShortcut.getName();
          }
          this.i = true;
        }
        catch (f localf)
        {
          this.g = localf.getMessage();
          this.f.b(localShortcut);
        }
    }
    label192: return null;
  }

  public final void a(Map<String, Object> paramMap)
    throws f
  {
    a(b());
  }

  protected final CommandStatusRequest b()
    throws f
  {
    CommandStatusRequest localCommandStatusRequest = super.b();
    if (!(this.i));
    List localList;
    for (int j = 1; !(this.f.c()); j = 0)
    {
      localList = a(Command.Commands.SHORTCUTS, CommandStatus.Status.SUCCESS_WITH_WARNING, "Trying to used the following : [" + this.f.b() + "]", null);
      label68: localCommandStatusRequest.setStatuses(localList);
      return localCommandStatusRequest;
    }
    StringBuilder localStringBuilder = new StringBuilder("Sababa!!!");
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.f.b();
    localStringBuilder.append(String.format(", used [%s] as launcher", arrayOfObject));
    HashMap localHashMap;
    if ((this.h != null) && (j != 0))
    {
      localHashMap = new HashMap();
      localHashMap.put("PARAMETER", String.valueOf(this.f.a(this.h, 5L)));
    }
    while (true)
    {
      Command.Commands localCommands = Command.Commands.SHORTCUTS;
      if (j != 0);
      for (CommandStatus.Status localStatus = CommandStatus.Status.SUCCESS; ; localStatus = CommandStatus.Status.FAILURE)
      {
        localList = a(localCommands, localStatus, localStringBuilder.toString(), localHashMap);
        break label68:
      }
      localHashMap = null;
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.device.a.b.i
 * JD-Core Version:    0.5.3
 */