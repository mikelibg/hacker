package com.airpush.android;

import android.content.Context;
import android.os.AsyncTask;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.NameValuePair;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.protocol.HttpContext;

final class HttpPostDataTask extends AsyncTask<Void, Void, Boolean>
{
  private static final String ENCODING_GZIP = "gzip";
  private static final String HEADER_ACCEPT_ENCODING = "Accept-Encoding";
  private final String URL_TO_CALL;
  private final AsyncTaskCompleteListener<String> callback;
  private Context mContext;
  private String responseString;
  private List<NameValuePair> valuePairs;

  public HttpPostDataTask(Context paramContext, List<NameValuePair> paramList, String paramString, AsyncTaskCompleteListener<String> paramAsyncTaskCompleteListener)
  {
    Util.printDebugLog("Calling URL:> " + paramString);
    this.mContext = paramContext;
    this.valuePairs = paramList;
    this.URL_TO_CALL = paramString;
    this.callback = paramAsyncTaskCompleteListener;
  }

  // ERROR //
  protected Boolean doInBackground(Void[] paramArrayOfVoid)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 49	com/airpush/android/HttpPostDataTask:mContext	Landroid/content/Context;
    //   6: invokestatic 73	com/airpush/android/Util:checkInternetConnection	(Landroid/content/Context;)Z
    //   9: istore_3
    //   10: iload_3
    //   11: ifeq +213 -> 224
    //   14: new 75	org/apache/http/client/methods/HttpPost
    //   17: dup
    //   18: aload_0
    //   19: getfield 53	com/airpush/android/HttpPostDataTask:URL_TO_CALL	Ljava/lang/String;
    //   22: invokespecial 76	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   25: astore 5
    //   27: aload 5
    //   29: new 78	org/apache/http/client/entity/UrlEncodedFormEntity
    //   32: dup
    //   33: aload_0
    //   34: getfield 51	com/airpush/android/HttpPostDataTask:valuePairs	Ljava/util/List;
    //   37: invokespecial 81	org/apache/http/client/entity/UrlEncodedFormEntity:<init>	(Ljava/util/List;)V
    //   40: invokevirtual 85	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   43: new 87	org/apache/http/params/BasicHttpParams
    //   46: dup
    //   47: invokespecial 88	org/apache/http/params/BasicHttpParams:<init>	()V
    //   50: astore 16
    //   52: aload 16
    //   54: sipush 7000
    //   57: invokestatic 94	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   60: aload 16
    //   62: sipush 7000
    //   65: invokestatic 97	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   68: new 99	org/apache/http/impl/client/DefaultHttpClient
    //   71: dup
    //   72: aload 16
    //   74: invokespecial 102	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   77: astore 17
    //   79: aload 17
    //   81: new 104	com/airpush/android/HttpPostDataTask$1
    //   84: dup
    //   85: aload_0
    //   86: invokespecial 107	com/airpush/android/HttpPostDataTask$1:<init>	(Lcom/airpush/android/HttpPostDataTask;)V
    //   89: invokevirtual 111	org/apache/http/impl/client/DefaultHttpClient:addRequestInterceptor	(Lorg/apache/http/HttpRequestInterceptor;)V
    //   92: aload 17
    //   94: new 113	com/airpush/android/HttpPostDataTask$2
    //   97: dup
    //   98: aload_0
    //   99: invokespecial 114	com/airpush/android/HttpPostDataTask$2:<init>	(Lcom/airpush/android/HttpPostDataTask;)V
    //   102: invokevirtual 118	org/apache/http/impl/client/DefaultHttpClient:addResponseInterceptor	(Lorg/apache/http/HttpResponseInterceptor;)V
    //   105: aload 17
    //   107: aload 5
    //   109: invokevirtual 122	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   112: checkcast 124	org/apache/http/message/BasicHttpResponse
    //   115: astore 18
    //   117: ldc 126
    //   119: new 29	java/lang/StringBuilder
    //   122: dup
    //   123: ldc 128
    //   125: invokespecial 34	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   128: aload 18
    //   130: invokevirtual 132	org/apache/http/message/BasicHttpResponse:getStatusLine	()Lorg/apache/http/StatusLine;
    //   133: invokeinterface 138 1 0
    //   138: invokevirtual 141	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   141: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: invokestatic 147	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   147: pop
    //   148: aload_0
    //   149: aload 18
    //   151: invokevirtual 151	org/apache/http/message/BasicHttpResponse:getEntity	()Lorg/apache/http/HttpEntity;
    //   154: invokestatic 156	org/apache/http/util/EntityUtils:toString	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   157: putfield 158	com/airpush/android/HttpPostDataTask:responseString	Ljava/lang/String;
    //   160: new 29	java/lang/StringBuilder
    //   163: dup
    //   164: ldc 160
    //   166: invokespecial 34	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   169: aload_0
    //   170: getfield 158	com/airpush/android/HttpPostDataTask:responseString	Ljava/lang/String;
    //   173: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   179: invokestatic 47	com/airpush/android/Util:printDebugLog	(Ljava/lang/String;)V
    //   182: aload_0
    //   183: getfield 158	com/airpush/android/HttpPostDataTask:responseString	Ljava/lang/String;
    //   186: ifnull +38 -> 224
    //   189: aload_0
    //   190: getfield 158	com/airpush/android/HttpPostDataTask:responseString	Ljava/lang/String;
    //   193: ldc 162
    //   195: invokevirtual 168	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   198: ifne +26 -> 224
    //   201: getstatic 174	java/lang/Boolean:TRUE	Ljava/lang/Boolean;
    //   204: astore 4
    //   206: aload_0
    //   207: monitorexit
    //   208: aload 4
    //   210: areturn
    //   211: astore 14
    //   213: ldc 176
    //   215: aload 14
    //   217: invokevirtual 177	java/net/SocketTimeoutException:toString	()Ljava/lang/String;
    //   220: invokestatic 180	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   223: pop
    //   224: getstatic 183	java/lang/Boolean:FALSE	Ljava/lang/Boolean;
    //   227: astore 4
    //   229: goto -23 -> 206
    //   232: astore 12
    //   234: ldc 185
    //   236: aload 12
    //   238: invokevirtual 186	org/apache/http/client/ClientProtocolException:toString	()Ljava/lang/String;
    //   241: invokestatic 180	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   244: pop
    //   245: goto -21 -> 224
    //   248: astore_2
    //   249: aload_0
    //   250: monitorexit
    //   251: aload_2
    //   252: athrow
    //   253: astore 10
    //   255: ldc 188
    //   257: aload 10
    //   259: invokevirtual 189	java/net/MalformedURLException:toString	()Ljava/lang/String;
    //   262: invokestatic 180	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   265: pop
    //   266: goto -42 -> 224
    //   269: astore 8
    //   271: ldc 191
    //   273: aload 8
    //   275: invokevirtual 192	java/io/IOException:toString	()Ljava/lang/String;
    //   278: invokestatic 180	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   281: pop
    //   282: aload 8
    //   284: invokevirtual 195	java/io/IOException:printStackTrace	()V
    //   287: goto -63 -> 224
    //   290: astore 7
    //   292: goto -68 -> 224
    //   295: astore 6
    //   297: goto -73 -> 224
    //
    // Exception table:
    //   from	to	target	type
    //   14	206	211	java/net/SocketTimeoutException
    //   14	206	232	org/apache/http/client/ClientProtocolException
    //   2	10	248	finally
    //   14	206	248	finally
    //   213	245	248	finally
    //   255	287	248	finally
    //   14	206	253	java/net/MalformedURLException
    //   14	206	269	java/io/IOException
    //   14	206	290	java/lang/Throwable
    //   14	206	295	java/lang/Exception
  }

  protected void onPostExecute(Boolean paramBoolean)
  {
    monitorenter;
    while (true)
      try
      {
        if (paramBoolean.booleanValue())
        {
          this.callback.onTaskComplete(this.responseString);
          return;
        }
        this.callback.onTaskComplete(this.responseString);
      }
      catch (Exception localException)
      {
      }
      finally
      {
        monitorexit;
      }
  }

  private static class InflatingEntity extends HttpEntityWrapper
  {
    public InflatingEntity(HttpEntity paramHttpEntity)
    {
      super(paramHttpEntity);
    }

    public InputStream getContent()
      throws IOException
    {
      return new GZIPInputStream(this.wrappedEntity.getContent());
    }

    public long getContentLength()
    {
      return -1L;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.airpush.android.HttpPostDataTask
 * JD-Core Version:    0.5.3
 */