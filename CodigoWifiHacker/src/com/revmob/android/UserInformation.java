package com.revmob.android;

import org.json.JSONException;
import org.json.JSONObject;

public class UserInformation
{
  private int age;
  private int gender;

  public UserInformation(int paramInt1, int paramInt2)
  {
    this.gender = paramInt1;
    this.age = paramInt2;
  }

  private void putIfNotEmpty(JSONObject paramJSONObject, String paramString, int paramInt)
    throws JSONException
  {
    if (paramInt == 0)
      return;
    paramJSONObject.put(paramString, paramInt);
  }

  public JSONObject addUserData(JSONObject paramJSONObject)
    throws JSONException
  {
    putIfNotEmpty(paramJSONObject, "gender", this.gender);
    putIfNotEmpty(paramJSONObject, "age", this.age);
    return paramJSONObject;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.android.UserInformation
 * JD-Core Version:    0.5.3
 */