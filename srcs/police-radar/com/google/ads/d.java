package com.google.ads;

import android.os.SystemClock;
import java.util.concurrent.TimeUnit;

public class d
{
  private c a = null;
  private long b = -1L;

  public void a(c paramc, int paramInt)
  {
    this.a = paramc;
    this.b = (TimeUnit.MILLISECONDS.convert(paramInt, TimeUnit.SECONDS) + SystemClock.elapsedRealtime());
  }

  public boolean a()
  {
    return ((this.a != null) && (SystemClock.elapsedRealtime() < this.b));
  }

  public c b()
  {
    return this.a;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.google.ads.d
 * JD-Core Version:    0.5.3
 */