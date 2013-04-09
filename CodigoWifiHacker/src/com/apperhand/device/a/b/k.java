package com.apperhand.device.a.b;

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
  private Throwable g;

  public k(com.apperhand.device.a.b paramb, a parama, String paramString, Command.Commands paramCommands, Throwable paramThrowable)
  {
    super(paramb, parama, paramString, paramCommands);
    this.g = paramThrowable;
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
    a(b());
  }

  protected final CommandStatusRequest b()
    throws f
  {
    CommandStatusRequest localCommandStatusRequest = super.b();
    StringWriter localStringWriter = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
    this.g.printStackTrace(localPrintWriter);
    localCommandStatusRequest.setStatuses(a(Command.Commands.UNEXPECTED_EXCEPTION, CommandStatus.Status.EXCEPTION, localStringWriter.toString(), null));
    return localCommandStatusRequest;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.a.b.k
 * JD-Core Version:    0.5.3
 */