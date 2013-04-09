package com.parse.signpost;

import com.parse.signpost.http.HttpRequest;
import com.parse.signpost.http.HttpResponse;

public abstract interface OAuthProviderListener
{
  public abstract boolean onResponseReceived(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse)
    throws Exception;

  public abstract void prepareRequest(HttpRequest paramHttpRequest)
    throws Exception;

  public abstract void prepareSubmission(HttpRequest paramHttpRequest)
    throws Exception;
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.signpost.OAuthProviderListener
 * JD-Core Version:    0.5.3
 */