package com.apperhand.device.android.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class f
  implements com.apperhand.device.a.a.f
{
  private Context a;

  public f(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void a()
  {
    SharedPreferences.Editor localEditor = this.a.getSharedPreferences("com.apperhand.global", 0).edit();
    localEditor.putBoolean("TERMINATE", true);
    localEditor.commit();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.device.android.a.f
 * JD-Core Version:    0.5.3
 */