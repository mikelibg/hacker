package com.google.mygson.internal;

import com.google.mygson.Gson;
import com.google.mygson.TypeAdapter;
import com.google.mygson.TypeAdapterFactory;
import com.google.mygson.reflect.TypeToken;

public abstract class GsonInternalAccess
{
  public static GsonInternalAccess INSTANCE;

  public abstract <T> TypeAdapter<T> getNextAdapter(Gson paramGson, TypeAdapterFactory paramTypeAdapterFactory, TypeToken<T> paramTypeToken);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.internal.GsonInternalAccess
 * JD-Core Version:    0.5.3
 */