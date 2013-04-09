package a.a.b;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

final class n
  implements Enumeration
{
  private Enumeration a;

  public n(Hashtable paramHashtable)
  {
    Enumeration localEnumeration = paramHashtable.keys();
    Vector localVector = new Vector(paramHashtable.size());
    for (int i = 0; localEnumeration.hasMoreElements(); ++i)
    {
      String str = (String)localEnumeration.nextElement();
      for (int j = 0; (j < i) && (str.compareTo((String)localVector.get(j)) > 0); ++j);
      localVector.add(j, str);
    }
    this.a = localVector.elements();
  }

  public final boolean hasMoreElements()
  {
    return this.a.hasMoreElements();
  }

  public final Object nextElement()
  {
    return this.a.nextElement();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.n
 * JD-Core Version:    0.5.3
 */