package com.google.mygson;

public abstract interface ExclusionStrategy
{
  public abstract boolean shouldSkipClass(Class<?> paramClass);

  public abstract boolean shouldSkipField(FieldAttributes paramFieldAttributes);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.ExclusionStrategy
 * JD-Core Version:    0.5.3
 */