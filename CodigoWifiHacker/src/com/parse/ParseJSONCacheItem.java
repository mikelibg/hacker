package com.parse;

import com.parse.codec.digest.DigestUtils;
import org.json.JSONException;
import org.json.JSONObject;

class ParseJSONCacheItem
{
  private String hashValue;
  private JSONObject json = new JSONObject();

  public ParseJSONCacheItem(Object paramObject)
    throws JSONException
  {
    this.json.put("object", Parse.maybeEncodeJSONObject(paramObject, true));
    this.hashValue = DigestUtils.md5Hex(this.json.toString());
  }

  public boolean equals(ParseJSONCacheItem paramParseJSONCacheItem)
  {
    return this.hashValue.equals(paramParseJSONCacheItem.getHashValue());
  }

  public String getHashValue()
  {
    return this.hashValue;
  }

  public Object getJSONObject()
  {
    Object localObject1;
    try
    {
      Object localObject2 = this.json.get("object");
      localObject1 = localObject2;
      return localObject1;
    }
    catch (JSONException localJSONException)
    {
      localObject1 = null;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ParseJSONCacheItem
 * JD-Core Version:    0.5.3
 */