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
  public static final Object f = new Object();
  private com.apperhand.device.a.a.c g;

  public d(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command paramCommand)
  {
    super(paramb, parama, paramString, paramCommand.getCommand());
    this.g = parama.h();
  }

  private BaseResponse a(EULARequest paramEULARequest)
  {
    try
    {
      EULAResponse localEULAResponse = (EULAResponse)this.d.b().a(paramEULARequest, Command.Commands.EULA, null, EULAResponse.class);
      return localEULAResponse;
    }
    catch (f localf)
    {
      this.d.a().a(c.a.b, "Unable to handle EULA command!!!!", localf);
    }
    return null;
  }

  private void a(EULADetails paramEULADetails)
  {
    if (paramEULADetails == null)
      return;
    this.g.a(paramEULADetails.getFooter(), "new_eula_footer.htm");
    this.g.a(paramEULADetails.getBody(), "new_eula_body.htm");
    this.g.a(paramEULADetails);
  }

  protected final BaseResponse a()
    throws f
  {
    EULARequest localEULARequest = new EULARequest();
    localEULARequest.setApplicationDetails(this.d.j());
    return a(localEULARequest);
  }

  protected final Map<String, Object> a(BaseResponse paramBaseResponse)
    throws f
  {
    if (paramBaseResponse == null)
    {
      this.g.a(null, null);
      HashMap localHashMap = new HashMap(1);
      localHashMap.put("skip_status", Boolean.TRUE);
      return localHashMap;
    }
    synchronized (f)
    {
      a(((EULAResponse)paramBaseResponse).getDetails());
      this.g.a("new_eula_body.htm", "new_eula_footer.htm");
    }
  }

  public final void a(Map<String, Object> paramMap)
    throws f
  {
    EULAStatusRequest localEULAStatusRequest = new EULAStatusRequest();
    localEULAStatusRequest.setApplicationDetails(this.d.j());
    localEULAStatusRequest.setDetails((EULAAcceptDetails)paramMap.get("details"));
    try
    {
      a(((EULAResponse)this.d.b().a(localEULAStatusRequest, Command.Commands.EULA_STATUS, null, EULAResponse.class)).getDetails());
      return;
    }
    catch (f localf)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.c.getString();
      String str = String.format("Unable to send command status for command [%s]!!!!", arrayOfObject);
      this.d.a().a(c.a.b, str, localf);
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.apperhand.device.a.b.d
 * JD-Core Version:    0.5.3
 */