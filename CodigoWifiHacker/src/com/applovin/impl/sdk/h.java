package com.applovin.impl.sdk;

import com.applovin.sdk.Logger;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import org.json.JSONException;
import org.json.JSONObject;

class h
{
  private final AppLovinSdkImpl a;
  private final Logger b;

  h(AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    this.a = paramAppLovinSdkImpl;
    this.b = paramAppLovinSdkImpl.getLogger();
  }

  private int a(Throwable paramThrowable)
  {
    if (paramThrowable instanceof SocketTimeoutException);
    for (int i = -102; ; i = 0)
      while (true)
      {
        return i;
        if (paramThrowable instanceof IOException)
        {
          String str = paramThrowable.getMessage();
          if ((str != null) && (str.toLowerCase().contains("authentication challenge")))
            i = 401;
          i = -100;
        }
        if (!(paramThrowable instanceof JSONException))
          break;
        i = -104;
      }
  }

  private HttpURLConnection a(String paramString1, String paramString2, int paramInt)
  {
    HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString1).openConnection();
    localHttpURLConnection.setRequestMethod(paramString2);
    if (paramInt < 0);
    for (int i = ((Integer)this.a.a(w.w)).intValue(); ; i = paramInt)
    {
      localHttpURLConnection.setConnectTimeout(i);
      if (paramInt < 0)
        paramInt = ((Integer)this.a.a(w.x)).intValue();
      localHttpURLConnection.setReadTimeout(paramInt);
      localHttpURLConnection.setDefaultUseCaches(false);
      localHttpURLConnection.setAllowUserInteraction(false);
      localHttpURLConnection.setUseCaches(false);
      localHttpURLConnection.setInstanceFollowRedirects(true);
      localHttpURLConnection.setDoInput(true);
      return localHttpURLConnection;
    }
  }

  private static void a(InputStream paramInputStream)
  {
    if (paramInputStream != null);
    try
    {
      paramInputStream.close();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private void a(String paramString1, int paramInt, String paramString2, i parami)
  {
    this.b.d("ConnectionManager", paramInt + " received from from \"" + paramString2 + "\": " + paramString1);
    if ((paramInt >= 200) && (paramInt < 300))
    {
      JSONObject localJSONObject = new JSONObject();
      if ((paramInt != 204) && (paramString1 != null) && (paramString1.length() > 2))
        localJSONObject = new JSONObject(paramString1);
      parami.a(localJSONObject, paramInt);
    }
    while (true)
    {
      return;
      this.b.e("ConnectionManager", paramInt + " error received from \"" + paramString2 + "\"");
      parami.a(paramInt);
    }
  }

  private void a(String paramString1, String paramString2, int paramInt, long paramLong)
  {
    this.b.i("ConnectionManager", "Succesfull " + paramString1 + " returned " + paramInt + " in " + ((float)(System.currentTimeMillis() - paramLong) / 1000.0F) + " s" + " over " + j.a(this.a) + " to \"" + paramString2 + "\"");
  }

  private void a(String paramString1, String paramString2, int paramInt, long paramLong, Throwable paramThrowable)
  {
    this.b.e("ConnectionManager", "Failed " + paramString1 + " returned " + paramInt + " in " + ((float)(System.currentTimeMillis() - paramLong) / 1000.0F) + " s" + " over " + j.a(this.a) + " to \"" + paramString2 + "\"", paramThrowable);
  }

  private static void a(HttpURLConnection paramHttpURLConnection)
  {
    if (paramHttpURLConnection != null);
    try
    {
      paramHttpURLConnection.disconnect();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  void a(String paramString, int paramInt, i parami)
  {
    a(paramString, "GET", paramInt, null, parami);
  }

  void a(String paramString, i parami)
  {
    a(paramString, -1, parami);
  }

  // ERROR //
  void a(String paramString1, String paramString2, int paramInt, JSONObject paramJSONObject, i parami)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: aconst_null
    //   4: astore 7
    //   6: aload_1
    //   7: ifnonnull +13 -> 20
    //   10: new 210	java/lang/IllegalArgumentException
    //   13: dup
    //   14: ldc 212
    //   16: invokespecial 213	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   19: athrow
    //   20: aload_2
    //   21: ifnonnull +13 -> 34
    //   24: new 210	java/lang/IllegalArgumentException
    //   27: dup
    //   28: ldc 215
    //   30: invokespecial 213	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   33: athrow
    //   34: aload 5
    //   36: ifnonnull +13 -> 49
    //   39: new 210	java/lang/IllegalArgumentException
    //   42: dup
    //   43: ldc 217
    //   45: invokespecial 213	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   48: athrow
    //   49: iconst_0
    //   50: aload_0
    //   51: getfield 15	com/applovin/impl/sdk/h:a	Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    //   54: invokevirtual 221	com/applovin/impl/sdk/AppLovinSdkImpl:getApplicationContext	()Landroid/content/Context;
    //   57: invokestatic 224	com/applovin/impl/sdk/j:a	(ZLandroid/content/Context;)Z
    //   60: ifeq +343 -> 403
    //   63: invokestatic 171	java/lang/System:currentTimeMillis	()J
    //   66: lstore 8
    //   68: aload_0
    //   69: getfield 23	com/applovin/impl/sdk/h:b	Lcom/applovin/sdk/Logger;
    //   72: ldc 114
    //   74: new 116	java/lang/StringBuilder
    //   77: dup
    //   78: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   81: ldc 226
    //   83: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: aload_2
    //   87: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: ldc 228
    //   92: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: aload_1
    //   96: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: ldc 230
    //   101: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: invokeinterface 189 3 0
    //   112: aload_0
    //   113: aload_1
    //   114: aload_2
    //   115: iload_3
    //   116: invokespecial 232	com/applovin/impl/sdk/h:a	(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    //   119: astore 13
    //   121: aload 13
    //   123: astore 11
    //   125: aload 4
    //   127: ifnull +112 -> 239
    //   130: aload 4
    //   132: invokevirtual 233	org/json/JSONObject:toString	()Ljava/lang/String;
    //   135: astore 18
    //   137: aload_0
    //   138: getfield 23	com/applovin/impl/sdk/h:b	Lcom/applovin/sdk/Logger;
    //   141: ldc 114
    //   143: new 116	java/lang/StringBuilder
    //   146: dup
    //   147: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   150: ldc 235
    //   152: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: aload_1
    //   156: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: ldc 237
    //   161: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: aload 18
    //   166: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: invokeinterface 137 3 0
    //   177: aload 11
    //   179: ldc 239
    //   181: ldc 241
    //   183: invokevirtual 244	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   186: aload 11
    //   188: iconst_1
    //   189: invokevirtual 247	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   192: aload 11
    //   194: aload 18
    //   196: invokevirtual 251	java/lang/String:getBytes	()[B
    //   199: arraylength
    //   200: invokevirtual 254	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   203: new 256	java/io/PrintWriter
    //   206: dup
    //   207: new 258	java/io/OutputStreamWriter
    //   210: dup
    //   211: aload 11
    //   213: invokevirtual 262	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   216: ldc_w 264
    //   219: invokespecial 267	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   222: invokespecial 270	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   225: astore 19
    //   227: aload 19
    //   229: aload 18
    //   231: invokevirtual 273	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   234: aload 19
    //   236: invokevirtual 274	java/io/PrintWriter:close	()V
    //   239: aload 11
    //   241: invokevirtual 277	java/net/HttpURLConnection:getResponseCode	()I
    //   244: istore 6
    //   246: aconst_null
    //   247: astore 7
    //   249: iload 6
    //   251: ifle +56 -> 307
    //   254: aload 11
    //   256: invokevirtual 281	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   259: astore 15
    //   261: aload 15
    //   263: invokestatic 284	com/applovin/impl/sdk/j:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   266: astore 17
    //   268: aload_0
    //   269: aload_2
    //   270: aload_1
    //   271: iload 6
    //   273: lload 8
    //   275: invokespecial 286	com/applovin/impl/sdk/h:a	(Ljava/lang/String;Ljava/lang/String;IJ)V
    //   278: aload_0
    //   279: aload 17
    //   281: aload 11
    //   283: invokevirtual 277	java/net/HttpURLConnection:getResponseCode	()I
    //   286: aload_1
    //   287: aload 5
    //   289: invokespecial 288	com/applovin/impl/sdk/h:a	(Ljava/lang/String;ILjava/lang/String;Lcom/applovin/impl/sdk/i;)V
    //   292: aload 15
    //   294: astore 14
    //   296: aload 14
    //   298: invokestatic 290	com/applovin/impl/sdk/h:a	(Ljava/io/InputStream;)V
    //   301: aload 11
    //   303: invokestatic 292	com/applovin/impl/sdk/h:a	(Ljava/net/HttpURLConnection;)V
    //   306: return
    //   307: aload_0
    //   308: aload_2
    //   309: aload_1
    //   310: iload 6
    //   312: lload 8
    //   314: aconst_null
    //   315: invokespecial 294	com/applovin/impl/sdk/h:a	(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V
    //   318: aload 5
    //   320: iload 6
    //   322: invokeinterface 158 2 0
    //   327: aconst_null
    //   328: astore 14
    //   330: goto -34 -> 296
    //   333: astore 12
    //   335: aconst_null
    //   336: astore 11
    //   338: iload 6
    //   340: ifne +11 -> 351
    //   343: aload_0
    //   344: aload 12
    //   346: invokespecial 296	com/applovin/impl/sdk/h:a	(Ljava/lang/Throwable;)I
    //   349: istore 6
    //   351: aload_0
    //   352: aload_2
    //   353: aload_1
    //   354: iload 6
    //   356: lload 8
    //   358: aload 12
    //   360: invokespecial 294	com/applovin/impl/sdk/h:a	(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V
    //   363: aload 5
    //   365: iload 6
    //   367: invokeinterface 158 2 0
    //   372: aload 7
    //   374: invokestatic 290	com/applovin/impl/sdk/h:a	(Ljava/io/InputStream;)V
    //   377: aload 11
    //   379: invokestatic 292	com/applovin/impl/sdk/h:a	(Ljava/net/HttpURLConnection;)V
    //   382: goto -76 -> 306
    //   385: astore 10
    //   387: aconst_null
    //   388: astore 11
    //   390: aload 7
    //   392: invokestatic 290	com/applovin/impl/sdk/h:a	(Ljava/io/InputStream;)V
    //   395: aload 11
    //   397: invokestatic 292	com/applovin/impl/sdk/h:a	(Ljava/net/HttpURLConnection;)V
    //   400: aload 10
    //   402: athrow
    //   403: aload 5
    //   405: bipush 153
    //   407: invokeinterface 158 2 0
    //   412: goto -106 -> 306
    //   415: astore 10
    //   417: goto -27 -> 390
    //   420: astore 10
    //   422: aload 15
    //   424: astore 7
    //   426: goto -36 -> 390
    //   429: astore 12
    //   431: aconst_null
    //   432: astore 7
    //   434: goto -96 -> 338
    //   437: astore 16
    //   439: aload 15
    //   441: astore 7
    //   443: aload 16
    //   445: astore 12
    //   447: goto -109 -> 338
    //
    // Exception table:
    //   from	to	target	type
    //   68	121	333	java/lang/Throwable
    //   68	121	385	finally
    //   130	261	415	finally
    //   307	327	415	finally
    //   343	372	415	finally
    //   261	292	420	finally
    //   130	261	429	java/lang/Throwable
    //   307	327	429	java/lang/Throwable
    //   261	292	437	java/lang/Throwable
  }

  void a(String paramString, JSONObject paramJSONObject, i parami)
  {
    a(paramString, "PUT", -1, paramJSONObject, parami);
  }

  void b(String paramString, JSONObject paramJSONObject, i parami)
  {
    a(paramString, "POST", -1, paramJSONObject, parami);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.h
 * JD-Core Version:    0.5.3
 */