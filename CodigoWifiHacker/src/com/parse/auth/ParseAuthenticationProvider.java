package com.parse.auth;

import org.json.JSONObject;

public abstract interface ParseAuthenticationProvider
{
  public abstract void authenticate(ParseAuthenticationCallback paramParseAuthenticationCallback);

  public abstract void cancel();

  public abstract void deauthenticate();

  public abstract String getAuthType();

  public abstract boolean restoreAuthentication(JSONObject paramJSONObject);

  public static abstract interface ParseAuthenticationCallback
  {
    public abstract void onCancel();

    public abstract void onError(Throwable paramThrowable);

    public abstract void onSuccess(JSONObject paramJSONObject);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.auth.ParseAuthenticationProvider
 * JD-Core Version:    0.5.3
 */