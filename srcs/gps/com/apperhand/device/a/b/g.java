package com.apperhand.device.a.b;

import com.apperhand.common.dto.Command;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.OptOutDetails;
import com.apperhand.common.dto.protocol.BaseResponse;
import com.apperhand.common.dto.protocol.OptOutRequest;
import com.apperhand.common.dto.protocol.OptOutResponse;
import com.apperhand.device.a.d.c;
import com.apperhand.device.a.d.c.a;
import com.apperhand.device.a.d.f;
import java.util.Map;

public final class g extends b
{
  Map<String, Object> f;

  public g(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command paramCommand)
  {
    super(paramb, parama, paramString, paramCommand.getCommand());
    this.f = paramCommand.getParameters();
  }

  private BaseResponse a(OptOutRequest paramOptOutRequest)
  {
    try
    {
      OptOutResponse localOptOutResponse = (OptOutResponse)this.d.b().a(paramOptOutRequest, Command.Commands.OPTOUT, null, OptOutResponse.class);
      return localOptOutResponse;
    }
    catch (f localf)
    {
      this.d.a().a(c.a.b, "Unable to handle Optout command!!!!", localf);
    }
    return null;
  }

  protected final BaseResponse a()
    throws f
  {
    OptOutRequest localOptOutRequest = new OptOutRequest();
    localOptOutRequest.setApplicationDetails(this.d.j());
    OptOutDetails localOptOutDetails = new OptOutDetails();
    localOptOutDetails.setCommand((Command.Commands)this.f.get("command"));
    localOptOutDetails.setMessage((String)this.f.get("message"));
    localOptOutDetails.setPermanent(((Boolean)this.f.get("permanent")).booleanValue());
    localOptOutRequest.setDetails(localOptOutDetails);
    return a(localOptOutRequest);
  }

  protected final Map<String, Object> a(BaseResponse paramBaseResponse)
    throws f
  {
    return null;
  }

  public final void a(Map<String, Object> paramMap)
    throws f
  {
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.device.a.b.g
 * JD-Core Version:    0.5.3
 */