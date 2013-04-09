package com.applovin.impl.sdk;

import org.json.JSONObject;

class r
{
  private final String a;
  private final String b;
  private final long c;

  r(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, System.currentTimeMillis());
  }

  r(String paramString1, String paramString2, long paramLong)
  {
    String str1;
    if (paramString1 != null)
    {
      str1 = paramString1.substring(0, Math.min(paramString1.length(), 400));
      label25: this.a = str1;
      if (paramString2 == null)
        break label71;
    }
    for (String str2 = paramString2.substring(0, Math.min(paramString2.length(), 400)); ; str2 = "")
    {
      this.b = str2;
      this.c = paramLong;
      return;
      str1 = "UnknownErrorCode";
      label71: break label25:
    }
  }

  static r a(JSONObject paramJSONObject)
  {
    return new r(paramJSONObject.getString("code"), paramJSONObject.getString("details"), 1000L * paramJSONObject.getLong("timestamp"));
  }

  JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("code", this.a);
    localJSONObject.put("details", this.b);
    localJSONObject.put("timestamp", this.c / 1000L);
    return localJSONObject;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.r
 * JD-Core Version:    0.5.3
 */