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
  private com.apperhand.device.a.a.a g;

  public a(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command.Commands paramCommands)
  {
    super(paramb, parama, paramString, paramCommands);
    this.g = parama.c();
  }

  private ActivationResponse a(ActivationRequest paramActivationRequest)
  {
    ActivationResponse localActivationResponse;
    try
    {
      localActivationResponse = (ActivationResponse)this.e.b().a(paramActivationRequest, Command.Commands.ACTIVATION, ActivationResponse.class);
      return localActivationResponse;
    }
    catch (f localf)
    {
      this.e.a().a(c.a.b, this.a, "Unable to handle Activation command!!!!", localf);
      localActivationResponse = null;
    }
  }

  protected final BaseResponse a()
  {
    ActivationRequest localActivationRequest = new ActivationRequest();
    localActivationRequest.setApplicationDetails(this.e.j());
    localActivationRequest.setMissingParameters(this.e.i().b());
    if (!(Boolean.getBoolean(this.e.i().a("ACTIVATED", "false"))));
    for (boolean bool = true; ; bool = false)
    {
      localActivationRequest.setFirstTimeActivation(bool);
      return a(localActivationRequest);
    }
  }

  protected final Map<String, Object> a(BaseResponse paramBaseResponse)
    throws f
  {
    Map localMap = ((ActivationResponse)paramBaseResponse).getActivation().getParameters();
    this.e.i().b("ACTIVATED", "true");
    if ((localMap != null) && (localMap.size() > 0))
    {
      Iterator localIterator = localMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        this.e.i().b(str, (String)localMap.get(str));
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
    Map localMap = this.g.a();
    localCommandStatusRequest.setStatuses(a(Command.Commands.ACTIVATION, CommandStatus.Status.SUCCESS, this.e.k() + " was activated, SABABA!!!", localMap));
    return localCommandStatusRequest;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.a.b.a
 * JD-Core Version:    0.5.3
 */