package com.parse;

import org.json.JSONException;

abstract interface ParseFieldOperation
{
  public abstract Object apply(Object paramObject, ParseObject paramParseObject, String paramString);

  public abstract Object encode()
    throws JSONException;

  public abstract ParseFieldOperation mergeWithPrevious(ParseFieldOperation paramParseFieldOperation);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ParseFieldOperation
 * JD-Core Version:    0.5.3
 */