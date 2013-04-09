package com.parse;

public abstract class RefreshCallback extends ParseCallback<ParseObject>
{
  public abstract void done(ParseObject paramParseObject, ParseException paramParseException);

  final void internalDone(ParseObject paramParseObject, ParseException paramParseException)
  {
    done(paramParseObject, paramParseException);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.RefreshCallback
 * JD-Core Version:    0.5.3
 */