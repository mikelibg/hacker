package a.b.a;

import a.b.a;
import java.util.ArrayList;
import java.util.List;

public final class e
  implements a
{
  final List a = new ArrayList();

  public final a.b.b a(String paramString)
  {
    synchronized (this.a)
    {
      this.a.add(paramString);
      return b.a;
    }
  }

  public final List a()
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (this.a)
    {
      localArrayList.addAll(this.a);
      return localArrayList;
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.b.a.e
 * JD-Core Version:    0.5.3
 */