package a.a.b.b;

import java.util.Enumeration;
import java.util.NoSuchElementException;

public final class d
  implements Enumeration
{
  private static final d a = new d();

  public static d a()
  {
    return a;
  }

  public final boolean hasMoreElements()
  {
    return false;
  }

  public final Object nextElement()
  {
    throw new NoSuchElementException();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.b.d
 * JD-Core Version:    0.5.3
 */