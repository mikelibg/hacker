package com.parse.signpost.http;

import java.io.IOException;
import java.io.InputStream;

public abstract interface HttpResponse
{
  public abstract InputStream getContent()
    throws IOException;

  public abstract String getReasonPhrase()
    throws Exception;

  public abstract int getStatusCode()
    throws IOException;

  public abstract Object unwrap();
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.signpost.http.HttpResponse
 * JD-Core Version:    0.5.3
 */