package com.apperhand.device.a.b;

import com.apperhand.common.dto.Command;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.CommandStatus.Status;
import com.apperhand.common.dto.protocol.BaseResponse;
import com.apperhand.common.dto.protocol.CommandStatusRequest;
import com.apperhand.common.dto.protocol.HomepageRequest;
import com.apperhand.common.dto.protocol.HomepageResponse;
import com.apperhand.device.a.a.d;
import com.apperhand.device.a.d.c;
import com.apperhand.device.a.d.c.a;
import com.apperhand.device.a.d.f;
import java.util.HashMap;
import java.util.Map;

public final class e extends b
{
  private d f;

  public e(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command paramCommand)
  {
    super(paramb, parama, paramString, paramCommand.getCommand());
    this.f = parama.g();
  }

  private BaseResponse a(HomepageRequest paramHomepageRequest)
  {
    try
    {
      HomepageResponse localHomepageResponse = (HomepageResponse)this.d.b().a(paramHomepageRequest, Command.Commands.HOMEPAGE, null, HomepageResponse.class);
      return localHomepageResponse;
    }
    catch (f localf)
    {
      this.d.a().a(c.a.b, "Unable to handle Homepage command!!!!", localf);
    }
    return null;
  }

  protected final BaseResponse a()
    throws f
  {
    HomepageRequest localHomepageRequest = new HomepageRequest();
    localHomepageRequest.setApplicationDetails(this.d.j());
    return a(localHomepageRequest);
  }

  protected final Map<String, Object> a(BaseResponse paramBaseResponse)
    throws f
  {
    HomepageResponse localHomepageResponse = (HomepageResponse)paramBaseResponse;
    HashMap localHashMap = null;
    if (localHomepageResponse != null)
    {
      boolean bool = this.f.a(localHomepageResponse.getHomepage());
      localHashMap = new HashMap(1);
      localHashMap.put("output_flag", Boolean.valueOf(bool));
    }
    return localHashMap;
  }

  public final void a(Map<String, Object> paramMap)
    throws f
  {
    if (paramMap != null)
      if ((Boolean)paramMap.get("output_flag") == null);
    for (boolean bool = ((Boolean)paramMap.get("output_flag")).booleanValue(); ; bool = false)
    {
      label33: CommandStatusRequest localCommandStatusRequest = super.b();
      Command.Commands localCommands = Command.Commands.HOMEPAGE;
      CommandStatus.Status localStatus;
      if (bool)
      {
        localStatus = CommandStatus.Status.SUCCESS;
        label52: if (!(bool))
          break label94;
      }
      for (String str = "Sababa"; ; str = "Didn't attemp to change the homepage")
      {
        localCommandStatusRequest.setStatuses(a(localCommands, localStatus, str, null));
        a(localCommandStatusRequest);
        return;
        bool = false;
        break label33:
        localStatus = CommandStatus.Status.FAILURE;
        label94: break label52:
      }
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.apperhand.device.a.b.e
 * JD-Core Version:    0.5.3
 */