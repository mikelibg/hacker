package a.b.b;

import a.a.b.h;
import a.a.b.i;
import java.util.HashMap;
import java.util.Map;

public class b
  implements a.b.a
{
  Map a = new HashMap();

  public final a.b.b a(String paramString)
  {
    monitorenter;
    Object localObject3;
    label60: i locali;
    try
    {
      Object localObject2 = (a.b.b)this.a.get(paramString);
      if (localObject2 == null)
      {
        if (!(paramString.equalsIgnoreCase("ROOT")))
          break label60;
        localObject3 = h.a();
        localObject2 = new a((i)localObject3);
        this.a.put(paramString, localObject2);
      }
      return localObject2;
      locali = h.a(paramString);
    }
    finally
    {
      monitorexit;
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.b.b.b
 * JD-Core Version:    0.5.3
 */