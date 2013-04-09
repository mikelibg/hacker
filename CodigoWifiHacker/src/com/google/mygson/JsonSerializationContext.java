package com.google.mygson;

import java.lang.reflect.Type;

public abstract interface JsonSerializationContext
{
  public abstract JsonElement serialize(Object paramObject);

  public abstract JsonElement serialize(Object paramObject, Type paramType);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.JsonSerializationContext
 * JD-Core Version:    0.5.3
 */