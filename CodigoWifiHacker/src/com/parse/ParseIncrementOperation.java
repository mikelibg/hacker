package com.parse;

import org.json.JSONException;
import org.json.JSONObject;

class ParseIncrementOperation
  implements ParseFieldOperation
{
  private Number amount;

  public ParseIncrementOperation(Number paramNumber)
  {
    this.amount = paramNumber;
  }

  public Object apply(Object paramObject, ParseObject paramParseObject, String paramString)
  {
    if (paramObject == null);
    for (Number localNumber = this.amount; ; localNumber = Parse.addNumbers((Number)paramObject, this.amount))
    {
      return localNumber;
      if (!(paramObject instanceof Number))
        break;
    }
    throw new IllegalArgumentException("You cannot increment a non-number.");
  }

  public JSONObject encode()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("__op", "Increment");
    localJSONObject.put("amount", this.amount);
    return localJSONObject;
  }

  public ParseFieldOperation mergeWithPrevious(ParseFieldOperation paramParseFieldOperation)
  {
    if (paramParseFieldOperation == null);
    while (true)
    {
      return this;
      if (paramParseFieldOperation instanceof ParseDeleteOperation)
        this = new ParseSetOperation(this.amount);
      if (paramParseFieldOperation instanceof ParseSetOperation)
      {
        Object localObject = ((ParseSetOperation)paramParseFieldOperation).getValue();
        if (localObject instanceof Number)
          this = new ParseSetOperation(Parse.addNumbers((Number)localObject, this.amount));
        throw new IllegalArgumentException("You cannot increment a non-number.");
      }
      if (!(paramParseFieldOperation instanceof ParseIncrementOperation))
        break;
      this = new ParseIncrementOperation(Parse.addNumbers(((ParseIncrementOperation)paramParseFieldOperation).amount, this.amount));
    }
    throw new IllegalArgumentException("Operation is invalid after previous operation.");
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ParseIncrementOperation
 * JD-Core Version:    0.5.3
 */