package com.apperhand.device.a.b;

import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.CommandStatus.Status;
import com.apperhand.common.dto.protocol.BaseResponse;
import com.apperhand.common.dto.protocol.CommandStatusRequest;
import com.apperhand.device.a.a;
import java.util.Map;

public final class j extends b
{
  public j(com.apperhand.device.a.b paramb, a parama, String paramString, Command.Commands paramCommands)
  {
    super(paramb, parama, paramString, paramCommands);
  }

  protected final BaseResponse a()
    throws com.apperhand.device.a.d.f
  {
    this.d.f().a();
    this.e.g();
    return new BaseResponse()
    {
      public final String toString()
      {
        return "DummyResponse";
      }
    };
  }

  protected final Map<String, Object> a(BaseResponse paramBaseResponse)
    throws com.apperhand.device.a.d.f
  {
    return null;
  }

  public final void a(Map<String, Object> paramMap)
    throws com.apperhand.device.a.d.f
  {
    a(b());
  }

  protected final CommandStatusRequest b()
    throws com.apperhand.device.a.d.f
  {
    CommandStatusRequest localCommandStatusRequest = super.b();
    localCommandStatusRequest.setStatuses(a(Command.Commands.TERMINATE, CommandStatus.Status.SUCCESS, "SABABA!!!", null));
    return localCommandStatusRequest;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.device.a.b.j
 * JD-Core Version:    0.5.3
 */