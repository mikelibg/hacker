package com.millennialmedia.android;

import android.util.Log;
import java.io.IOException;
import java.net.URI;
import java.net.URLEncoder;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

class HttpGetRequest
{
  private HttpClient client = new DefaultHttpClient();
  private HttpGet getRequest = new HttpGet();

  // ERROR //
  static String convertStreamToString(java.io.InputStream paramInputStream)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: ifnonnull +13 -> 16
    //   6: new 26	IOException
    //   9: dup
    //   10: ldc 30
    //   12: invokespecial 33	IOException:<init>	(Ljava/lang/String;)V
    //   15: athrow
    //   16: new 35	java/io/BufferedReader
    //   19: dup
    //   20: new 37	java/io/InputStreamReader
    //   23: dup
    //   24: aload_0
    //   25: invokespecial 40	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   28: invokespecial 43	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   31: astore_2
    //   32: new 45	java/lang/StringBuilder
    //   35: dup
    //   36: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   39: astore_3
    //   40: aload_2
    //   41: invokevirtual 50	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   44: astore 7
    //   46: aload 7
    //   48: ifnull +63 -> 111
    //   51: aload_3
    //   52: new 45	java/lang/StringBuilder
    //   55: dup
    //   56: invokespecial 46	java/lang/StringBuilder:<init>	()V
    //   59: aload 7
    //   61: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: ldc 56
    //   66: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: pop
    //   76: goto -36 -> 40
    //   79: astore 6
    //   81: aload_2
    //   82: astore_1
    //   83: aload 6
    //   85: invokevirtual 62	java/lang/OutOfMemoryError:printStackTrace	()V
    //   88: new 26	IOException
    //   91: dup
    //   92: ldc 64
    //   94: invokespecial 33	IOException:<init>	(Ljava/lang/String;)V
    //   97: athrow
    //   98: astore 4
    //   100: aload_1
    //   101: ifnull +7 -> 108
    //   104: aload_1
    //   105: invokevirtual 67	java/io/BufferedReader:close	()V
    //   108: aload 4
    //   110: athrow
    //   111: aload_2
    //   112: ifnull +7 -> 119
    //   115: aload_2
    //   116: invokevirtual 67	java/io/BufferedReader:close	()V
    //   119: aload_3
    //   120: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: areturn
    //   124: astore 8
    //   126: aload 8
    //   128: invokevirtual 68	IOException:printStackTrace	()V
    //   131: goto -12 -> 119
    //   134: astore 5
    //   136: aload 5
    //   138: invokevirtual 68	IOException:printStackTrace	()V
    //   141: goto -33 -> 108
    //   144: astore 4
    //   146: aload_2
    //   147: astore_1
    //   148: goto -48 -> 100
    //   151: astore 6
    //   153: aconst_null
    //   154: astore_1
    //   155: goto -72 -> 83
    //
    // Exception table:
    //   from	to	target	type
    //   32	76	79	java/lang/OutOfMemoryError
    //   16	32	98	finally
    //   83	98	98	finally
    //   115	119	124	IOException
    //   104	108	134	IOException
    //   32	76	144	finally
    //   16	32	151	java/lang/OutOfMemoryError
  }

  static void log(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return;
    new Thread(new Runnable(paramString)
    {
      public void run()
      {
        MMAdViewSDK.Log.v("Logging event to: " + this.val$url);
        HttpGetRequest localHttpGetRequest = new HttpGetRequest();
        try
        {
          localHttpGetRequest.get(this.val$url);
          return;
        }
        catch (Exception localException)
        {
          MMAdViewSDK.Log.v(localException.getMessage());
        }
      }
    }).start();
  }

  static void log(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
      return;
    new Thread(new Runnable(paramArrayOfString)
    {
      public void run()
      {
        String[] arrayOfString = this.val$urls;
        int i = arrayOfString.length;
        int j = 0;
        while (j < i)
        {
          String str = arrayOfString[j];
          MMAdViewSDK.Log.v("Logging event to: " + str);
          try
          {
            new HttpGetRequest().get(str);
            label56: ++j;
          }
          catch (Exception localException)
          {
            MMAdViewSDK.Log.v(localException.getMessage());
            break label56:
          }
        }
      }
    }).start();
  }

  HttpResponse get(String paramString)
    throws Exception
  {
    HttpResponse localHttpResponse1;
    try
    {
      this.getRequest.setURI(new URI(paramString));
      HttpResponse localHttpResponse2 = this.client.execute(this.getRequest);
      localHttpResponse1 = localHttpResponse2;
      return localHttpResponse1;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      Log.e("MillennialMediaSDK", "Out of memory!");
      localHttpResponse1 = null;
    }
  }

  void trackConversion(String paramString1, String paramString2, boolean paramBoolean)
    throws Exception
  {
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      HttpResponse localHttpResponse;
      try
      {
        StringBuilder localStringBuilder = new StringBuilder("http://cvt.mydas.mobi/handleConversion?goalId=" + paramString1 + "&firstlaunch=" + i);
        if (paramString2 != null)
        {
          if (!(paramString2.startsWith("mmh_")))
            break label201;
          localStringBuilder.append("&hdid=" + URLEncoder.encode(paramString2));
        }
        String str = localStringBuilder.toString();
        MMAdViewSDK.Log.d("Sending conversion tracker report: " + str);
        this.getRequest.setURI(new URI(str));
        localHttpResponse = this.client.execute(this.getRequest);
        if (localHttpResponse.getStatusLine().getStatusCode() != 200)
          break label242;
        MMAdViewSDK.Log.v("Conversion tracker reponse code: " + localHttpResponse.getStatusLine().getStatusCode());
        break label278:
        label278: label201: label242: localStringBuilder.append("&auid=" + URLEncoder.encode(paramString2));
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        Log.e("MillennialMediaSDK", "Conversion tracker unable to complete report: " + localHttpResponse.getStatusLine().getStatusCode());
        return;
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.HttpGetRequest
 * JD-Core Version:    0.5.3
 */