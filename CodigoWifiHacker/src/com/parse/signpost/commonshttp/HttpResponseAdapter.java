package com.parse.signpost.commonshttp;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.StatusLine;

public class HttpResponseAdapter
  implements com.parse.signpost.http.HttpResponse
{
  private org.apache.http.HttpResponse response;

  public HttpResponseAdapter(org.apache.http.HttpResponse paramHttpResponse)
  {
    this.response = paramHttpResponse;
  }

  public InputStream getContent()
    throws IOException
  {
    return this.response.getEntity().getContent();
  }

  public String getReasonPhrase()
    throws Exception
  {
    return this.response.getStatusLine().getReasonPhrase();
  }

  public int getStatusCode()
    throws IOException
  {
    return this.response.getStatusLine().getStatusCode();
  }

  public Object unwrap()
  {
    return this.response;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.signpost.commonshttp.HttpResponseAdapter
 * JD-Core Version:    0.5.3
 */