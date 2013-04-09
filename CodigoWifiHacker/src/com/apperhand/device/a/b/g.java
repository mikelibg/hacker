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
  Map<String, Object> g;

  public g(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command paramCommand)
  {
    super(paramb, parama, paramString, paramCommand.getCommand());
    this.g = paramCommand.getParameters();
  }

  private BaseResponse a(OptOutRequest paramOptOutRequest)
  {
    OptOutResponse localOptOutResponse;
    try
    {
      localOptOutResponse = (OptOutResponse)this.e.b().a(paramOptOutRequest, Command.Commands.OPTOUT, OptOutResponse.class);
      return localOptOutResponse;
    }
    catch (f localf)
    {
      this.e.a().a(c.a.b, this.a, "Unable to handle Optout command!!!!", localf);
      localOptOutResponse = null;
    }
  }

  protected final BaseResponse a()
    throws f
  {
    OptOutRequest localOptOutRequest = new OptOutRequest();
    localOptOutRequest.setApplicationDetails(this.e.j());
    OptOutDetails localOptOutDetails = new OptOutDetails();
    localOptOutDetails.setCommand((Command.Commands)this.g.get("command"));
    localOptOutDetails.setMessage((String)this.g.get("message"));
    localOptOutDetails.setPermanent(((Boolean)this.g.get("permanent")).booleanValue());
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

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.a.b.g
 * JD-Core Version:    0.5.3
 */