package com.parse;

public abstract class ProgressCallback extends ParseCallback<Integer>
{
  Integer maxProgressSoFar = Integer.valueOf(0);

  public abstract void done(Integer paramInteger);

  final void internalDone(Integer paramInteger, ParseException paramParseException)
  {
    if (paramInteger.intValue() <= this.maxProgressSoFar.intValue())
      return;
    this.maxProgressSoFar = paramInteger;
    done(paramInteger);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ProgressCallback
 * JD-Core Version:    0.5.3
 */