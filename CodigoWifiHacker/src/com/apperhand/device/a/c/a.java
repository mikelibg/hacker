package com.apperhand.device.a.c;

import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.protocol.BaseResponse;
import com.apperhand.device.a.d.f;

public abstract interface a
{
  public abstract <T extends BaseResponse> T a(Object paramObject, Command.Commands paramCommands, Class<T> paramClass)
    throws f;
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.a.c.a
 * JD-Core Version:    0.5.3
 */