package com.parse;

public abstract class SendCallback extends ParseCallback<Void>
{
  public abstract void done(ParseException paramParseException);

  final void internalDone(Void paramVoid, ParseException paramParseException)
  {
    done(paramParseException);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.SendCallback
 * JD-Core Version:    0.5.3
 */