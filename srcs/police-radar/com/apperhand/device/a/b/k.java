package com.apperhand.device.a.b;

import com.apperhand.common.dto.Command;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.CommandStatus.Status;
import com.apperhand.common.dto.protocol.BaseResponse;
import com.apperhand.common.dto.protocol.CommandStatusRequest;
import com.apperhand.device.a.a;
import com.apperhand.device.a.d.f;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Map;

public final class k extends b
{
  private Throwable f;

  public k(com.apperhand.device.a.b paramb, a parama, String paramString, Command.Commands paramCommands, Throwable paramThrowable)
  {
    super(paramb, parama, paramString, paramCommands);
    this.f = paramThrowable;
  }

  protected final BaseResponse a()
    throws f
  {
    return null;
  }

  protected final Map<String, Object> a(BaseResponse paramBaseResponse)
    throws f
  {
    return null;
  }

  public final void a(Map<String, Object> paramMap)
    throws f
  {
    if (paramMap != null);
    for (Command localCommand = (Command)paramMap.get("exception_command"); ; localCommand = null)
    {
      CommandStatusRequest localCommandStatusRequest = super.b();
      StringWriter localStringWriter = new StringWriter();
      PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
      this.f.printStackTrace(localPrintWriter);
      localCommandStatusRequest.setStatuses(a(Command.Commands.UNEXPECTED_EXCEPTION, CommandStatus.Status.EXCEPTION, "Command = [" + localCommand + "]" + this.f.getMessage() + "#NL#" + localStringWriter.toString(), null));
      a(localCommandStatusRequest);
      return;
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.apperhand.device.a.b.k
 * JD-Core Version:    0.5.3
 */