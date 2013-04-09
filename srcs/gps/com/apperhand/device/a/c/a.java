package com.apperhand.device.a.c;

import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.protocol.BaseResponse;
import com.apperhand.device.a.d.f;
import java.util.Map;

public abstract interface a
{
  public abstract <T extends BaseResponse> T a(Object paramObject, Command.Commands paramCommands, Map<String, String> paramMap, Class<T> paramClass)
    throws f;
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.device.a.c.a
 * JD-Core Version:    0.5.3
 */