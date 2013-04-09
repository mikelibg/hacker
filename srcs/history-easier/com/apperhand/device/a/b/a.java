package com.apperhand.device.a.b;

import com.apperhand.common.dto.Activation;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.CommandStatus.Status;
import com.apperhand.common.dto.protocol.ActivationRequest;
import com.apperhand.common.dto.protocol.ActivationResponse;
import com.apperhand.common.dto.protocol.BaseResponse;
import com.apperhand.common.dto.protocol.CommandStatusRequest;
import com.apperhand.device.a.d.c;
import com.apperhand.device.a.d.c.a;
import com.apperhand.device.a.d.d;
import com.apperhand.device.a.d.f;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class a extends b
{
  private com.apperhand.device.a.a.a f;

  public a(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command.Commands paramCommands)
  {
    super(paramb, parama, paramString, paramCommands);
    this.f = parama.c();
  }

  private ActivationResponse a(ActivationRequest paramActivationRequest)
  {
    try
    {
      ActivationResponse localActivationResponse = (ActivationResponse)this.d.b().a(paramActivationRequest, Command.Commands.ACTIVATION, null, ActivationResponse.class);
      return localActivationResponse;
    }
    catch (f localf)
    {
      this.d.a().a(c.a.b, "Unable to handle Activation command!!!!", localf);
    }
    return null;
  }

  protected final BaseResponse a()
  {
    boolean bool = true;
    ActivationRequest localActivationRequest = new ActivationRequest();
    localActivationRequest.setApplicationDetails(this.d.j());
    localActivationRequest.setMissingParameters(this.d.i().b());
    if (!(Boolean.getBoolean(this.d.i().a("ACTIVATED", "false", bool))));
    while (true)
    {
      localActivationRequest.setFirstTimeActivation(bool);
      return a(localActivationRequest);
      bool = false;
    }
  }

  protected final Map<String, Object> a(BaseResponse paramBaseResponse)
    throws f
  {
    Map localMap = ((ActivationResponse)paramBaseResponse).getActivation().getParameters();
    this.d.i().a("ACTIVATED", "true");
    if ((localMap != null) && (localMap.size() > 0))
    {
      Iterator localIterator = localMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        this.d.i().a(str, (String)localMap.get(str));
      }
    }
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
    Map localMap = this.f.a();
    localCommandStatusRequest.setStatuses(a(Command.Commands.ACTIVATION, CommandStatus.Status.SUCCESS, this.d.k() + " was activated, SABABA!!!", localMap));
    return localCommandStatusRequest;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.device.a.b.a
 * JD-Core Version:    0.5.3
 */