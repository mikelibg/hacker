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
  private e g;
  private String h = "";
  private String i = null;
  private boolean j = false;

  public i(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command paramCommand)
  {
    super(paramb, parama, paramString, paramCommand.getCommand());
    this.g = parama.e();
  }

  private BaseResponse a(ShortcutRequest paramShortcutRequest)
  {
    ShortcutResponse localShortcutResponse;
    try
    {
      localShortcutResponse = (ShortcutResponse)this.e.b().a(paramShortcutRequest, Command.Commands.SHORTCUTS, ShortcutResponse.class);
      return localShortcutResponse;
    }
    catch (f localf)
    {
      this.e.a().a(c.a.b, this.a, "Unable to handle Shortcut command!!!!", localf);
      localShortcutResponse = null;
    }
  }

  protected final BaseResponse a()
    throws f
  {
    this.g.a();
    ShortcutRequest localShortcutRequest = new ShortcutRequest();
    localShortcutRequest.setApplicationDetails(this.e.j());
    localShortcutRequest.setSupportLauncher(Boolean.valueOf(this.g.c()));
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
          break label200;
        localShortcut = (Shortcut)localIterator.next();
        switch (1.a[localShortcut.getStatus().ordinal()])
        {
        default:
          c localc = this.b;
          c.a locala = c.a.c;
          String str = this.a;
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = localShortcut.getStatus();
          arrayOfObject[1] = localShortcut.toString();
          localc.a(locala, str, String.format("Unknown action %s for shortcut %s", arrayOfObject));
        case 1:
        }
      }
      while (true)
        try
        {
          if (!(this.g.a(localShortcut)))
          {
            this.g.b(localShortcut);
            this.i = localShortcut.getName();
          }
          this.j = true;
        }
        catch (f localf)
        {
          this.h = localf.getMessage();
          this.g.b(localShortcut);
        }
    }
    label200: return null;
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
    if (!(this.j));
    List localList;
    for (int k = 1; !(this.g.c()); k = 0)
    {
      localList = a(Command.Commands.SHORTCUTS, CommandStatus.Status.SUCCESS_WITH_WARNING, "Trying to used the following : [" + this.g.b() + "]", null);
      label68: localCommandStatusRequest.setStatuses(localList);
      return localCommandStatusRequest;
    }
    StringBuilder localStringBuilder = new StringBuilder("Sababa!!!");
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.g.b();
    localStringBuilder.append(String.format(", used [%s] as launcher", arrayOfObject));
    HashMap localHashMap;
    if ((this.i != null) && (k != 0))
    {
      localHashMap = new HashMap();
      localHashMap.put("PARAMETER", String.valueOf(this.g.a(this.i, 5L)));
    }
    while (true)
    {
      Command.Commands localCommands = Command.Commands.SHORTCUTS;
      if (k != 0);
      for (CommandStatus.Status localStatus = CommandStatus.Status.SUCCESS; ; localStatus = CommandStatus.Status.FAILURE)
      {
        localList = a(localCommands, localStatus, localStringBuilder.toString(), localHashMap);
        break label68:
      }
      localHashMap = null;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.a.b.i
 * JD-Core Version:    0.5.3
 */