package com.apperhand.device.a.b;

import com.apperhand.common.dto.Command;
import com.apperhand.device.a.d.c.a;

public final class h
{
  public static b a(com.apperhand.device.a.b paramb, Command paramCommand, com.apperhand.device.a.a parama)
  {
    switch (1.a[paramCommand.getCommand().ordinal()])
    {
    default:
      parama.a().a(c.a.b, String.format("Uknown command [command = %s] !!!", new Object[] { paramCommand }));
      return null;
    case 1:
      return new a(paramb, parama, paramCommand.getId(), paramCommand.getCommand());
    case 2:
      return new c(paramb, parama, paramCommand.getId(), paramCommand.getCommand());
    case 3:
      return new i(paramb, parama, paramCommand.getId(), paramCommand);
    case 4:
      return new j(paramb, parama, paramCommand.getId(), paramCommand.getCommand());
    case 5:
      return new f(paramb, parama, paramCommand.getId(), paramCommand);
    case 6:
      return new g(paramb, parama, paramCommand.getId(), paramCommand);
    case 7:
      return new e(paramb, parama, paramCommand.getId(), paramCommand);
    case 8:
    }
    return new d(paramb, parama, paramCommand.getId(), paramCommand);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.apperhand.device.a.b.h
 * JD-Core Version:    0.5.3
 */