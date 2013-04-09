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
  Map<String, Object> g;
  private e h;
  private com.apperhand.device.a.a.b i;

  public f(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command paramCommand)
  {
    super(paramb, parama, paramString, paramCommand.getCommand());
    this.h = parama.e();
    this.i = parama.d();
    this.g = paramCommand.getParameters();
  }

  private BaseResponse a(InfoRequest paramInfoRequest)
  {
    InfoResponse localInfoResponse;
    try
    {
      localInfoResponse = (InfoResponse)this.e.b().a(paramInfoRequest, Command.Commands.INFO, InfoResponse.class);
      return localInfoResponse;
    }
    catch (com.apperhand.device.a.d.f localf)
    {
      this.e.a().a(c.a.b, this.a, "Unable to handle Info command!!!!", localf);
      localInfoResponse = null;
    }
  }

  protected final BaseResponse a()
    throws com.apperhand.device.a.d.f
  {
    InfoRequest localInfoRequest = new InfoRequest();
    ArrayList localArrayList = new ArrayList();
    localInfoRequest.setApplicationDetails(this.e.j());
    localInfoRequest.setInformation(localArrayList);
    Iterator localIterator = this.g.keySet().iterator();
    label49: String str;
    List localList;
    do
    {
      if (!(localIterator.hasNext()))
        break label180;
      str = (String)localIterator.next();
      localList = (List)this.g.get(str);
    }
    while (localList == null);
    switch (1.a[Command.getCommandByName(str).ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    for (Object localObject = null; ; localObject = this.i.a(localList))
      while (true)
      {
        localArrayList.add(localObject);
        break label49:
        this.h.a();
        localObject = this.h.a(localList);
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

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.a.b.f
 * JD-Core Version:    0.5.3
 */