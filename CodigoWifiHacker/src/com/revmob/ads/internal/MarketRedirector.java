package com.revmob.ads.internal;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.client.RedirectHandler;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.protocol.HttpContext;

public class MarketRedirector
{
  private static Pattern AMAZON_URL_PATTERN;
  private static Pattern GOOGLE_PLAY_URL_PATTERN = Pattern.compile("details\\?id=[a-zA-Z0-9\\.]+");
  private String entity;
  private AbstractHttpClient httpclient;
  private RedirectHandler redirectHandler;
  private String url;

  static
  {
    AMAZON_URL_PATTERN = Pattern.compile("android\\?p=[a-zA-Z0-9\\.]+");
  }

  public MarketRedirector(String paramString)
  {
    this(paramString, "", new DefaultHttpClient(), new MarketRedirectHandler());
  }

  public MarketRedirector(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, new DefaultHttpClient(), new MarketRedirectHandler());
  }

  MarketRedirector(String paramString1, String paramString2, AbstractHttpClient paramAbstractHttpClient, RedirectHandler paramRedirectHandler)
  {
    this.url = paramString1;
    this.entity = paramString2;
    this.httpclient = paramAbstractHttpClient;
    this.redirectHandler = paramRedirectHandler;
    this.httpclient.setRedirectHandler(this.redirectHandler);
  }

  public static boolean isAmazonAppStoreUri(String paramString)
  {
    return paramString.startsWith("amzn://");
  }

  public static boolean isGooglePlayUri(String paramString)
  {
    return paramString.startsWith("market://");
  }

  static String rewriteMarketUrl(String paramString)
  {
    Matcher localMatcher1 = GOOGLE_PLAY_URL_PATTERN.matcher(paramString);
    Matcher localMatcher2 = AMAZON_URL_PATTERN.matcher(paramString);
    String str2;
    if (localMatcher1.find())
      str2 = localMatcher1.group();
    String str1;
    for (paramString = "market://" + str2; ; paramString = "amzn://apps/" + str1)
    {
      do
        return paramString;
      while (!(localMatcher2.find()));
      str1 = localMatcher2.group();
    }
  }

  public String getMarketUrl()
    throws LocationUrlNotFoundException
  {
    if ((isGooglePlayUri(this.url)) || (isAmazonAppStoreUri(this.url)));
    URI localURI;
    for (String str = this.url; ; str = rewriteMarketUrl(localURI.toString()))
    {
      return str;
      post();
      localURI = ((MarketRedirectHandler)this.redirectHandler).getLastRedirectedUrl();
      if (localURI != null)
        continue;
      throw new LocationUrlNotFoundException();
    }
  }

  HttpResponse post()
  {
    return new HTTPHelper(this.httpclient).post(this.url, this.entity);
  }

  static class MarketRedirectHandler extends DefaultRedirectHandler
  {
    private URI lastRedirectedUri;

    public URI getLastRedirectedUrl()
    {
      return this.lastRedirectedUri;
    }

    public URI getLocationURI(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
      throws ProtocolException
    {
      this.lastRedirectedUri = super.getLocationURI(paramHttpResponse, paramHttpContext);
      return this.lastRedirectedUri;
    }

    public boolean isRedirectRequested(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
    {
      Header localHeader = paramHttpResponse.getLastHeader("Location");
      String str;
      if (localHeader != null)
      {
        str = localHeader.getValue();
        if ((!(MarketRedirector.isGooglePlayUri(str))) && (!(MarketRedirector.isAmazonAppStoreUri(str))));
      }
      boolean bool;
      try
      {
        this.lastRedirectedUri = new URI(str);
        bool = false;
        label53: return bool;
      }
      catch (URISyntaxException localURISyntaxException)
      {
        bool = super.isRedirectRequested(paramHttpResponse, paramHttpContext);
        break label53:
        bool = super.isRedirectRequested(paramHttpResponse, paramHttpContext);
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.internal.MarketRedirector
 * JD-Core Version:    0.5.3
 */