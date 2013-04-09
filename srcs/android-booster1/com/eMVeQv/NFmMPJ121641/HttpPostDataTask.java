package com.eMVeQv.NFmMPJ121641;

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
    //   3: getfield 48	com/eMVeQv/NFmMPJ121641/HttpPostDataTask:mContext	Landroid/content/Context;
    //   6: invokestatic 72	com/eMVeQv/NFmMPJ121641/Util:checkInternetConnection	(Landroid/content/Context;)Z
    //   9: istore_3
    //   10: iload_3
    //   11: ifeq +219 -> 230
    //   14: new 74	org/apache/http/client/methods/HttpPost
    //   17: dup
    //   18: aload_0
    //   19: getfield 52	com/eMVeQv/NFmMPJ121641/HttpPostDataTask:URL_TO_CALL	Ljava/lang/String;
    //   22: invokespecial 76	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   25: astore 5
    //   27: aload 5
    //   29: new 78	org/apache/http/client/entity/UrlEncodedFormEntity
    //   32: dup
    //   33: aload_0
    //   34: getfield 50	com/eMVeQv/NFmMPJ121641/HttpPostDataTask:valuePairs	Ljava/util/List;
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
    //   81: new 104	com/eMVeQv/NFmMPJ121641/HttpPostDataTask$1
    //   84: dup
    //   85: aload_0
    //   86: invokespecial 107	com/eMVeQv/NFmMPJ121641/HttpPostDataTask$1:<init>	(Lcom/eMVeQv/NFmMPJ121641/HttpPostDataTask;)V
    //   89: invokevirtual 111	org/apache/http/impl/client/DefaultHttpClient:addRequestInterceptor	(Lorg/apache/http/HttpRequestInterceptor;)V
    //   92: aload 17
    //   94: new 113	com/eMVeQv/NFmMPJ121641/HttpPostDataTask$2
    //   97: dup
    //   98: aload_0
    //   99: invokespecial 114	com/eMVeQv/NFmMPJ121641/HttpPostDataTask$2:<init>	(Lcom/eMVeQv/NFmMPJ121641/HttpPostDataTask;)V
    //   102: invokevirtual 118	org/apache/http/impl/client/DefaultHttpClient:addResponseInterceptor	(Lorg/apache/http/HttpResponseInterceptor;)V
    //   105: aload 17
    //   107: aload 5
    //   109: invokevirtual 122	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   112: checkcast 124	org/apache/http/message/BasicHttpResponse
    //   115: astore 18
    //   117: ldc 126
    //   119: new 29	java/lang/StringBuilder
    //   122: dup
    //   123: invokespecial 30	java/lang/StringBuilder:<init>	()V
    //   126: ldc 128
    //   128: invokevirtual 36	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: aload 18
    //   133: invokevirtual 132	org/apache/http/message/BasicHttpResponse:getStatusLine	()Lorg/apache/http/StatusLine;
    //   136: invokeinterface 138 1 0
    //   141: invokevirtual 141	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   144: invokevirtual 40	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: invokestatic 147	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   150: pop
    //   151: aload_0
    //   152: aload 18
    //   154: invokevirtual 151	org/apache/http/message/BasicHttpResponse:getEntity	()Lorg/apache/http/HttpEntity;
    //   157: invokestatic 156	org/apache/http/util/EntityUtils:toString	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   160: putfield 158	com/eMVeQv/NFmMPJ121641/HttpPostDataTask:responseString	Ljava/lang/String;
    //   163: new 29	java/lang/StringBuilder
    //   166: dup
    //   167: invokespecial 30	java/lang/StringBuilder:<init>	()V
    //   170: ldc 160
    //   172: invokevirtual 36	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: aload_0
    //   176: getfield 158	com/eMVeQv/NFmMPJ121641/HttpPostDataTask:responseString	Ljava/lang/String;
    //   179: invokevirtual 36	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: invokevirtual 40	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   185: invokestatic 46	com/eMVeQv/NFmMPJ121641/Util:printDebugLog	(Ljava/lang/String;)V
    //   188: aload_0
    //   189: getfield 158	com/eMVeQv/NFmMPJ121641/HttpPostDataTask:responseString	Ljava/lang/String;
    //   192: ifnull +38 -> 230
    //   195: aload_0
    //   196: getfield 158	com/eMVeQv/NFmMPJ121641/HttpPostDataTask:responseString	Ljava/lang/String;
    //   199: ldc 162
    //   201: invokevirtual 168	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   204: ifne +26 -> 230
    //   207: getstatic 174	java/lang/Boolean:TRUE	Ljava/lang/Boolean;
    //   210: astore 4
    //   212: aload_0
    //   213: monitorexit
    //   214: aload 4
    //   216: areturn
    //   217: astore 14
    //   219: ldc 176
    //   221: aload 14
    //   223: invokevirtual 177	java/net/SocketTimeoutException:toString	()Ljava/lang/String;
    //   226: invokestatic 180	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   229: pop
    //   230: getstatic 183	java/lang/Boolean:FALSE	Ljava/lang/Boolean;
    //   233: astore 4
    //   235: goto -23 -> 212
    //   238: astore 12
    //   240: ldc 185
    //   242: aload 12
    //   244: invokevirtual 186	org/apache/http/client/ClientProtocolException:toString	()Ljava/lang/String;
    //   247: invokestatic 180	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   250: pop
    //   251: goto -21 -> 230
    //   254: astore_2
    //   255: aload_0
    //   256: monitorexit
    //   257: aload_2
    //   258: athrow
    //   259: astore 10
    //   261: ldc 188
    //   263: aload 10
    //   265: invokevirtual 189	java/net/MalformedURLException:toString	()Ljava/lang/String;
    //   268: invokestatic 180	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   271: pop
    //   272: goto -42 -> 230
    //   275: astore 8
    //   277: ldc 191
    //   279: aload 8
    //   281: invokevirtual 192	java/io/IOException:toString	()Ljava/lang/String;
    //   284: invokestatic 180	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   287: pop
    //   288: aload 8
    //   290: invokevirtual 195	java/io/IOException:printStackTrace	()V
    //   293: goto -63 -> 230
    //   296: astore 7
    //   298: goto -68 -> 230
    //   301: astore 6
    //   303: goto -73 -> 230
    //
    // Exception table:
    //   from	to	target	type
    //   14	212	217	java/net/SocketTimeoutException
    //   14	212	238	org/apache/http/client/ClientProtocolException
    //   2	10	254	finally
    //   14	212	254	finally
    //   219	230	254	finally
    //   230	235	254	finally
    //   240	251	254	finally
    //   261	272	254	finally
    //   277	293	254	finally
    //   14	212	259	java/net/MalformedURLException
    //   14	212	275	java/io/IOException
    //   14	212	296	java/lang/Throwable
    //   14	212	301	java/lang/Exception
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

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.HttpPostDataTask
 * JD-Core Version:    0.5.3
 */