package com.apperhand.device.android.c;

import android.util.Log;
import com.apperhand.device.a.d.c.a;

public enum c
  implements com.apperhand.device.a.d.c
{
  static
  {
    c[] arrayOfc = new c[1];
    arrayOfc[0] = a;
    b = arrayOfc;
  }

  public final void a(c.a parama, String paramString)
  {
    a(parama, paramString, null);
  }

  public final void a(c.a parama, String paramString, Throwable paramThrowable)
  {
    switch (1.a[parama.ordinal()])
    {
    default:
      return;
    case 1:
      Log.d("apperhand", paramString, paramThrowable);
      return;
    case 2:
      Log.e("apperhand", paramString, paramThrowable);
      return;
    case 3:
    }
    Log.i("apperhand", paramString, paramThrowable);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.device.android.c.c
 * JD-Core Version:    0.5.3
 */