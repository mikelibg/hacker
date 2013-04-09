package com.google.mygson;

import com.google.mygson.internal..Gson.Preconditions;
import com.google.mygson.internal.LazilyParsedNumber;
import java.math.BigDecimal;
import java.math.BigInteger;

public final class JsonPrimitive extends JsonElement
{
  private static final Class<?>[] PRIMITIVE_TYPES;
  private Object value;

  static
  {
    Class[] arrayOfClass = new Class[16];
    arrayOfClass[0] = Integer.TYPE;
    arrayOfClass[1] = Long.TYPE;
    arrayOfClass[2] = Short.TYPE;
    arrayOfClass[3] = Float.TYPE;
    arrayOfClass[4] = Double.TYPE;
    arrayOfClass[5] = Byte.TYPE;
    arrayOfClass[6] = Boolean.TYPE;
    arrayOfClass[7] = Character.TYPE;
    arrayOfClass[8] = Integer.class;
    arrayOfClass[9] = Long.class;
    arrayOfClass[10] = Short.class;
    arrayOfClass[11] = Float.class;
    arrayOfClass[12] = Double.class;
    arrayOfClass[13] = Byte.class;
    arrayOfClass[14] = Boolean.class;
    arrayOfClass[15] = Character.class;
    PRIMITIVE_TYPES = arrayOfClass;
  }

  public JsonPrimitive(Boolean paramBoolean)
  {
    setValue(paramBoolean);
  }

  public JsonPrimitive(Character paramCharacter)
  {
    setValue(paramCharacter);
  }

  public JsonPrimitive(Number paramNumber)
  {
    setValue(paramNumber);
  }

  JsonPrimitive(Object paramObject)
  {
    setValue(paramObject);
  }

  public JsonPrimitive(String paramString)
  {
    setValue(paramString);
  }

  private static boolean isIntegral(JsonPrimitive paramJsonPrimitive)
  {
    boolean bool1 = paramJsonPrimitive.value instanceof Number;
    int i = 0;
    if (bool1)
    {
      Number localNumber = (Number)paramJsonPrimitive.value;
      if ((!(localNumber instanceof BigInteger)) && (!(localNumber instanceof Long)) && (!(localNumber instanceof Integer)) && (!(localNumber instanceof Short)))
      {
        boolean bool2 = localNumber instanceof Byte;
        i = 0;
        if (!(bool2))
          break label65;
      }
      i = 1;
    }
    label65: return i;
  }

  private static boolean isPrimitiveOrString(Object paramObject)
  {
    int i = 1;
    if (paramObject instanceof String);
    while (true)
    {
      return i;
      Class localClass = paramObject.getClass();
      Class[] arrayOfClass = PRIMITIVE_TYPES;
      int j = arrayOfClass.length;
      for (int k = 0; k < j; ++k)
        if (arrayOfClass[k].isAssignableFrom(localClass));
      i = 0;
    }
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = true;
    if (this == paramObject);
    while (true)
    {
      return bool1;
      if ((paramObject == null) || (super.getClass() != paramObject.getClass()))
        bool1 = false;
      JsonPrimitive localJsonPrimitive = (JsonPrimitive)paramObject;
      if (this.value == null)
      {
        if (localJsonPrimitive.value == null)
          continue;
        bool1 = false;
      }
      if ((isIntegral(this)) && (isIntegral(localJsonPrimitive)))
      {
        if (getAsNumber().longValue() == localJsonPrimitive.getAsNumber().longValue())
          continue;
        bool1 = false;
      }
      if ((this.value instanceof Number) && (localJsonPrimitive.value instanceof Number))
      {
        double d1 = getAsNumber().doubleValue();
        double d2 = localJsonPrimitive.getAsNumber().doubleValue();
        if (d1 != d2)
        {
          boolean bool3 = Double.isNaN(d1);
          bool2 = false;
          if (!(bool3))
            break label169;
          boolean bool4 = Double.isNaN(d2);
          bool2 = false;
          if (!(bool4))
            break label169;
        }
        boolean bool2 = bool1;
        label169: bool1 = bool2;
      }
      bool1 = this.value.equals(localJsonPrimitive.value);
    }
  }

