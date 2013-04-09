package com.applovin.impl.bootstrap;

import android.content.Context;

class b extends Thread
{
  private final Context b;

  public b(SdkBoostrapTasksImpl paramSdkBoostrapTasksImpl, Context paramContext)
  {
    this.b = paramContext;
    setName("AppLovinUpdateThread");
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 17	com/applovin/impl/bootstrap/b:b	Landroid/content/Context;
    //   4: ldc 32
    //   6: iconst_0
    //   7: invokevirtual 38	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   10: astore_1
    //   11: aload_1
    //   12: ldc 40
    //   14: ldc 42
    //   16: invokeinterface 48 3 0
    //   21: astore_2
    //   22: aload_2
    //   23: ifnull +11 -> 34
    //   26: aload_2
    //   27: invokevirtual 54	java/lang/String:length	()I
    //   30: iconst_1
    //   31: if_icmpge +6 -> 37
    //   34: ldc 56
    //   36: astore_2
    //   37: aconst_null
    //   38: astore_3
    //   39: aload_0
    //   40: getfield 12	com/applovin/impl/bootstrap/b:a	Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;
    //   43: new 58	java/lang/StringBuilder
    //   46: dup
    //   47: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   50: ldc 61
    //   52: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: aload_2
    //   56: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: ldc 67
    //   61: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokestatic 76	com/applovin/impl/bootstrap/SdkBoostrapTasksImpl:a	(Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;Ljava/lang/String;)V
    //   70: new 78	java/lang/StringBuffer
    //   73: dup
    //   74: aload_0
    //   75: getfield 17	com/applovin/impl/bootstrap/b:b	Landroid/content/Context;
    //   78: invokestatic 83	com/applovin/impl/bootstrap/a:a	(Landroid/content/Context;)Ljava/lang/String;
    //   81: invokespecial 85	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   84: astore 8
    //   86: aload 8
    //   88: ldc 87
    //   90: invokevirtual 90	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   93: ldc 92
    //   95: invokevirtual 90	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   98: ldc 94
    //   100: invokevirtual 90	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   103: ldc 96
    //   105: invokevirtual 90	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   108: pop
    //   109: aload 8
    //   111: ldc 98
    //   113: invokevirtual 90	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   116: ldc 100
    //   118: invokevirtual 90	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   121: ldc 94
    //   123: invokevirtual 90	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   126: aload_2
    //   127: invokevirtual 90	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   130: pop
    //   131: new 102	java/net/URL
    //   134: dup
    //   135: aload 8
    //   137: invokevirtual 103	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   140: invokespecial 104	java/net/URL:<init>	(Ljava/lang/String;)V
    //   143: invokevirtual 108	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   146: checkcast 110	java/net/HttpURLConnection
    //   149: astore 11
    //   151: aload 11
    //   153: ldc 112
    //   155: invokevirtual 115	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   158: aload 11
    //   160: sipush 20000
    //   163: invokevirtual 119	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   166: aload 11
    //   168: sipush 20000
    //   171: invokevirtual 122	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   174: aload 11
    //   176: iconst_0
    //   177: invokevirtual 126	java/net/HttpURLConnection:setDefaultUseCaches	(Z)V
    //   180: aload 11
    //   182: iconst_0
    //   183: invokevirtual 129	java/net/HttpURLConnection:setAllowUserInteraction	(Z)V
    //   186: aload 11
    //   188: iconst_0
    //   189: invokevirtual 132	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   192: aload 11
    //   194: iconst_1
    //   195: invokevirtual 135	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   198: aload 11
    //   200: iconst_1
    //   201: invokevirtual 138	java/net/HttpURLConnection:setDoInput	(Z)V
    //   204: aload 11
    //   206: invokevirtual 141	java/net/HttpURLConnection:getResponseCode	()I
    //   209: istore 12
    //   211: aload 11
    //   213: ldc 143
    //   215: invokevirtual 147	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   218: astore 13
    //   220: aload 11
    //   222: ldc 149
    //   224: invokevirtual 147	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   227: astore 14
    //   229: aload 11
    //   231: ldc 151
    //   233: invokevirtual 147	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   236: astore 15
    //   238: aload 11
    //   240: ldc 153
    //   242: invokevirtual 147	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   245: astore 16
    //   247: aload_0
    //   248: getfield 12	com/applovin/impl/bootstrap/b:a	Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;
    //   251: new 58	java/lang/StringBuilder
    //   254: dup
    //   255: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   258: ldc 155
    //   260: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: iload 12
    //   265: invokevirtual 158	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   268: ldc 160
    //   270: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: ldc 162
    //   275: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: aload 16
    //   280: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: ldc 160
    //   285: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: ldc 164
    //   290: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   293: aload 13
    //   295: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   298: ldc 160
    //   300: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   303: ldc 166
    //   305: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   308: aload 14
    //   310: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   313: ldc 160
    //   315: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: ldc 168
    //   320: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: aload 15
    //   325: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   328: ldc 170
    //   330: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   333: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   336: invokestatic 76	com/applovin/impl/bootstrap/SdkBoostrapTasksImpl:a	(Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;Ljava/lang/String;)V
    //   339: aconst_null
    //   340: astore_3
    //   341: iload 12
    //   343: sipush 200
    //   346: if_icmpne +399 -> 745
    //   349: aconst_null
    //   350: astore_3
    //   351: aload 13
    //   353: ifnull +340 -> 693
    //   356: aload 13
    //   358: invokevirtual 54	java/lang/String:length	()I
    //   361: istore 26
    //   363: aconst_null
    //   364: astore_3
    //   365: iload 26
    //   367: ifle +326 -> 693
    //   370: new 172	java/io/File
    //   373: dup
    //   374: aload_0
    //   375: getfield 17	com/applovin/impl/bootstrap/b:b	Landroid/content/Context;
    //   378: ldc 174
    //   380: iconst_0
    //   381: invokevirtual 178	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   384: aload 13
    //   386: invokespecial 181	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   389: astore 27
    //   391: aload 11
    //   393: invokevirtual 185	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   396: astore_3
    //   397: aload_3
    //   398: aload 27
    //   400: invokestatic 188	com/applovin/impl/bootstrap/SdkBoostrapTasksImpl:a	(Ljava/io/InputStream;Ljava/io/File;)Ljava/lang/String;
    //   403: astore 28
    //   405: aload 28
    //   407: ifnull +214 -> 621
    //   410: aload 28
    //   412: aload 14
    //   414: invokevirtual 192	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   417: ifeq +204 -> 621
    //   420: aload_1
    //   421: invokeinterface 196 1 0
    //   426: astore 29
    //   428: aload 29
    //   430: ldc 40
    //   432: aload 13
    //   434: invokeinterface 202 3 0
    //   439: pop
    //   440: aload 29
    //   442: ldc 92
    //   444: ldc 96
    //   446: invokeinterface 202 3 0
    //   451: pop
    //   452: aload 29
    //   454: ldc 204
    //   456: aload 16
    //   458: invokeinterface 202 3 0
    //   463: pop
    //   464: aload 29
    //   466: ldc 206
    //   468: aload 28
    //   470: invokeinterface 202 3 0
    //   475: pop
    //   476: aload 29
    //   478: invokeinterface 210 1 0
    //   483: pop
    //   484: aload_0
    //   485: getfield 12	com/applovin/impl/bootstrap/b:a	Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;
    //   488: new 58	java/lang/StringBuilder
    //   491: dup
    //   492: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   495: ldc 212
    //   497: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   500: aload 13
    //   502: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   505: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   508: invokestatic 76	com/applovin/impl/bootstrap/SdkBoostrapTasksImpl:a	(Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;Ljava/lang/String;)V
    //   511: aload 15
    //   513: ifnull +99 -> 612
    //   516: aload 15
    //   518: invokevirtual 54	java/lang/String:length	()I
    //   521: ifle +91 -> 612
    //   524: aload_1
    //   525: invokeinterface 196 1 0
    //   530: astore 18
    //   532: aload 15
    //   534: invokestatic 218	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   537: invokestatic 222	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   540: invokevirtual 226	java/lang/Double:doubleValue	()D
    //   543: invokestatic 232	java/lang/Math:round	(D)J
    //   546: lstore 21
    //   548: invokestatic 238	java/lang/System:currentTimeMillis	()J
    //   551: lload 21
    //   553: ldc2_w 239
    //   556: lmul
    //   557: ladd
    //   558: lstore 23
    //   560: aload 18
    //   562: ldc 242
    //   564: lload 23
    //   566: invokeinterface 246 4 0
    //   571: pop
    //   572: aload_0
    //   573: getfield 12	com/applovin/impl/bootstrap/b:a	Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;
    //   576: new 58	java/lang/StringBuilder
    //   579: dup
    //   580: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   583: ldc 248
    //   585: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   588: lload 23
    //   590: invokevirtual 251	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   593: ldc 253
    //   595: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   598: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   601: invokestatic 76	com/applovin/impl/bootstrap/SdkBoostrapTasksImpl:a	(Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;Ljava/lang/String;)V
    //   604: aload 18
    //   606: invokeinterface 210 1 0
    //   611: pop
    //   612: aload_3
    //   613: ifnull +7 -> 620
    //   616: aload_3
    //   617: invokevirtual 258	java/io/InputStream:close	()V
    //   620: return
    //   621: aload_0
    //   622: getfield 12	com/applovin/impl/bootstrap/b:a	Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;
    //   625: new 58	java/lang/StringBuilder
    //   628: dup
    //   629: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   632: ldc_w 260
    //   635: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   638: aload 14
    //   640: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   643: ldc_w 262
    //   646: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   649: aload 28
    //   651: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   654: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   657: invokestatic 76	com/applovin/impl/bootstrap/SdkBoostrapTasksImpl:a	(Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;Ljava/lang/String;)V
    //   660: goto -149 -> 511
    //   663: astore 6
    //   665: aload_0
    //   666: getfield 12	com/applovin/impl/bootstrap/b:a	Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;
    //   669: ldc_w 264
    //   672: aload 6
    //   674: invokestatic 267	com/applovin/impl/bootstrap/SdkBoostrapTasksImpl:a	(Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   677: aload_3
    //   678: ifnull -58 -> 620
    //   681: aload_3
    //   682: invokevirtual 258	java/io/InputStream:close	()V
    //   685: goto -65 -> 620
    //   688: astore 7
    //   690: goto -70 -> 620
    //   693: aload_0
    //   694: getfield 12	com/applovin/impl/bootstrap/b:a	Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;
    //   697: new 58	java/lang/StringBuilder
    //   700: dup
    //   701: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   704: ldc_w 269
    //   707: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   710: aload 8
    //   712: invokevirtual 272	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   715: ldc_w 274
    //   718: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   721: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   724: invokestatic 76	com/applovin/impl/bootstrap/SdkBoostrapTasksImpl:a	(Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;Ljava/lang/String;)V
    //   727: aconst_null
    //   728: astore_3
    //   729: goto -218 -> 511
    //   732: astore 4
    //   734: aload_3
    //   735: ifnull +7 -> 742
    //   738: aload_3
    //   739: invokevirtual 258	java/io/InputStream:close	()V
    //   742: aload 4
    //   744: athrow
    //   745: iload 12
    //   747: sipush 404
    //   750: if_icmpne +53 -> 803
    //   753: aload_0
    //   754: getfield 12	com/applovin/impl/bootstrap/b:a	Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;
    //   757: new 58	java/lang/StringBuilder
    //   760: dup
    //   761: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   764: ldc_w 276
    //   767: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   770: aload 8
    //   772: invokevirtual 272	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   775: ldc_w 278
    //   778: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   781: aload 15
    //   783: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   786: ldc_w 280
    //   789: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   792: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   795: invokestatic 76	com/applovin/impl/bootstrap/SdkBoostrapTasksImpl:a	(Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;Ljava/lang/String;)V
    //   798: aconst_null
    //   799: astore_3
    //   800: goto -289 -> 511
    //   803: aload_0
    //   804: getfield 12	com/applovin/impl/bootstrap/b:a	Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;
    //   807: new 58	java/lang/StringBuilder
    //   810: dup
    //   811: invokespecial 59	java/lang/StringBuilder:<init>	()V
    //   814: ldc_w 282
    //   817: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   820: aload 8
    //   822: invokevirtual 272	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   825: ldc_w 284
    //   828: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   831: iload 12
    //   833: invokevirtual 158	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   836: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   839: invokestatic 76	com/applovin/impl/bootstrap/SdkBoostrapTasksImpl:a	(Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;Ljava/lang/String;)V
    //   842: aconst_null
    //   843: astore_3
    //   844: goto -333 -> 511
    //   847: astore 17
    //   849: goto -229 -> 620
    //   852: astore 5
    //   854: goto -112 -> 742
    //   857: astore 19
    //   859: goto -255 -> 604
    //
    // Exception table:
    //   from	to	target	type
    //   39	532	663	java/lang/Throwable
    //   532	604	663	java/lang/Throwable
    //   604	612	663	java/lang/Throwable
    //   621	660	663	java/lang/Throwable
    //   693	727	663	java/lang/Throwable
    //   753	842	663	java/lang/Throwable
    //   681	685	688	java/io/IOException
    //   39	532	732	finally
    //   532	604	732	finally
    //   604	612	732	finally
    //   621	660	732	finally
    //   665	677	732	finally
    //   693	727	732	finally
    //   753	842	732	finally
    //   616	620	847	java/io/IOException
    //   738	742	852	java/io/IOException
    //   532	604	857	java/lang/Exception
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.bootstrap.b
 * JD-Core Version:    0.5.3
 */