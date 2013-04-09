package com.pad.android.xappad;

import android.os.AsyncTask;

final class c extends AsyncTask
{
  // ERROR //
  private java.lang.Void a()
  {
    // Byte code:
    //   0: ldc 21
    //   2: ldc 23
    //   4: invokestatic 29	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   7: aload_0
    //   8: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   11: invokestatic 35	com/pad/android/xappad/AdController:b	(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;
    //   14: ldc 37
    //   16: invokevirtual 43	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   19: astore 26
    //   21: aload 26
    //   23: astore_3
    //   24: aload_0
    //   25: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   28: invokestatic 46	com/pad/android/xappad/AdController:a	(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;
    //   31: ldc 48
    //   33: iconst_2
    //   34: invokevirtual 54	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   37: astore 4
    //   39: aload 4
    //   41: new 56	java/lang/StringBuilder
    //   44: dup
    //   45: ldc 58
    //   47: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   50: aload_0
    //   51: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   54: invokestatic 65	com/pad/android/xappad/AdController:c	(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;
    //   57: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: iconst_0
    //   64: invokeinterface 79 3 0
    //   69: istore 5
    //   71: iload 5
    //   73: iconst_5
    //   74: if_icmpge +518 -> 592
    //   77: ldc 21
    //   79: ldc 81
    //   81: invokestatic 29	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   84: new 83	android/content/Intent
    //   87: dup
    //   88: ldc 85
    //   90: new 56	java/lang/StringBuilder
    //   93: dup
    //   94: aload_0
    //   95: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   98: invokestatic 35	com/pad/android/xappad/AdController:b	(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;
    //   101: ldc 87
    //   103: invokevirtual 43	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   106: invokestatic 93	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   109: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   112: aload_0
    //   113: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   116: invokestatic 65	com/pad/android/xappad/AdController:c	(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;
    //   119: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   125: invokestatic 99	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   128: invokespecial 102	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   131: astore 6
    //   133: new 83	android/content/Intent
    //   136: dup
    //   137: invokespecial 103	android/content/Intent:<init>	()V
    //   140: astore 7
    //   142: aload 7
    //   144: ldc 105
    //   146: aload 6
    //   148: invokevirtual 109	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   151: pop
    //   152: aload 7
    //   154: ldc 111
    //   156: aload_3
    //   157: invokevirtual 114	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   160: pop
    //   161: new 116	java/net/URL
    //   164: dup
    //   165: aload_0
    //   166: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   169: invokestatic 35	com/pad/android/xappad/AdController:b	(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;
    //   172: ldc 118
    //   174: invokevirtual 43	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   177: invokespecial 119	java/net/URL:<init>	(Ljava/lang/String;)V
    //   180: invokevirtual 123	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   183: checkcast 125	java/net/HttpURLConnection
    //   186: invokevirtual 129	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   189: invokestatic 135	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   192: astore 22
    //   194: aload_0
    //   195: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   198: invokestatic 46	com/pad/android/xappad/AdController:a	(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;
    //   201: ldc 137
    //   203: invokevirtual 141	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   206: checkcast 143	android/view/WindowManager
    //   209: invokeinterface 147 1 0
    //   214: new 149	android/util/DisplayMetrics
    //   217: dup
    //   218: invokespecial 150	android/util/DisplayMetrics:<init>	()V
    //   221: invokevirtual 156	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   224: aload 22
    //   226: sipush 240
    //   229: invokevirtual 162	android/graphics/Bitmap:setDensity	(I)V
    //   232: aload 22
    //   234: bipush 72
    //   236: bipush 72
    //   238: iconst_1
    //   239: invokestatic 166	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   242: astore 23
    //   244: aload 23
    //   246: ifnull +202 -> 448
    //   249: ldc 21
    //   251: ldc 168
    //   253: invokestatic 29	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   256: aload 7
    //   258: ldc 170
    //   260: aload 23
    //   262: invokevirtual 109	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   265: pop
    //   266: aload 7
    //   268: ldc 172
    //   270: invokevirtual 176	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   273: pop
    //   274: aload_0
    //   275: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   278: invokestatic 46	com/pad/android/xappad/AdController:a	(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;
    //   281: aload 7
    //   283: invokevirtual 180	android/content/Context:sendBroadcast	(Landroid/content/Intent;)V
    //   286: aload 4
    //   288: invokeinterface 184 1 0
    //   293: astore 15
    //   295: aload 15
    //   297: new 56	java/lang/StringBuilder
    //   300: dup
    //   301: ldc 58
    //   303: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   306: aload_0
    //   307: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   310: invokestatic 65	com/pad/android/xappad/AdController:c	(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;
    //   313: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   319: iload 5
    //   321: iconst_1
    //   322: iadd
    //   323: invokeinterface 190 3 0
    //   328: pop
    //   329: aload 15
    //   331: invokeinterface 194 1 0
    //   336: pop
    //   337: new 196	android/content/ContentValues
    //   340: dup
    //   341: invokespecial 197	android/content/ContentValues:<init>	()V
    //   344: astore 18
    //   346: aload 18
    //   348: ldc 199
    //   350: aload_3
    //   351: invokevirtual 202	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   354: aload 18
    //   356: ldc 204
    //   358: new 56	java/lang/StringBuilder
    //   361: dup
    //   362: aload_0
    //   363: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   366: invokestatic 35	com/pad/android/xappad/AdController:b	(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;
    //   369: ldc 87
    //   371: invokevirtual 43	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   374: invokestatic 93	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   377: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   380: aload_0
    //   381: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   384: invokestatic 65	com/pad/android/xappad/AdController:c	(Lcom/pad/android/xappad/AdController;)Ljava/lang/String;
    //   387: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   390: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   393: invokevirtual 202	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   396: aload 18
    //   398: ldc 206
    //   400: iconst_1
    //   401: invokestatic 211	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   404: invokevirtual 214	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   407: aload_0
    //   408: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   411: invokestatic 46	com/pad/android/xappad/AdController:a	(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;
    //   414: invokevirtual 218	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   417: getstatic 224	android/provider/Browser:BOOKMARKS_URI	Landroid/net/Uri;
    //   420: aload 18
    //   422: invokevirtual 230	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   425: pop
    //   426: ldc 21
    //   428: ldc 232
    //   430: invokestatic 235	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   433: aconst_null
    //   434: areturn
    //   435: astore_2
    //   436: ldc 21
    //   438: aload_2
    //   439: invokestatic 239	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   442: ldc 241
    //   444: astore_3
    //   445: goto -421 -> 24
    //   448: ldc 21
    //   450: ldc 243
    //   452: invokestatic 29	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   455: aload 7
    //   457: ldc 245
    //   459: aload_0
    //   460: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   463: invokestatic 46	com/pad/android/xappad/AdController:a	(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;
    //   466: ldc 246
    //   468: invokestatic 252	android/content/Intent$ShortcutIconResource:fromContext	(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;
    //   471: invokevirtual 109	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   474: pop
    //   475: goto -209 -> 266
    //   478: astore 10
    //   480: aload_0
    //   481: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   484: invokestatic 35	com/pad/android/xappad/AdController:b	(Lcom/pad/android/xappad/AdController;)Lorg/json/JSONObject;
    //   487: ldc 118
    //   489: invokevirtual 43	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   492: astore 21
    //   494: aload 21
    //   496: astore 12
    //   498: ldc 21
    //   500: new 56	java/lang/StringBuilder
    //   503: dup
    //   504: ldc 254
    //   506: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   509: aload 12
    //   511: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   514: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   517: invokestatic 29	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   520: ldc 21
    //   522: aload 10
    //   524: invokestatic 239	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   527: aload 7
    //   529: ldc 245
    //   531: aload_0
    //   532: getfield 10	com/pad/android/xappad/c:a	Lcom/pad/android/xappad/AdController;
    //   535: invokestatic 46	com/pad/android/xappad/AdController:a	(Lcom/pad/android/xappad/AdController;)Landroid/content/Context;
    //   538: ldc 246
    //   540: invokestatic 252	android/content/Intent$ShortcutIconResource:fromContext	(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;
    //   543: invokevirtual 109	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   546: pop
    //   547: goto -281 -> 266
    //   550: astore_1
    //   551: ldc 21
    //   553: aload_1
    //   554: invokestatic 239	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   557: ldc 21
    //   559: new 56	java/lang/StringBuilder
    //   562: dup
    //   563: ldc_w 256
    //   566: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   569: aload_1
    //   570: invokevirtual 259	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   573: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   576: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   579: invokestatic 262	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   582: aconst_null
    //   583: areturn
    //   584: astore 11
    //   586: aconst_null
    //   587: astore 12
    //   589: goto -91 -> 498
    //   592: ldc 21
    //   594: new 56	java/lang/StringBuilder
    //   597: dup
    //   598: ldc_w 264
    //   601: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   604: iload 5
    //   606: invokevirtual 267	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   609: ldc_w 269
    //   612: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   615: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   618: invokestatic 235	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   621: goto -284 -> 337
    //   624: astore 19
    //   626: ldc 21
    //   628: ldc_w 271
    //   631: invokestatic 262	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   634: aconst_null
    //   635: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   7	21	435	java/lang/Exception
    //   161	244	478	java/lang/Exception
    //   249	266	478	java/lang/Exception
    //   448	475	478	java/lang/Exception
    //   0	7	550	java/lang/Exception
    //   24	71	550	java/lang/Exception
    //   77	161	550	java/lang/Exception
    //   266	337	550	java/lang/Exception
    //   337	407	550	java/lang/Exception
    //   436	442	550	java/lang/Exception
    //   498	547	550	java/lang/Exception
    //   592	621	550	java/lang/Exception
    //   626	634	550	java/lang/Exception
    //   480	494	584	java/lang/Exception
    //   407	433	624	java/lang/Exception
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.xappad.c
 * JD-Core Version:    0.5.3
 */