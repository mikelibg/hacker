package com.parse;

public abstract class CountCallback extends ParseCallback<Integer>
{
  public abstract void done(int paramInt, ParseException paramParseException);

  void internalDone(Integer paramInteger, ParseException paramParseException)
  {
    if (paramParseException == null)
      done(paramInteger.intValue(), null);
    while (true)
    {
      return;
      done(-1, paramParseException);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.CountCallback
 * JD-Core Version:    0.5.3
 */