package com.parse;

import java.util.List;

public abstract class FindCallback extends ParseCallback<List<ParseObject>>
{
  public abstract void done(List<ParseObject> paramList, ParseException paramParseException);

  final void internalDone(List<ParseObject> paramList, ParseException paramParseException)
  {
    done(paramList, paramParseException);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.FindCallback
 * JD-Core Version:    0.5.3
 */