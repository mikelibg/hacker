package com.lookout.a.b.a;

import a.a.a.b.a.a;
import a.b.c;

public class m
{
  private static final a.b.b a = c.a(m.class);
  private l b;
  private Object c;

  public m(String paramString)
  {
    this.b = l.a(paramString.charAt(0));
    if (this.b == l.c)
      this.c = paramString.substring(1, -1 + paramString.length());
    do
      return;
    while (this.b != l.b);
    this.c = new m(paramString.substring(1));
  }

  public final String a()
  {
    switch (n.a[this.b.ordinal()])
    {
    default:
      throw new IllegalStateException("Invalid type " + this.b);
    case 1:
      return "V";
    case 2:
      return "[" + this.c.toString();
    case 3:
      return "L" + this.c + ";";
    case 4:
      return "Z";
    case 5:
      return "B";
    case 6:
      return "C";
    case 7:
      return "C";
    case 8:
      return "I";
    case 9:
      return "J";
    case 10:
      return "F";
    case 11:
    }
    return "D";
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this)
      return true;
    if (paramObject instanceof m)
    {
      m localm = (m)paramObject;
      return new a().a(this.b, localm.b).a(this.c, localm.c).a();
    }
    return false;
  }

  public int hashCode()
  {
    a.a.a.b.a.b localb = new a.a.a.b.a.b(47, 103);
    localb.a(this.b).a(this.c);
    return localb.a();
  }

  public String toString()
  {
    return a();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.b.a.m
 * JD-Core Version:    0.5.3
 */