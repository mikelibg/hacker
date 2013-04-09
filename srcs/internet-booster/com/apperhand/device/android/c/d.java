package com.apperhand.device.android.c;

import java.io.IOException;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.HttpResponse;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.message.AbstractHttpMessage;
import org.apache.http.protocol.HttpContext;

public final class d
{
  // ERROR //
  public static String a(String paramString, byte[] paramArrayOfByte, java.util.List<org.apache.http.Header> paramList)
    throws com.apperhand.device.a.d.f
  {
    // Byte code:
    //   0: new 14	org/apache/http/params/BasicHttpParams
    //   3: dup
    //   4: invokespecial 18	org/apache/http/params/BasicHttpParams:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: ldc 19
    //   11: invokestatic 25	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   14: aload_3
    //   15: ldc 19
    //   17: invokestatic 28	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   20: new 30	org/apache/http/impl/client/DefaultHttpClient
    //   23: dup
    //   24: aload_3
    //   25: invokespecial 33	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   28: astore 4
    //   30: aload 4
    //   32: new 35	com/apperhand/device/android/c/d$1
    //   35: dup
    //   36: invokespecial 36	com/apperhand/device/android/c/d$1:<init>	()V
    //   39: invokevirtual 40	org/apache/http/impl/client/DefaultHttpClient:setHttpRequestRetryHandler	(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    //   42: new 42	org/apache/http/client/methods/HttpPost
    //   45: dup
    //   46: aload_0
    //   47: invokespecial 45	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   50: astore 5
    //   52: aload_2
    //   53: ifnull +39 -> 92
    //   56: aload_2
    //   57: invokeinterface 51 1 0
    //   62: astore 41
    //   64: aload 41
    //   66: invokeinterface 57 1 0
    //   71: ifeq +21 -> 92
    //   74: aload 5
    //   76: aload 41
    //   78: invokeinterface 61 1 0
    //   83: checkcast 63	org/apache/http/Header
    //   86: invokevirtual 67	org/apache/http/client/methods/HttpPost:setHeader	(Lorg/apache/http/Header;)V
    //   89: goto -25 -> 64
    //   92: aload 5
    //   94: invokevirtual 71	org/apache/http/client/methods/HttpPost:getParams	()Lorg/apache/http/params/HttpParams;
    //   97: ldc 73
    //   99: iconst_0
    //   100: invokeinterface 79 3 0
    //   105: pop
    //   106: aload 5
    //   108: ldc 81
    //   110: ldc 83
    //   112: invokevirtual 86	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   115: aload 5
    //   117: ldc 88
    //   119: ldc 90
    //   121: invokevirtual 86	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   124: aload 5
    //   126: ldc 92
    //   128: ldc 83
    //   130: invokevirtual 86	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   133: aload_1
    //   134: arraylength
    //   135: sipush 256
    //   138: if_icmpge +225 -> 363
    //   141: new 94	org/apache/http/entity/ByteArrayEntity
    //   144: dup
    //   145: aload_1
    //   146: invokespecial 97	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   149: astore 38
    //   151: aload 5
    //   153: aload 38
    //   155: invokevirtual 101	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   158: aload 4
    //   160: aload 5
    //   162: invokevirtual 105	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   165: astore 19
    //   167: aload 19
    //   169: astore 15
    //   171: aload 15
    //   173: invokeinterface 111 1 0
    //   178: astore 20
    //   180: aload 15
    //   182: invokeinterface 115 1 0
    //   187: invokeinterface 121 1 0
    //   192: sipush 200
    //   195: if_icmpeq +241 -> 436
    //   198: aload 20
    //   200: ifnull +10 -> 210
    //   203: aload 20
    //   205: invokeinterface 126 1 0
    //   210: new 128	java/lang/StringBuilder
    //   213: dup
    //   214: invokespecial 129	java/lang/StringBuilder:<init>	()V
    //   217: astore 21
    //   219: aload 21
    //   221: ldc 131
    //   223: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: aload 15
    //   228: invokeinterface 115 1 0
    //   233: invokeinterface 121 1 0
    //   238: invokevirtual 138	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   241: ldc 140
    //   243: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: pop
    //   247: aload 21
    //   249: aload_0
    //   250: aload 5
    //   252: aload 15
    //   254: invokestatic 143	com/apperhand/device/android/c/d:a	(Ljava/lang/String;Lorg/apache/http/message/AbstractHttpMessage;Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuilder;
    //   257: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    //   260: pop
    //   261: new 8	com.apperhand.device.a.d.f
    //   264: dup
    //   265: getstatic 151	com/apperhand/device/a/d/f$a:a	Lcom/apperhand/device/a/d/f$a;
    //   268: aload 21
    //   270: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: aconst_null
    //   274: iconst_0
    //   275: invokespecial 158	com.apperhand.device.a.d.f:<init>	(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    //   278: athrow
    //   279: astore 8
    //   281: aload 15
    //   283: astore 9
    //   285: new 128	java/lang/StringBuilder
    //   288: dup
    //   289: invokespecial 129	java/lang/StringBuilder:<init>	()V
    //   292: astore 10
    //   294: aload 10
    //   296: ldc 160
    //   298: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   301: aload 8
    //   303: invokevirtual 163	java/io/IOException:getMessage	()Ljava/lang/String;
    //   306: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   309: ldc 140
    //   311: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   314: pop
    //   315: aload 10
    //   317: aload_0
    //   318: aload 5
    //   320: aload 9
    //   322: invokestatic 143	com/apperhand/device/android/c/d:a	(Ljava/lang/String;Lorg/apache/http/message/AbstractHttpMessage;Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuilder;
    //   325: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    //   328: pop
    //   329: new 8	com.apperhand.device.a.d.f
    //   332: dup
    //   333: getstatic 151	com/apperhand/device/a/d/f$a:a	Lcom/apperhand/device/a/d/f$a;
    //   336: aload 10
    //   338: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   341: aload 8
    //   343: iconst_0
    //   344: invokespecial 158	com.apperhand.device.a.d.f:<init>	(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    //   347: athrow
    //   348: astore 11
    //   350: aload 4
    //   352: invokevirtual 167	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   355: invokeinterface 172 1 0
    //   360: aload 11
    //   362: athrow
    //   363: new 174	java/io/ByteArrayOutputStream
    //   366: dup
    //   367: invokespecial 175	java/io/ByteArrayOutputStream:<init>	()V
    //   370: astore 39
    //   372: new 177	java/util/zip/GZIPOutputStream
    //   375: dup
    //   376: aload 39
    //   378: invokespecial 180	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   381: astore 40
    //   383: aload 40
    //   385: aload_1
    //   386: invokevirtual 185	java/io/OutputStream:write	([B)V
    //   389: aload 40
    //   391: invokevirtual 188	java/io/OutputStream:close	()V
    //   394: new 94	org/apache/http/entity/ByteArrayEntity
    //   397: dup
    //   398: aload 39
    //   400: invokevirtual 192	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   403: invokespecial 97	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   406: astore 38
    //   408: aload 38
    //   410: ldc 90
    //   412: invokevirtual 197	org/apache/http/entity/AbstractHttpEntity:setContentEncoding	(Ljava/lang/String;)V
    //   415: goto -264 -> 151
    //   418: astore 7
    //   420: aload 5
    //   422: new 94	org/apache/http/entity/ByteArrayEntity
    //   425: dup
    //   426: aload_1
    //   427: invokespecial 97	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   430: invokevirtual 101	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   433: goto -275 -> 158
    //   436: aload 20
    //   438: ifnull +317 -> 755
    //   441: aload 20
    //   443: invokeinterface 201 1 0
    //   448: astore 25
    //   450: aload 25
    //   452: astore 26
    //   454: aload 20
    //   456: invokeinterface 205 1 0
    //   461: astore 29
    //   463: aload 29
    //   465: ifnull +61 -> 526
    //   468: aload 26
    //   470: ifnull +56 -> 526
    //   473: aload 29
    //   475: invokeinterface 209 1 0
    //   480: astore 35
    //   482: iconst_0
    //   483: istore 36
    //   485: iload 36
    //   487: aload 35
    //   489: arraylength
    //   490: if_icmpge +36 -> 526
    //   493: aload 35
    //   495: iload 36
    //   497: aaload
    //   498: invokeinterface 214 1 0
    //   503: ldc 90
    //   505: invokevirtual 220	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   508: ifeq +176 -> 684
    //   511: new 222	java/util/zip/GZIPInputStream
    //   514: dup
    //   515: aload 26
    //   517: invokespecial 225	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   520: astore 37
    //   522: aload 37
    //   524: astore 26
    //   526: aload 26
    //   528: ifnull +221 -> 749
    //   531: new 227	java/io/StringWriter
    //   534: dup
    //   535: invokespecial 228	java/io/StringWriter:<init>	()V
    //   538: astore 30
    //   540: sipush 1024
    //   543: newarray char
    //   545: astore 31
    //   547: new 230	java/io/BufferedReader
    //   550: dup
    //   551: new 232	java/io/InputStreamReader
    //   554: dup
    //   555: aload 26
    //   557: ldc 234
    //   559: invokespecial 237	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   562: invokespecial 240	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   565: astore 32
    //   567: aload 32
    //   569: aload 31
    //   571: invokevirtual 246	java/io/Reader:read	([C)I
    //   574: istore 33
    //   576: iload 33
    //   578: iconst_m1
    //   579: if_icmpeq +111 -> 690
    //   582: aload 30
    //   584: aload 31
    //   586: iconst_0
    //   587: iload 33
    //   589: invokevirtual 251	java/io/Writer:write	([CII)V
    //   592: goto -25 -> 567
    //   595: astore 27
    //   597: aload 26
    //   599: astore 28
    //   601: aload 28
    //   603: ifnull +8 -> 611
    //   606: aload 28
    //   608: invokevirtual 254	java/io/InputStream:close	()V
    //   611: aload 27
    //   613: athrow
    //   614: astore 14
    //   616: aload 5
    //   618: invokevirtual 257	org/apache/http/client/methods/HttpPost:abort	()V
    //   621: new 128	java/lang/StringBuilder
    //   624: dup
    //   625: invokespecial 129	java/lang/StringBuilder:<init>	()V
    //   628: astore 16
    //   630: aload 16
    //   632: ldc 160
    //   634: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   637: aload 14
    //   639: invokevirtual 258	java/lang/RuntimeException:getMessage	()Ljava/lang/String;
    //   642: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   645: ldc 140
    //   647: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   650: pop
    //   651: aload 16
    //   653: aload_0
    //   654: aload 5
    //   656: aload 15
    //   658: invokestatic 143	com/apperhand/device/android/c/d:a	(Ljava/lang/String;Lorg/apache/http/message/AbstractHttpMessage;Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuilder;
    //   661: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    //   664: pop
    //   665: new 8	com.apperhand.device.a.d.f
    //   668: dup
    //   669: getstatic 151	com/apperhand/device/a/d/f$a:a	Lcom/apperhand/device/a/d/f$a;
    //   672: aload 16
    //   674: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   677: aload 14
    //   679: iconst_0
    //   680: invokespecial 158	com.apperhand.device.a.d.f:<init>	(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    //   683: athrow
    //   684: iinc 36 1
    //   687: goto -202 -> 485
    //   690: aload 30
    //   692: invokevirtual 259	java/lang/Object:toString	()Ljava/lang/String;
    //   695: astore 34
    //   697: aload 34
    //   699: astore 24
    //   701: aload 26
    //   703: ifnull +8 -> 711
    //   706: aload 26
    //   708: invokevirtual 254	java/io/InputStream:close	()V
    //   711: aload 4
    //   713: invokevirtual 167	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   716: invokeinterface 172 1 0
    //   721: aload 24
    //   723: areturn
    //   724: astore 14
    //   726: aconst_null
    //   727: astore 15
    //   729: goto -113 -> 616
    //   732: astore 8
    //   734: aconst_null
    //   735: astore 9
    //   737: goto -452 -> 285
    //   740: astore 27
    //   742: aload 26
    //   744: astore 28
    //   746: goto -145 -> 601
    //   749: aconst_null
    //   750: astore 24
    //   752: goto -51 -> 701
    //   755: aconst_null
    //   756: astore 24
    //   758: goto -47 -> 711
    //
    // Exception table:
    //   from	to	target	type
    //   171	198	279	java/io/IOException
    //   203	210	279	java/io/IOException
    //   210	279	279	java/io/IOException
    //   441	450	279	java/io/IOException
    //   606	611	279	java/io/IOException
    //   611	614	279	java/io/IOException
    //   706	711	279	java/io/IOException
    //   158	167	348	finally
    //   171	198	348	finally
    //   203	210	348	finally
    //   210	279	348	finally
    //   285	348	348	finally
    //   441	450	348	finally
    //   606	611	348	finally
    //   611	614	348	finally
    //   616	684	348	finally
    //   706	711	348	finally
    //   133	151	418	java/io/IOException
    //   151	158	418	java/io/IOException
    //   363	415	418	java/io/IOException
    //   531	567	595	finally
    //   567	576	595	finally
    //   582	592	595	finally
    //   690	697	595	finally
    //   171	198	614	java/lang/RuntimeException
    //   203	210	614	java/lang/RuntimeException
    //   210	279	614	java/lang/RuntimeException
    //   441	450	614	java/lang/RuntimeException
    //   606	611	614	java/lang/RuntimeException
    //   611	614	614	java/lang/RuntimeException
    //   706	711	614	java/lang/RuntimeException
    //   158	167	724	java/lang/RuntimeException
    //   158	167	732	java/io/IOException
    //   454	463	740	finally
    //   473	482	740	finally
    //   485	522	740	finally
  }

  private static StringBuilder a(String paramString, AbstractHttpMessage paramAbstractHttpMessage, HttpResponse paramHttpResponse)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString != null)
      localStringBuilder.append("address = [").append(paramString).append("],");
    if ((paramAbstractHttpMessage != null) && (paramAbstractHttpMessage.getAllHeaders() != null))
      localStringBuilder.append("Headers = [").append(paramAbstractHttpMessage.getAllHeaders()).append("],");
    if ((paramHttpResponse != null) && (paramHttpResponse.getStatusLine() != null))
      localStringBuilder.append("statusLine = [").append(paramHttpResponse.getStatusLine()).append("]");
    return localStringBuilder;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.device.android.c.d
 * JD-Core Version:    0.5.3
 */