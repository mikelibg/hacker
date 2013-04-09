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
    try
    {
      int i = Integer.parseInt(this.value);
      return i;
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      try
      {
        long l = Long.parseLong(this.value);
        return (int)l;
      }
      catch (NumberFormatException localNumberFormatException2)
      {
      }
    }
    return new BigInteger(this.value).intValue();
  }

  public long longValue()
  {
    try
    {
      long l = Long.parseLong(this.value);
      return l;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return new BigInteger(this.value).longValue();
  }

  public String toString()
  {
    return this.value;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.google.mygson.internal.LazilyParsedNumber
 * JD-Core Version:    0.5.3
 */