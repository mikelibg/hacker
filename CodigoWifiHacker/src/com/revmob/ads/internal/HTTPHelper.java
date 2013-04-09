package com.revmob.ads.internal;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.SocketException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLPeerUnverifiedException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;

public class HTTPHelper
{
  private static final String REVMOB = "RevMob";
  private AbstractHttpClient httpclient;

  public HTTPHelper()
  {
    this(new DefaultHttpClient());
  }

  public HTTPHelper(AbstractHttpClient paramAbstractHttpClient)
  {
    this.httpclient = paramAbstractHttpClient;
    this.httpclient.getConnectionManager().getSchemeRegistry().register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
  }

  public static String encodedResponseBody(HttpEntity paramHttpEntity)
  {
    String str;
    if (paramHttpEntity == null)
      str = null;
    while (true)
    {
      return str;
      str = "";
      StringBuffer localStringBuffer;
      InputStreamReader localInputStreamReader;
      try
      {
        localStringBuffer = new StringBuffer(1024);
        localInputStreamReader = new InputStreamReader(paramHttpEntity.getContent(), "UTF-8");
        char[] arrayOfChar = new char[1024];
        int i = localInputStreamReader.read(arrayOfChar, 0, 1023);
        if (i <= 0)
          break label88;
        localStringBuffer.append(arrayOfChar, 0, i);
      }
      catch (IOException localIOException)
      {
        Log.w("RevMob", "Read error.");
      }
      continue;
      label88: str = localStringBuffer.toString();
      localInputStreamReader.close();
    }
  }

  private HttpResponse sendRequest(HttpRequestBase paramHttpRequestBase)
    throws SSLException
  {
    HttpResponse localHttpResponse1;
    try
    {
      HttpResponse localHttpResponse2 = this.httpclient.execute(paramHttpRequestBase);
      localHttpResponse1 = localHttpResponse2;
      label54: return localHttpResponse1;
    }
    catch (UnknownHostException localUnknownHostException)
    {
      Log.w("RevMob", "Error on requesting path " + paramHttpRequestBase.getRequestLine() + ". Is the device connected to the internet?", localUnknownHostException);
      localHttpResponse1 = null;
    }
    catch (HttpHostConnectException localHttpHostConnectException)
    {
      throw new SSLException(localHttpHostConnectException);
    }
    catch (SSLPeerUnverifiedException localSSLPeerUnverifiedException)
    {
      throw new SSLException(localSSLPeerUnverifiedException);
    }
    catch (SocketException localSocketException)
    {
      Log.w("RevMob", "Server took too long to respond.");
      break label54:
    }
    catch (IOException localIOException)
    {
      Log.w("RevMob", "Error on requesting path " + paramHttpRequestBase.getRequestLine() + ". Did the device lost its connection?", localIOException);
      break label54:
    }
  }

  private HttpResponse sendRequestDealingWithSSLErrors(HttpRequestBase paramHttpRequestBase)
  {
    Object localObject;
    try
    {
      HttpResponse localHttpResponse2 = sendRequest(paramHttpRequestBase);
      localObject = localHttpResponse2;
      label79: return localObject;
    }
    catch (SSLException localSSLException1)
    {
      try
      {
        if (!(paramHttpRequestBase.getURI().toString().startsWith("https://")))
          break label79;
        paramHttpRequestBase.setURI(new URI(paramHttpRequestBase.getURI().toString().replace("https://", "http://")));
        HttpResponse localHttpResponse1 = sendRequest(paramHttpRequestBase);
        localObject = localHttpResponse1;
      }
      catch (SSLException localSSLException2)
      {
        Log.i("RevMob", "Problem with SSL. What is the version of your Android?");
        localObject = null;
      }
      catch (URISyntaxException localURISyntaxException)
      {
        Log.e("RevMob", "Invalid url: " + paramHttpRequestBase.getURI().toString());
        break label79:
      }
    }
  }

  public HttpResponse get(String paramString)
  {
    return sendRequestDealingWithSSLErrors(new HttpGet(paramString));
  }

  public InputStream getAndReturnTheStream(String paramString)
  {
    InputStream localInputStream1;
    try
    {
      HttpResponse localHttpResponse = get(paramString);
      if ((localHttpResponse == null) || (localHttpResponse.getEntity() == null))
        break label53;
      InputStream localInputStream2 = localHttpResponse.getEntity().getContent();
      localInputStream1 = localInputStream2;
      label53: return localInputStream1;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e("RevMob", "Read error.");
      localInputStream1 = null;
    }
    catch (IOException localIOException)
    {
      Log.w("RevMob", "Read error.");
      break label53:
    }
  }

  public HttpResponse post(String paramString1, String paramString2)
  {
    HttpResponse localHttpResponse1;
    try
    {
      HttpPost localHttpPost = new HttpPost(paramString1);
      localHttpPost.setEntity(new StringEntity(paramString2));
      localHttpPost.setHeader("content-type", "application/json");
      HttpResponse localHttpResponse2 = sendRequestDealingWithSSLErrors(localHttpPost);
      localHttpResponse1 = localHttpResponse2;
      label55: return localHttpResponse1;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      Log.w("RevMob", "Encoding error.", localUnsupportedEncodingException);
      localHttpResponse1 = null;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.e("RevMob", "Unknown error", localRuntimeException);
      break label55:
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.internal.HTTPHelper
 * JD-Core Version:    0.5.3
 */