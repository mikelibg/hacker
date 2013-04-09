package com.google.mygson;

public enum LongSerializationPolicy
{
  static
  {
    LongSerializationPolicy[] arrayOfLongSerializationPolicy = new LongSerializationPolicy[2];
    arrayOfLongSerializationPolicy[0] = DEFAULT;
    arrayOfLongSerializationPolicy[1] = STRING;
    $VALUES = arrayOfLongSerializationPolicy;
  }

  public abstract JsonElement serialize(Long paramLong);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.LongSerializationPolicy
 * JD-Core Version:    0.5.3
 */