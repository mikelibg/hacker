package com.parse;

public abstract class FunctionCallback<T> extends ParseCallback<T>
{
  public abstract void done(T paramT, ParseException paramParseException);

  final void internalDone(T paramT, ParseException paramParseException)
  {
    done(paramT, paramParseException);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.FunctionCallback
 * JD-Core Version:    0.5.3
 */