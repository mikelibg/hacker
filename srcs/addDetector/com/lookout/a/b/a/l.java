package com.lookout.a.b.a;

public enum l
{
  static
  {
    l[] arrayOfl = new l[11];
    arrayOfl[0] = a;
    arrayOfl[1] = b;
    arrayOfl[2] = c;
    arrayOfl[3] = d;
    arrayOfl[4] = e;
    arrayOfl[5] = f;
    arrayOfl[6] = g;
    arrayOfl[7] = h;
    arrayOfl[8] = i;
    arrayOfl[9] = j;
    arrayOfl[10] = k;
    l = arrayOfl;
  }

  public static l a(char paramChar)
  {
    if (paramChar == '[')
      return b;
    if (paramChar == 'L')
      return c;
    if (paramChar == 'V')
      return a;
    if (paramChar == 'Z')
      return d;
    if (paramChar == 'B')
      return e;
    if (paramChar == 'C')
      return f;
    if (paramChar == 'S')
      return g;
    if (paramChar == 'I')
      return h;
    if (paramChar == 'J')
      return i;
    if (paramChar == 'F')
      return j;
    if (paramChar == 'D')
      return k;
    throw new IllegalArgumentException("Invalid type code " + paramChar);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.b.a.l
 * JD-Core Version:    0.5.3
 */