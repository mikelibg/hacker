package com.millennialmedia.android;

import android.content.Context;

class PreCacheWorker extends Thread
{
  private static boolean busy;
  private static String currentDownload = "";
  private Context appContext;
  private String[] cachedVideos;

  private PreCacheWorker(String[] paramArrayOfString, Context paramContext)
  {
    this.cachedVideos = paramArrayOfString;
    this.appContext = paramContext.getApplicationContext();
  }

  static boolean isCurrentlyDownloading(String paramString)
  {
    return currentDownload.equalsIgnoreCase(paramString);
  }

  static void preCacheVideos(String[] paramArrayOfString, Context paramContext)
  {
    monitorenter;
    try
    {
      if (!(busy))
        new PreCacheWorker(paramArrayOfString, paramContext).start();
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 24	com/millennialmedia/android/PreCacheWorker:cachedVideos	[Ljava/lang/String;
    //   4: astore_1
    //   5: aload_1
    //   6: arraylength
    //   7: istore_2
    //   8: iconst_0
    //   9: istore_3
    //   10: iload_3
    //   11: iload_2
    //   12: if_icmpge +508 -> 520
    //   15: aload_1
    //   16: iload_3
    //   17: aaload
    //   18: astore 4
    //   20: new 58	com/millennialmedia/android/HttpGetRequest
    //   23: dup
    //   24: invokespecial 59	com/millennialmedia/android/HttpGetRequest:<init>	()V
    //   27: aload 4
    //   29: invokevirtual 63	com/millennialmedia/android/HttpGetRequest:get	(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    //   32: astore 6
    //   34: aload 6
    //   36: ifnonnull +11 -> 47
    //   39: ldc 65
    //   41: invokestatic 71	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   44: goto +512 -> 556
    //   47: aload 6
    //   49: invokeinterface 77 1 0
    //   54: astore 7
    //   56: aload 7
    //   58: ifnonnull +42 -> 100
    //   61: ldc 79
    //   63: invokestatic 71	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   66: goto +490 -> 556
    //   69: astore 5
    //   71: new 81	java/lang/StringBuilder
    //   74: dup
    //   75: invokespecial 82	java/lang/StringBuilder:<init>	()V
    //   78: ldc 84
    //   80: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: aload 5
    //   85: invokevirtual 92	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   88: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   94: invokestatic 71	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   97: goto +459 -> 556
    //   100: aload 7
    //   102: invokeinterface 101 1 0
    //   107: lconst_0
    //   108: lcmp
    //   109: ifne +11 -> 120
    //   112: ldc 103
    //   114: invokestatic 71	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   117: goto +439 -> 556
    //   120: aload 7
    //   122: invokeinterface 107 1 0
    //   127: astore 8
    //   129: aload 8
    //   131: ifnull +425 -> 556
    //   134: aload 8
    //   136: invokeinterface 112 1 0
    //   141: ifnull +415 -> 556
    //   144: aload 8
    //   146: invokeinterface 112 1 0
    //   151: ldc 114
    //   153: invokevirtual 39	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   156: ifeq +400 -> 556
    //   159: aload 7
    //   161: invokeinterface 118 1 0
    //   166: invokestatic 122	com/millennialmedia/android/HttpGetRequest:convertStreamToString	(Ljava/io/InputStream;)Ljava/lang/String;
    //   169: astore 11
    //   171: new 124	com/millennialmedia/android/VideoAd
    //   174: dup
    //   175: aload 11
    //   177: invokespecial 126	com/millennialmedia/android/VideoAd:<init>	(Ljava/lang/String;)V
    //   180: astore 12
    //   182: invokestatic 131	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   185: ldc 133
    //   187: invokevirtual 137	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   190: ifeq +9 -> 199
    //   193: aload 12
    //   195: iconst_1
    //   196: putfield 140	com/millennialmedia/android/VideoAd:storedOnSdCard	Z
    //   199: aload 12
    //   201: ifnull +355 -> 556
    //   204: aload 12
    //   206: invokevirtual 144	com/millennialmedia/android/VideoAd:isValid	()Z
    //   209: ifeq +347 -> 556
    //   212: aload 12
    //   214: aload_0
    //   215: getfield 32	com/millennialmedia/android/PreCacheWorker:appContext	Landroid/content/Context;
    //   218: invokestatic 150	com/millennialmedia/android/MMAdViewController:initCachedAdDirectory	(Lcom/millennialmedia/android/VideoAd;Landroid/content/Context;)Ljava/io/File;
    //   221: astore 13
    //   223: new 81	java/lang/StringBuilder
    //   226: dup
    //   227: invokespecial 82	java/lang/StringBuilder:<init>	()V
    //   230: ldc 152
    //   232: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: aload 13
    //   237: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   240: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   243: invokestatic 158	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   246: aload 12
    //   248: getfield 161	com/millennialmedia/android/VideoAd:contentUrl	Ljava/lang/String;
    //   251: ldc 163
    //   253: aload 13
    //   255: invokestatic 167	com/millennialmedia/android/MMAdViewController:downloadComponent	(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    //   258: istore 14
    //   260: iload 14
    //   262: ifeq +56 -> 318
    //   265: iconst_0
    //   266: istore 19
    //   268: iload 19
    //   270: aload 12
    //   272: getfield 171	com/millennialmedia/android/VideoAd:buttons	Ljava/util/ArrayList;
    //   275: invokevirtual 177	java/util/ArrayList:size	()I
    //   278: if_icmpge +40 -> 318
    //   281: aload 12
    //   283: getfield 171	com/millennialmedia/android/VideoAd:buttons	Ljava/util/ArrayList;
    //   286: iload 19
    //   288: invokevirtual 180	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   291: checkcast 182	com/millennialmedia/android/VideoImage
    //   294: astore 20
    //   296: aload 20
    //   298: getfield 185	com/millennialmedia/android/VideoImage:imageUrl	Ljava/lang/String;
    //   301: aload 20
    //   303: invokevirtual 188	com/millennialmedia/android/VideoImage:getImageName	()Ljava/lang/String;
    //   306: aload 13
    //   308: invokestatic 167	com/millennialmedia/android/MMAdViewController:downloadComponent	(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    //   311: istore 14
    //   313: iload 14
    //   315: ifne +84 -> 399
    //   318: iload 14
    //   320: ifne +85 -> 405
    //   323: aload_0
    //   324: getfield 32	com/millennialmedia/android/PreCacheWorker:appContext	Landroid/content/Context;
    //   327: aload 12
    //   329: getfield 191	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
    //   332: invokestatic 195	com/millennialmedia/android/MMAdViewController:deleteAd	(Landroid/content/Context;Ljava/lang/String;)V
    //   335: aload 12
    //   337: getfield 198	com/millennialmedia/android/VideoAd:cacheFailed	[Ljava/lang/String;
    //   340: invokestatic 202	com/millennialmedia/android/HttpGetRequest:log	([Ljava/lang/String;)V
    //   343: new 81	java/lang/StringBuilder
    //   346: dup
    //   347: invokespecial 82	java/lang/StringBuilder:<init>	()V
    //   350: ldc 204
    //   352: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   355: iload 14
    //   357: invokevirtual 207	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   360: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   363: invokestatic 158	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   366: goto +190 -> 556
    //   369: astore 10
    //   371: aload 10
    //   373: invokevirtual 210	java/lang/IllegalStateException:printStackTrace	()V
    //   376: ldc 212
    //   378: invokestatic 71	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   381: goto +175 -> 556
    //   384: astore 9
    //   386: aload 9
    //   388: invokevirtual 213	java/io/IOException:printStackTrace	()V
    //   391: ldc 212
    //   393: invokestatic 71	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   396: goto +160 -> 556
    //   399: iinc 19 1
    //   402: goto -134 -> 268
    //   405: aconst_null
    //   406: astore 15
    //   408: ldc 215
    //   410: invokestatic 158	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   413: new 217	com/millennialmedia/android/AdDatabaseHelper
    //   416: dup
    //   417: aload_0
    //   418: getfield 32	com/millennialmedia/android/PreCacheWorker:appContext	Landroid/content/Context;
    //   421: invokespecial 220	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   424: astore 16
    //   426: aload 16
    //   428: aload 12
    //   430: invokevirtual 224	com/millennialmedia/android/AdDatabaseHelper:storeAd	(Lcom/millennialmedia/android/VideoAd;)V
    //   433: aload 12
    //   435: getfield 227	com/millennialmedia/android/VideoAd:acid	Ljava/lang/String;
    //   438: ifnull +26 -> 464
    //   441: aload 12
    //   443: getfield 227	com/millennialmedia/android/VideoAd:acid	Ljava/lang/String;
    //   446: invokevirtual 230	java/lang/String:length	()I
    //   449: ifle +15 -> 464
    //   452: aload_0
    //   453: getfield 32	com/millennialmedia/android/PreCacheWorker:appContext	Landroid/content/Context;
    //   456: aload 12
    //   458: getfield 227	com/millennialmedia/android/VideoAd:acid	Ljava/lang/String;
    //   461: invokestatic 233	com/millennialmedia/android/MMAdViewController:cachedVideoWasAdded	(Landroid/content/Context;Ljava/lang/String;)V
    //   464: aload 16
    //   466: ifnull +87 -> 553
    //   469: aload 16
    //   471: invokevirtual 236	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   474: aload 12
    //   476: getfield 239	com/millennialmedia/android/VideoAd:cacheComplete	[Ljava/lang/String;
    //   479: invokestatic 202	com/millennialmedia/android/HttpGetRequest:log	([Ljava/lang/String;)V
    //   482: goto -139 -> 343
    //   485: astore 17
    //   487: aload 17
    //   489: invokevirtual 240	android/database/sqlite/SQLiteException:printStackTrace	()V
    //   492: aload 15
    //   494: ifnull -20 -> 474
    //   497: aload 15
    //   499: invokevirtual 236	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   502: goto -28 -> 474
    //   505: astore 18
    //   507: aload 15
    //   509: ifnull +8 -> 517
    //   512: aload 15
    //   514: invokevirtual 236	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   517: aload 18
    //   519: athrow
    //   520: iconst_0
    //   521: putstatic 42	com/millennialmedia/android/PreCacheWorker:busy	Z
    //   524: return
    //   525: astore 18
    //   527: aload 16
    //   529: astore 15
    //   531: goto -24 -> 507
    //   534: astore 17
    //   536: aload 16
    //   538: astore 15
    //   540: goto -53 -> 487
    //   543: astore 9
    //   545: goto -159 -> 386
    //   548: astore 10
    //   550: goto -179 -> 371
    //   553: goto -79 -> 474
    //   556: iinc 3 1
    //   559: goto -549 -> 10
    //
    // Exception table:
    //   from	to	target	type
    //   20	56	69	java/lang/Exception
    //   159	182	369	java/lang/IllegalStateException
    //   159	182	384	java/io/IOException
    //   413	426	485	android/database/sqlite/SQLiteException
    //   413	426	505	finally
    //   487	492	505	finally
    //   426	464	525	finally
    //   426	464	534	android/database/sqlite/SQLiteException
    //   182	199	543	java/io/IOException
    //   182	199	548	java/lang/IllegalStateException
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.PreCacheWorker
 * JD-Core Version:    0.5.3
 */