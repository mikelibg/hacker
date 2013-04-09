package a.a.b.b;

import java.util.Enumeration;
import java.util.Vector;

public final class a
  implements a.a.b.d.a
{
  protected Vector a;

  public final int a()
  {
    Vector localVector = this.a;
    int i = 0;
    if (localVector != null)
    {
      int j = this.a.size();
      for (int k = 0; k < j; ++k)
        ((a.a.b.a)this.a.elementAt(k)).c();
      i = j;
    }
    return i;
  }

  public final void a(a.a.b.a parama)
  {
    if (parama == null);
    do
    {
      return;
      if (this.a != null)
        continue;
      this.a = new Vector(1);
    }
    while (this.a.contains(parama));
    this.a.addElement(parama);
  }

  public final Enumeration b()
  {
    if (this.a == null)
      return null;
    return this.a.elements();
  }

  public final void c()
  {
    if (this.a == null)
      return;
    int i = this.a.size();
    for (int j = 0; j < i; ++j)
      ((a.a.b.a)this.a.elementAt(j)).b();
    this.a.removeAllElements();
    this.a = null;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.b.a
 * JD-Core Version:    0.5.3
 */