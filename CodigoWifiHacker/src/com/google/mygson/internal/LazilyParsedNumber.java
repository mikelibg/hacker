package com.google.mygson.internal;

import java.math.BigInteger;

public final class LazilyParsedNumber extends Number
{
  private final String value;

  public LazilyParsedNumber(String paramString)
  {
    this.value = paramString;
  }

  public double doubleValue()
  {
    return Double.parseDouble(this.value);
  }

  public float floatValue()
  {
    return Float.parseFloat(this.value);
  }

  public int intValue()
  {
    int i;
    try
    {
      int j = Integer.parseInt(this.value);
      i = j;
      return i;
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      try
      {
        long l = Long.parseLong(this.value);
        i = (int)l;
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        i = new BigInteger(this.value).intValue();
      }
    }
  }

  public long longValue()
  {
    long l1;
    try
    {
      long l2 = Long.parseLong(this.value);
      l1 = l2;
      return l1;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      l1 = new BigInteger(this.value).longValue();
    }
  }

  public String toString()
  {
    return this.value;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.internal.LazilyParsedNumber
 * JD-Core Version:    0.5.3
 */