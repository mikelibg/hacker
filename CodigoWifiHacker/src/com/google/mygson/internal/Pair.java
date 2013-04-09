package com.google.mygson.internal;

public final class Pair<FIRST, SECOND>
{
  public final FIRST first;
  public final SECOND second;

  public Pair(FIRST paramFIRST, SECOND paramSECOND)
  {
    this.first = paramFIRST;
    this.second = paramSECOND;
  }

  private static boolean equal(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2))));
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Pair;
    int i = 0;
    if (!(bool1));
    while (true)
    {
      return i;
      Pair localPair = (Pair)paramObject;
      boolean bool2 = equal(this.first, localPair.first);
      i = 0;
      if (!(bool2))
        continue;
      boolean bool3 = equal(this.second, localPair.second);
      i = 0;
      if (!(bool3))
        continue;
      i = 1;
    }
  }

  public int hashCode()
  {
    if (this.first != null);
    for (int i = this.first.hashCode(); ; i = 0)
    {
      int j = i * 17;
      Object localObject = this.second;
      int k = 0;
      if (localObject != null)
        k = this.second.hashCode();
      return (j + k * 17);
    }
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.first;
    arrayOfObject[1] = this.second;
    return String.format("{%s,%s}", arrayOfObject);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.internal.Pair
 * JD-Core Version:    0.5.3
 */