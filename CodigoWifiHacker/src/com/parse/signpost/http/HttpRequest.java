package com.parse.signpost.http;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

public abstract interface HttpRequest
{
  public abstract Map<String, String> getAllHeaders();

  public abstract String getContentType();

  public abstract String getHeader(String paramString);

  public abstract InputStream getMessagePayload()
    throws IOException;

  public abstract String getMethod();

  public abstract String getRequestUrl();

  public abstract void setHeader(String paramString1, String paramString2);

  public abstract void setRequestUrl(String paramString);

  public abstract Object unwrap();
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.signpost.http.HttpRequest
 * JD-Core Version:    0.5.3
 */