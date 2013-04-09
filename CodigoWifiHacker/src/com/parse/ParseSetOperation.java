package com.parse;

class ParseSetOperation
  implements ParseFieldOperation
{
  private Object value;

  public ParseSetOperation(Object paramObject)
  {
    this.value = paramObject;
  }

  public Object apply(Object paramObject, ParseObject paramParseObject, String paramString)
  {
    return this.value;
  }

  public Object encode()
  {
    return Parse.maybeEncodeJSONObject(this.value, true);
  }

  public Object getValue()
  {
    return this.value;
  }

  public ParseFieldOperation mergeWithPrevious(ParseFieldOperation paramParseFieldOperation)
  {
    return this;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ParseSetOperation
 * JD-Core Version:    0.5.3
 */