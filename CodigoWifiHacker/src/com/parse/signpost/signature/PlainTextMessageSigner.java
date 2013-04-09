package com.parse.signpost.signature;

import com.parse.signpost.OAuth;
import com.parse.signpost.exception.OAuthMessageSignerException;
import com.parse.signpost.http.HttpParameters;
import com.parse.signpost.http.HttpRequest;

public class PlainTextMessageSigner extends OAuthMessageSigner
{
  public String getSignatureMethod()
  {
    return "PLAINTEXT";
  }

  public String sign(HttpRequest paramHttpRequest, HttpParameters paramHttpParameters)
    throws OAuthMessageSignerException
  {
    return OAuth.percentEncode(getConsumerSecret()) + '&' + OAuth.percentEncode(getTokenSecret());
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.signpost.signature.PlainTextMessageSigner
 * JD-Core Version:    0.5.3
 */