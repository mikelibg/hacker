package com.apperhand.device.android.a.a.a;

import android.content.Context;
import android.content.Intent;
import com.apperhand.common.dto.Homepage;
import com.apperhand.device.android.a.a.a;

public final class c extends a
{
  public final boolean a(Context paramContext, Homepage paramHomepage)
  {
    Intent localIntent1 = a(a(d));
    b(localIntent1, a(p), a(q));
    Intent localIntent2 = a(a(c));
    a(localIntent2, a(e), paramHomepage.getPageURL());
    a(paramContext, localIntent1);
    a(paramContext, localIntent2);
    return true;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.apperhand.device.android.a.a.a.c
 * JD-Core Version:    0.5.3
 */