package com.lookout.c;

import a.b.b;
import a.b.c;
import java.util.HashSet;
import java.util.Iterator;

public class a extends HashSet
{
  private static final b a = c.a(a.class);

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[ ");
    Iterator localIterator = iterator();
    while (localIterator.hasNext())
    {
      localStringBuilder.append(localIterator.next().toString());
      if (!(localIterator.hasNext()))
        continue;
      localStringBuilder.append(", ");
    }
    localStringBuilder.append(" ]");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.c.a
 * JD-Core Version:    0.5.3
 */