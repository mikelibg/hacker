package com.lookout.a.c;

import com.lookout.e.b;
import java.io.DataInputStream;
import java.io.UnsupportedEncodingException;

public final class m
{
  private short a;
  private byte b;
  private long c;
  private o d;
  private i e;

  public m(n paramn)
  {
    this.e = paramn.b();
    this.d = paramn.a();
  }

  public final void a(DataInputStream paramDataInputStream)
  {
    this.a = b.a(paramDataInputStream.readShort());
    paramDataInputStream.readByte();
    this.b = paramDataInputStream.readByte();
    this.c = b.a(paramDataInputStream.readInt());
  }

  public final String toString()
  {
    String str2;
    switch (this.b)
    {
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    default:
      str2 = "U[" + this.b + "]";
    case 0:
    case 1:
      while (true)
      {
        return str2;
        return "";
        if (this.e != null)
        {
          str2 = this.e.a(this.c);
          if (str2 != null)
            break label173;
          return "U[" + this.c + "]";
        }
      }
    case 2:
      return "U[Attribute]";
    case 3:
    case 4:
      try
      {
        String str1 = this.d.a((int)this.c);
        return str1;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        return "U[Float]";
      }
    case 5:
      return "U[Dim]";
    case 6:
      return "U[Fraction]";
    case 16:
      return Integer.toString((int)this.c);
    case 17:
      label173: return Integer.toString((int)this.c);
    case 18:
    }
    if (this.c != 0L)
      return "true";
    return "false";
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.c.m
 * JD-Core Version:    0.5.3
 */