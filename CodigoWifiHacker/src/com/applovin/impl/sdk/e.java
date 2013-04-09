package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAdSize;
import java.util.Collection;

class e extends O
{
  private final AppLovinAdSize b;

  public e(b paramb, AppLovinAdSize paramAppLovinAdSize)
  {
    super("UpdateAdTask", b.b(paramb));
    this.b = paramAppLovinAdSize;
  }

  public void run()
  {
    int i = 1;
    boolean bool1 = b.b(this.a, this.b);
    boolean bool2 = b.f(this.a);
    int j;
    label52: synchronized (b.d(this.a))
    {
      if (!(b.d(this.a).isEmpty()))
        j = i;
    }
    synchronized (b.a(this.a))
    {
      if (System.currentTimeMillis() > b.g(this.a))
      {
        if ((bool1) && (j != 0) && (i != 0) && (bool2) && (!(b.h(this.a))))
        {
          F localF = new F(this.b, new d(this.a, null), this.d);
          this.d.a().a(localF, N.a);
          b.a(this.a, true);
        }
        return;
        j = 0;
        break label52:
        localObject1 = finally;
        throw localObject1;
      }
      i = 0;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.e
 * JD-Core Version:    0.5.3
 */