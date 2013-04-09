package com.apperhand.device.a.b;

import com.apperhand.common.dto.Command;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.EULAAcceptDetails;
import com.apperhand.common.dto.EULADetails;
import com.apperhand.common.dto.protocol.BaseResponse;
import com.apperhand.common.dto.protocol.EULARequest;
import com.apperhand.common.dto.protocol.EULAResponse;
import com.apperhand.common.dto.protocol.EULAStatusRequest;
import com.apperhand.device.a.d.c.a;
import com.apperhand.device.a.d.f;
import java.util.HashMap;
import java.util.Map;

public final class d extends b
{
  public static final Object g = new Object();
  private com.apperhand.device.a.a.c h;

  public d(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command paramCommand)
  {
    super(paramb, parama, paramString, paramCommand.getCommand());
    this.h = parama.h();
  }

  private BaseResponse a(EULARequest paramEULARequest)
  {
    EULAResponse localEULAResponse;
    try
    {
      localEULAResponse = (EULAResponse)this.e.b().a(paramEULARequest, Command.Commands.EULA, EULAResponse.class);
      return localEULAResponse;
    }
    catch (f localf)
    {
      this.e.a().a(c.a.b, this.a, "Unable to handle EULA command!!!!", localf);
      localEULAResponse = null;
    }
  }

  private void a(EULADetails paramEULADetails)
  {
    if (paramEULADetails == null);
    while (true)
    {
      return;
      this.h.a(paramEULADetails.getFooter(), "new_eula_footer.htm");
      this.h.a(paramEULADetails.getBody(), "new_eula_body.htm");
      this.h.a(paramEULADetails);
    }
  }

  protected final BaseResponse a()
    throws f
  {
    EULARequest localEULARequest = new EULARequest();
    localEULARequest.setApplicationDetails(this.e.j());
    return a(localEULARequest);
  }

  protected final Map<String, Object> a(BaseResponse paramBaseResponse)
    throws f
  {
    if (paramBaseResponse == null)
    {
      this.h.a(null, null);
      HashMap localHashMap = new HashMap(1);
      localHashMap.put("skip_status", Boolean.TRUE);
      return localHashMap;
    }
    synchronized (g)
    {
      a(((EULAResponse)paramBaseResponse).getDetails());
      this.h.a("new_eula_body.htm", "new_eula_footer.htm");
    }
  }

  public final void a(Map<String, Object> paramMap)
    throws f
  {
    EULAStatusRequest localEULAStatusRequest = new EULAStatusRequest();
    localEULAStatusRequest.setApplicationDetails(this.e.j());
    localEULAStatusRequest.setDetails((EULAAcceptDetails)paramMap.get("details"));
    try
    {
      a(((EULAResponse)this.e.b().a(localEULAStatusRequest, Command.Commands.EULA_STATUS, EULAResponse.class)).getDetails());
      return;
    }
    catch (f localf)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.d.getString();
      String str = String.format("Unable to send command status for command [%s]!!!!", arrayOfObject);
      this.e.a().a(c.a.b, this.a, str, localf);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.a.b.d
 * JD-Core Version:    0.5.3
 */