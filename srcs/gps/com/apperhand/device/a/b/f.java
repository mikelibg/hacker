package com.apperhand.device.a.b;

import com.apperhand.common.dto.Command;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.protocol.BaseResponse;
import com.apperhand.common.dto.protocol.InfoRequest;
import com.apperhand.common.dto.protocol.InfoResponse;
import com.apperhand.device.a.a.e;
import com.apperhand.device.a.d.c;
import com.apperhand.device.a.d.c.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class f extends b
{
  Map<String, Object> f;
  private e g;
  private com.apperhand.device.a.a.b h;

  public f(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command paramCommand)
  {
    super(paramb, parama, paramString, paramCommand.getCommand());
    this.g = parama.e();
    this.h = parama.d();
    this.f = paramCommand.getParameters();
  }

  private BaseResponse a(InfoRequest paramInfoRequest)
  {
    try
    {
      InfoResponse localInfoResponse = (InfoResponse)this.d.b().a(paramInfoRequest, Command.Commands.INFO, null, InfoResponse.class);
      return localInfoResponse;
    }
    catch (com.apperhand.device.a.d.f localf)
    {
      this.d.a().a(c.a.b, "Unable to handle Info command!!!!", localf);
    }
    return null;
  }

  protected final BaseResponse a()
    throws com.apperhand.device.a.d.f
  {
    InfoRequest localInfoRequest = new InfoRequest();
    ArrayList localArrayList = new ArrayList();
    localInfoRequest.setApplicationDetails(this.d.j());
    localInfoRequest.setInformation(localArrayList);
    Iterator localIterator = this.f.keySet().iterator();
    label49: String str;
    List localList;
    do
    {
      if (!(localIterator.hasNext()))
        break label180;
      str = (String)localIterator.next();
      localList = (List)this.f.get(str);
    }
    while (localList == null);
    switch (1.a[Command.getCommandByName(str).ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    for (Object localObject = null; ; localObject = this.h.a(localList))
      while (true)
      {
        localArrayList.add(localObject);
        break label49:
        this.g.a();
        localObject = this.g.a(localList);
      }
    label180: return ((BaseResponse)a(localInfoRequest));
  }

  protected final Map<String, Object> a(BaseResponse paramBaseResponse)
    throws com.apperhand.device.a.d.f
  {
    return null;
  }

  public final void a(Map<String, Object> paramMap)
    throws com.apperhand.device.a.d.f
  {
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.device.a.b.f
 * JD-Core Version:    0.5.3
 */