  public BigDecimal getAsBigDecimal()
  {
    if (this.value instanceof BigDecimal);
    for (BigDecimal localBigDecimal = (BigDecimal)this.value; ; localBigDecimal = new BigDecimal(this.value.toString()))
      return localBigDecimal;
  }

  public BigInteger getAsBigInteger()
  {
    if (this.value instanceof BigInteger);
    for (BigInteger localBigInteger = (BigInteger)this.value; ; localBigInteger = new BigInteger(this.value.toString()))
      return localBigInteger;
  }

  public boolean getAsBoolean()
  {
    if (isBoolean());
    for (boolean bool = getAsBooleanWrapper().booleanValue(); ; bool = Boolean.parseBoolean(getAsString()))
      return bool;
  }

  Boolean getAsBooleanWrapper()
  {
    return ((Boolean)this.value);
  }

  public byte getAsByte()
  {
    if (isNumber());
    for (int i = getAsNumber().byteValue(); ; i = Byte.parseByte(getAsString()))
      return i;
  }

  public char getAsCharacter()
  {
    return getAsString().charAt(0);
  }

  public double getAsDouble()
  {
    double d;
    if (isNumber())
      d = getAsNumber().doubleValue();
    while (true)
    {
      return d;
      d = Double.parseDouble(getAsString());
    }
  }

  public float getAsFloat()
  {
    float f;
    if (isNumber())
      f = getAsNumber().floatValue();
    while (true)
    {
      return f;
      f = Float.parseFloat(getAsString());
    }
  }

  public int getAsInt()
  {
    if (isNumber());
    for (int i = getAsNumber().intValue(); ; i = Integer.parseInt(getAsString()))
      return i;
  }

  public long getAsLong()
  {
    long l;
    if (isNumber())
      l = getAsNumber().longValue();
    while (true)
    {
      return l;
      l = Long.parseLong(getAsString());
    }
  }

  public Number getAsNumber()
  {
    if (this.value instanceof String);
    for (Object localObject = new LazilyParsedNumber((String)this.value); ; localObject = (Number)this.value)
      return localObject;
  }

  public short getAsShort()
  {
    if (isNumber());
    for (int i = getAsNumber().shortValue(); ; i = Short.parseShort(getAsString()))
      return i;
  }

  public String getAsString()
  {
    if (isNumber());
    for (String str = getAsNumber().toString(); ; str = (String)this.value)
      while (true)
      {
        return str;
        if (!(isBoolean()))
          break;
        str = getAsBooleanWrapper().toString();
      }
  }

  public int hashCode()
  {
    if (this.value == null);
    for (int i = 31; ; i = this.value.hashCode())
      while (true)
      {
        return i;
        if (isIntegral(this))
        {
          long l2 = getAsNumber().longValue();
          i = (int)(l2 ^ l2 >>> 32);
        }
        if (!(this.value instanceof Number))
          break;
        long l1 = Double.doubleToLongBits(getAsNumber().doubleValue());
        i = (int)(l1 ^ l1 >>> 32);
      }
  }

  public boolean isBoolean()
  {
    return this.value instanceof Boolean;
  }

  public boolean isNumber()
  {
    return this.value instanceof Number;
  }

  public boolean isString()
  {
    return this.value instanceof String;
  }

  void setValue(Object paramObject)
  {
    if (paramObject instanceof Character)
    {
      this.value = String.valueOf(((Character)paramObject).charValue());
      label21: return;
    }
    if ((paramObject instanceof Number) || (isPrimitiveOrString(paramObject)));
    for (boolean bool = true; ; bool = false)
    {
      .Gson.Preconditions.checkArgument(bool);
      this.value = paramObject;
      break label21:
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.JsonPrimitive
 * JD-Core Version:    0.5.3
 */