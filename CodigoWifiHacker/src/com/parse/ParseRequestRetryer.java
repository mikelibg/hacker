package com.parse;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

class ParseRequestRetryer
{
  public static HttpClient testClient = null;
  private int attemptsMade = 0;
  private HttpClient client;
  private long delay;
  private int maxAttempts;
  private HttpUriRequest request;

  public ParseRequestRetryer(HttpUriRequest paramHttpUriRequest, long paramLong, int paramInt)
  {
    if (testClient != null)
    {
      this.client = testClient;
      paramLong = 1L;
    }
    while (true)
    {
      this.request = paramHttpUriRequest;
      this.maxAttempts = paramInt;
      this.delay = (paramLong + ()(paramLong * Math.random()));
      return;
      this.client = new DefaultHttpClient();
      this.client.getParams().setParameter("http.protocol.version", HttpVersion.HTTP_1_1);
    }
  }

  private byte[] sendOneRequest(ProgressCallback paramProgressCallback)
    throws ParseException
  {
    while (true)
    {
      HttpResponse localHttpResponse;
      ByteArrayOutputStream localByteArrayOutputStream;
      try
      {
        localHttpResponse = this.client.execute(this.request);
        if (!(this.request.getMethod().equals("GET")))
          break label238;
        int i = -1;
        Header[] arrayOfHeader = localHttpResponse.getHeaders("Content-Length");
        if (arrayOfHeader.length > 0)
          i = Integer.parseInt(arrayOfHeader[0].getValue());
        int j = 0;
        InputStream localInputStream = localHttpResponse.getEntity().getContent();
        localByteArrayOutputStream = new ByteArrayOutputStream();
        byte[] arrayOfByte2 = new byte[32768];
        do
        {
          int k = localInputStream.read(arrayOfByte2, 0, arrayOfByte2.length);
          if (k == -1)
            break label196;
          localByteArrayOutputStream.write(arrayOfByte2, 0, k);
          j += k;
        }
        while ((paramProgressCallback == null) || (i == -1));
        label196: BackgroundTask.executeTask(new BackgroundTask(paramProgressCallback, Math.round(100.0F * j / i))
        {
          public Integer run()
            throws ParseException
          {
            return Integer.valueOf(this.val$progressToReport);
          }
        });
      }
      catch (ClientProtocolException localClientProtocolException)
      {
        this.client.getConnectionManager().shutdown();
        throw connectionFailed("bad protocol", localClientProtocolException);
        localByteArrayOutputStream.flush();
        byte[] arrayOfByte3 = localByteArrayOutputStream.toByteArray();
        arrayOfByte1 = arrayOfByte3;
        return arrayOfByte1;
      }
      catch (IOException localIOException)
      {
        this.client.getConnectionManager().shutdown();
        throw connectionFailed("i/o failure", localIOException);
      }
      if (localHttpResponse.getStatusLine().getStatusCode() / 100 != 2)
      {
        label238: Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localHttpResponse.getStatusLine().getReasonPhrase();
        throw new ParseException(100, String.format("Upload to S3 failed. %s", arrayOfObject));
      }
      byte[] arrayOfByte1 = null;
    }
  }

  ParseException connectionFailed(String paramString, Exception paramException)
  {
    return new ParseException(100, paramString + ": " + paramException.getClass().getName() + ": " + paramException.getMessage());
  }

  public byte[] go(ProgressCallback paramProgressCallback)
    throws ParseException
  {
    byte[] arrayOfByte1;
    try
    {
      byte[] arrayOfByte2 = sendOneRequest(paramProgressCallback);
      arrayOfByte1 = arrayOfByte2;
      label11: return arrayOfByte1;
    }
    catch (ParseException localParseException)
    {
      this.attemptsMade = (1 + this.attemptsMade);
      if (this.attemptsMade < this.maxAttempts)
        Parse.logI("com.parse.ParseRequestRetryer", "Request failed. Waiting " + this.delay + " milliseconds before attempt #" + (1 + this.attemptsMade));
      try
      {
        Thread.sleep(this.delay);
        this.delay = (2L * this.delay);
        go(paramProgressCallback);
        arrayOfByte1 = null;
        break label11:
        boolean bool = this.request.isAborted();
        arrayOfByte1 = null;
        if (!(bool));
        Parse.logI("com.parse.ParseRequestRetryer", "Request failed. Giving up.");
        throw localParseException;
      }
      catch (InterruptedException localInterruptedException)
      {
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ParseRequestRetryer
 * JD-Core Version:    0.5.3
 */