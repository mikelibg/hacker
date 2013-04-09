package com.eMVeQv.NFmMPJ121641;

import android.content.Context;
import org.json.JSONObject;

class FormatAds
  implements IConstants
{
  private String adType;
  private Context context;
  private long nextMessageCheckValue;

  public FormatAds(Context paramContext)
  {
    this.context = paramContext;
  }

  // ERROR //
  private void getAds(JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 25
    //   3: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   6: ifeq +332 -> 338
    //   9: ldc 33
    //   11: astore 8
    //   13: aload_1
    //   14: ldc 35
    //   16: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   19: ifeq +330 -> 349
    //   22: ldc 37
    //   24: astore 9
    //   26: aload_1
    //   27: ldc 39
    //   29: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   32: ifeq +328 -> 360
    //   35: ldc 41
    //   37: astore 10
    //   39: aload_1
    //   40: ldc 43
    //   42: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   45: ifeq +326 -> 371
    //   48: ldc 41
    //   50: astore 11
    //   52: aload 8
    //   54: invokestatic 49	com/eMVeQv/NFmMPJ121641/Util:setNotification_title	(Ljava/lang/String;)V
    //   57: aload 9
    //   59: invokestatic 52	com/eMVeQv/NFmMPJ121641/Util:setNotification_text	(Ljava/lang/String;)V
    //   62: aload 11
    //   64: invokestatic 55	com/eMVeQv/NFmMPJ121641/Util:setCampId	(Ljava/lang/String;)V
    //   67: aload 10
    //   69: invokestatic 58	com/eMVeQv/NFmMPJ121641/Util:setCreativeId	(Ljava/lang/String;)V
    //   72: aload_0
    //   73: getfield 60	com/eMVeQv/NFmMPJ121641/FormatAds:adType	Ljava/lang/String;
    //   76: ldc 62
    //   78: invokevirtual 68	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   81: ifne +15 -> 96
    //   84: aload_0
    //   85: getfield 60	com/eMVeQv/NFmMPJ121641/FormatAds:adType	Ljava/lang/String;
    //   88: ldc 70
    //   90: invokevirtual 68	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   93: ifeq +311 -> 404
    //   96: aload_1
    //   97: ldc 72
    //   99: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   102: ifeq +280 -> 382
    //   105: ldc 74
    //   107: astore 12
    //   109: aload_1
    //   110: ldc 76
    //   112: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   115: ifeq +278 -> 393
    //   118: ldc 78
    //   120: astore 13
    //   122: aload 12
    //   124: invokestatic 81	com/eMVeQv/NFmMPJ121641/Util:setNotificationUrl	(Ljava/lang/String;)V
    //   127: aload 13
    //   129: invokestatic 84	com/eMVeQv/NFmMPJ121641/Util:setHeader	(Ljava/lang/String;)V
    //   132: aload_1
    //   133: ldc 86
    //   135: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   138: ifeq +577 -> 715
    //   141: ldc 88
    //   143: astore 14
    //   145: aload_1
    //   146: ldc 90
    //   148: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   151: ifeq +575 -> 726
    //   154: ldc 92
    //   156: invokestatic 98	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   159: lstore 15
    //   161: lload 15
    //   163: invokestatic 102	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   166: astore 17
    //   168: aload_1
    //   169: ldc 104
    //   171: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   174: ifeq +563 -> 737
    //   177: ldc 106
    //   179: astore 18
    //   181: aload_1
    //   182: ldc 108
    //   184: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   187: ifeq +561 -> 748
    //   190: ldc 110
    //   192: astore 19
    //   194: aload_1
    //   195: ldc 112
    //   197: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   200: ifeq +559 -> 759
    //   203: ldc 110
    //   205: astore 20
    //   207: aload 14
    //   209: invokestatic 115	com/eMVeQv/NFmMPJ121641/Util:setDelivery_time	(Ljava/lang/String;)V
    //   212: aload 17
    //   214: invokevirtual 119	java/lang/Long:longValue	()J
    //   217: invokestatic 123	com/eMVeQv/NFmMPJ121641/Util:setExpiry_time	(J)V
    //   220: aload 18
    //   222: invokestatic 126	com/eMVeQv/NFmMPJ121641/Util:setAdImageUrl	(Ljava/lang/String;)V
    //   225: aload 19
    //   227: invokestatic 129	com/eMVeQv/NFmMPJ121641/Util:setIP1	(Ljava/lang/String;)V
    //   230: aload 20
    //   232: invokestatic 132	com/eMVeQv/NFmMPJ121641/Util:setIP2	(Ljava/lang/String;)V
    //   235: new 134	com/eMVeQv/NFmMPJ121641/SetPreferences
    //   238: dup
    //   239: aload_0
    //   240: getfield 19	com/eMVeQv/NFmMPJ121641/FormatAds:context	Landroid/content/Context;
    //   243: invokespecial 136	com/eMVeQv/NFmMPJ121641/SetPreferences:<init>	(Landroid/content/Context;)V
    //   246: invokevirtual 140	com/eMVeQv/NFmMPJ121641/SetPreferences:storeIP	()Z
    //   249: pop
    //   250: invokestatic 144	com/eMVeQv/NFmMPJ121641/Util:getDelivery_time	()Ljava/lang/String;
    //   253: aconst_null
    //   254: invokevirtual 68	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   257: ifne +48 -> 305
    //   260: invokestatic 144	com/eMVeQv/NFmMPJ121641/Util:getDelivery_time	()Ljava/lang/String;
    //   263: ldc 88
    //   265: invokevirtual 68	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   268: ifne +37 -> 305
    //   271: new 146	java/text/SimpleDateFormat
    //   274: dup
    //   275: ldc 148
    //   277: invokespecial 150	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   280: astore 25
    //   282: aload 25
    //   284: ldc 152
    //   286: invokestatic 158	java/util/TimeZone:getTimeZone	(Ljava/lang/String;)Ljava/util/TimeZone;
    //   289: invokevirtual 162	java/text/SimpleDateFormat:setTimeZone	(Ljava/util/TimeZone;)V
    //   292: aload 25
    //   294: new 164	java/util/Date
    //   297: dup
    //   298: invokespecial 165	java/util/Date:<init>	()V
    //   301: invokevirtual 169	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   304: pop
    //   305: new 171	com/eMVeQv/NFmMPJ121641/DeliverNotification
    //   308: dup
    //   309: aload_0
    //   310: getfield 19	com/eMVeQv/NFmMPJ121641/FormatAds:context	Landroid/content/Context;
    //   313: invokespecial 172	com/eMVeQv/NFmMPJ121641/DeliverNotification:<init>	(Landroid/content/Context;)V
    //   316: pop
    //   317: aload_0
    //   318: getfield 19	com/eMVeQv/NFmMPJ121641/FormatAds:context	Landroid/content/Context;
    //   321: aload_0
    //   322: getfield 174	com/eMVeQv/NFmMPJ121641/FormatAds:nextMessageCheckValue	J
    //   325: invokestatic 178	com/eMVeQv/NFmMPJ121641/SetPreferences:setSDKStartTime	(Landroid/content/Context;J)Z
    //   328: pop
    //   329: aload_0
    //   330: getfield 19	com/eMVeQv/NFmMPJ121641/FormatAds:context	Landroid/content/Context;
    //   333: iconst_1
    //   334: invokestatic 184	com/eMVeQv/NFmMPJ121641/PushNotification:reStartSDK	(Landroid/content/Context;Z)V
    //   337: return
    //   338: aload_1
    //   339: ldc 25
    //   341: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   344: astore 8
    //   346: goto -333 -> 13
    //   349: aload_1
    //   350: ldc 35
    //   352: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   355: astore 9
    //   357: goto -331 -> 26
    //   360: aload_1
    //   361: ldc 39
    //   363: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   366: astore 10
    //   368: goto -329 -> 39
    //   371: aload_1
    //   372: ldc 43
    //   374: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   377: astore 11
    //   379: goto -327 -> 52
    //   382: aload_1
    //   383: ldc 72
    //   385: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   388: astore 12
    //   390: goto -281 -> 109
    //   393: aload_1
    //   394: ldc 76
    //   396: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   399: astore 13
    //   401: goto -279 -> 122
    //   404: aload_0
    //   405: getfield 60	com/eMVeQv/NFmMPJ121641/FormatAds:adType	Ljava/lang/String;
    //   408: ldc 190
    //   410: invokevirtual 68	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   413: ifne +15 -> 428
    //   416: aload_0
    //   417: getfield 60	com/eMVeQv/NFmMPJ121641/FormatAds:adType	Ljava/lang/String;
    //   420: ldc 192
    //   422: invokevirtual 68	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   425: ifeq +126 -> 551
    //   428: aload_1
    //   429: ldc 72
    //   431: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   434: ifeq +95 -> 529
    //   437: ldc 74
    //   439: astore 28
    //   441: aload_1
    //   442: ldc 76
    //   444: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   447: ifeq +93 -> 540
    //   450: ldc 78
    //   452: astore 29
    //   454: aload 28
    //   456: invokestatic 81	com/eMVeQv/NFmMPJ121641/Util:setNotificationUrl	(Ljava/lang/String;)V
    //   459: aload 29
    //   461: invokestatic 84	com/eMVeQv/NFmMPJ121641/Util:setHeader	(Ljava/lang/String;)V
    //   464: goto -332 -> 132
    //   467: astore 5
    //   469: new 194	java/lang/StringBuilder
    //   472: dup
    //   473: invokespecial 195	java/lang/StringBuilder:<init>	()V
    //   476: ldc 197
    //   478: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   481: aload 5
    //   483: invokevirtual 204	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   486: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   489: invokevirtual 207	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   492: invokestatic 210	com/eMVeQv/NFmMPJ121641/Util:printLog	(Ljava/lang/String;)V
    //   495: ldc 212
    //   497: invokestatic 215	com/eMVeQv/NFmMPJ121641/Util:printDebugLog	(Ljava/lang/String;)V
    //   500: aload_0
    //   501: getfield 19	com/eMVeQv/NFmMPJ121641/FormatAds:context	Landroid/content/Context;
    //   504: aload_0
    //   505: getfield 174	com/eMVeQv/NFmMPJ121641/FormatAds:nextMessageCheckValue	J
    //   508: invokestatic 178	com/eMVeQv/NFmMPJ121641/SetPreferences:setSDKStartTime	(Landroid/content/Context;J)Z
    //   511: pop
    //   512: aload_0
    //   513: getfield 19	com/eMVeQv/NFmMPJ121641/FormatAds:context	Landroid/content/Context;
    //   516: iconst_1
    //   517: invokestatic 184	com/eMVeQv/NFmMPJ121641/PushNotification:reStartSDK	(Landroid/content/Context;Z)V
    //   520: return
    //   521: astore 6
    //   523: aload 6
    //   525: invokevirtual 218	java/lang/Exception:printStackTrace	()V
    //   528: return
    //   529: aload_1
    //   530: ldc 72
    //   532: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   535: astore 28
    //   537: goto -96 -> 441
    //   540: aload_1
    //   541: ldc 76
    //   543: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   546: astore 29
    //   548: goto -94 -> 454
    //   551: aload_0
    //   552: getfield 60	com/eMVeQv/NFmMPJ121641/FormatAds:adType	Ljava/lang/String;
    //   555: ldc 220
    //   557: invokevirtual 68	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   560: ifne +15 -> 575
    //   563: aload_0
    //   564: getfield 60	com/eMVeQv/NFmMPJ121641/FormatAds:adType	Ljava/lang/String;
    //   567: ldc 222
    //   569: invokevirtual 68	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   572: ifeq +87 -> 659
    //   575: aload_1
    //   576: ldc 224
    //   578: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   581: ifeq +56 -> 637
    //   584: ldc 88
    //   586: astore 30
    //   588: aload_1
    //   589: ldc 226
    //   591: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   594: ifeq +54 -> 648
    //   597: ldc 41
    //   599: astore 31
    //   601: aload 30
    //   603: invokestatic 229	com/eMVeQv/NFmMPJ121641/Util:setPhoneNumber	(Ljava/lang/String;)V
    //   606: aload 31
    //   608: invokestatic 232	com/eMVeQv/NFmMPJ121641/Util:setSms	(Ljava/lang/String;)V
    //   611: goto -479 -> 132
    //   614: astore_2
    //   615: aload_0
    //   616: getfield 19	com/eMVeQv/NFmMPJ121641/FormatAds:context	Landroid/content/Context;
    //   619: aload_0
    //   620: getfield 174	com/eMVeQv/NFmMPJ121641/FormatAds:nextMessageCheckValue	J
    //   623: invokestatic 178	com/eMVeQv/NFmMPJ121641/SetPreferences:setSDKStartTime	(Landroid/content/Context;J)Z
    //   626: pop
    //   627: aload_0
    //   628: getfield 19	com/eMVeQv/NFmMPJ121641/FormatAds:context	Landroid/content/Context;
    //   631: iconst_1
    //   632: invokestatic 184	com/eMVeQv/NFmMPJ121641/PushNotification:reStartSDK	(Landroid/content/Context;Z)V
    //   635: aload_2
    //   636: athrow
    //   637: aload_1
    //   638: ldc 224
    //   640: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   643: astore 30
    //   645: goto -57 -> 588
    //   648: aload_1
    //   649: ldc 226
    //   651: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   654: astore 31
    //   656: goto -55 -> 601
    //   659: aload_0
    //   660: getfield 60	com/eMVeQv/NFmMPJ121641/FormatAds:adType	Ljava/lang/String;
    //   663: ldc 234
    //   665: invokevirtual 68	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   668: ifne +15 -> 683
    //   671: aload_0
    //   672: getfield 60	com/eMVeQv/NFmMPJ121641/FormatAds:adType	Ljava/lang/String;
    //   675: ldc 236
    //   677: invokevirtual 68	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   680: ifeq -548 -> 132
    //   683: aload_1
    //   684: ldc 224
    //   686: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   689: ifeq +15 -> 704
    //   692: ldc 88
    //   694: astore 32
    //   696: aload 32
    //   698: invokestatic 229	com/eMVeQv/NFmMPJ121641/Util:setPhoneNumber	(Ljava/lang/String;)V
    //   701: goto -569 -> 132
    //   704: aload_1
    //   705: ldc 224
    //   707: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   710: astore 32
    //   712: goto -16 -> 696
    //   715: aload_1
    //   716: ldc 86
    //   718: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   721: astore 14
    //   723: goto -578 -> 145
    //   726: aload_1
    //   727: ldc 90
    //   729: invokevirtual 239	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   732: lstore 15
    //   734: goto -573 -> 161
    //   737: aload_1
    //   738: ldc 104
    //   740: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   743: astore 18
    //   745: goto -564 -> 181
    //   748: aload_1
    //   749: ldc 108
    //   751: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   754: astore 19
    //   756: goto -562 -> 194
    //   759: aload_1
    //   760: ldc 112
    //   762: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   765: astore 27
    //   767: aload 27
    //   769: astore 20
    //   771: goto -564 -> 207
    //   774: astore 23
    //   776: aload 23
    //   778: invokevirtual 218	java/lang/Exception:printStackTrace	()V
    //   781: return
    //   782: astore_3
    //   783: aload_3
    //   784: invokevirtual 218	java/lang/Exception:printStackTrace	()V
    //   787: goto -152 -> 635
    //
    // Exception table:
    //   from	to	target	type
    //   0	9	467	java/lang/Exception
    //   13	22	467	java/lang/Exception
    //   26	35	467	java/lang/Exception
    //   39	48	467	java/lang/Exception
    //   52	96	467	java/lang/Exception
    //   96	105	467	java/lang/Exception
    //   109	118	467	java/lang/Exception
    //   122	132	467	java/lang/Exception
    //   132	141	467	java/lang/Exception
    //   145	161	467	java/lang/Exception
    //   161	177	467	java/lang/Exception
    //   181	190	467	java/lang/Exception
    //   194	203	467	java/lang/Exception
    //   207	305	467	java/lang/Exception
    //   305	317	467	java/lang/Exception
    //   338	346	467	java/lang/Exception
    //   349	357	467	java/lang/Exception
    //   360	368	467	java/lang/Exception
    //   371	379	467	java/lang/Exception
    //   382	390	467	java/lang/Exception
    //   393	401	467	java/lang/Exception
    //   404	428	467	java/lang/Exception
    //   428	437	467	java/lang/Exception
    //   441	450	467	java/lang/Exception
    //   454	464	467	java/lang/Exception
    //   529	537	467	java/lang/Exception
    //   540	548	467	java/lang/Exception
    //   551	575	467	java/lang/Exception
    //   575	584	467	java/lang/Exception
    //   588	597	467	java/lang/Exception
    //   601	611	467	java/lang/Exception
    //   637	645	467	java/lang/Exception
    //   648	656	467	java/lang/Exception
    //   659	683	467	java/lang/Exception
    //   683	692	467	java/lang/Exception
    //   696	701	467	java/lang/Exception
    //   704	712	467	java/lang/Exception
    //   715	723	467	java/lang/Exception
    //   726	734	467	java/lang/Exception
    //   737	745	467	java/lang/Exception
    //   748	756	467	java/lang/Exception
    //   759	767	467	java/lang/Exception
    //   500	520	521	java/lang/Exception
    //   0	9	614	finally
    //   13	22	614	finally
    //   26	35	614	finally
    //   39	48	614	finally
    //   52	96	614	finally
    //   96	105	614	finally
    //   109	118	614	finally
    //   122	132	614	finally
    //   132	141	614	finally
    //   145	161	614	finally
    //   161	177	614	finally
    //   181	190	614	finally
    //   194	203	614	finally
    //   207	305	614	finally
    //   305	317	614	finally
    //   338	346	614	finally
    //   349	357	614	finally
    //   360	368	614	finally
    //   371	379	614	finally
    //   382	390	614	finally
    //   393	401	614	finally
    //   404	428	614	finally
    //   428	437	614	finally
    //   441	450	614	finally
    //   454	464	614	finally
    //   469	500	614	finally
    //   529	537	614	finally
    //   540	548	614	finally
    //   551	575	614	finally
    //   575	584	614	finally
    //   588	597	614	finally
    //   601	611	614	finally
    //   637	645	614	finally
    //   648	656	614	finally
    //   659	683	614	finally
    //   683	692	614	finally
    //   696	701	614	finally
    //   704	712	614	finally
    //   715	723	614	finally
    //   726	734	614	finally
    //   737	745	614	finally
    //   748	756	614	finally
    //   759	767	614	finally
    //   317	337	774	java/lang/Exception
    //   615	635	782	java/lang/Exception
  }

  private long getNextMessageCheckTime(JSONObject paramJSONObject)
  {
    Long.valueOf(1000L * Long.parseLong("300"));
    try
    {
      Long localLong = Long.valueOf(1000L * Long.parseLong(paramJSONObject.get("nextmessagecheck").toString()));
      return localLong.longValue();
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 14400000L;
  }

  // ERROR //
  void parseJson(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: ldc2_w 253
    //   6: putfield 174	com/eMVeQv/NFmMPJ121641/FormatAds:nextMessageCheckValue	J
    //   9: aload_1
    //   10: ldc 247
    //   12: invokevirtual 261	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   15: istore_3
    //   16: iload_3
    //   17: ifeq +204 -> 221
    //   20: new 27	org/json/JSONObject
    //   23: dup
    //   24: aload_1
    //   25: invokespecial 262	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   28: astore 4
    //   30: aload_0
    //   31: aload_0
    //   32: aload 4
    //   34: invokespecial 264	com/eMVeQv/NFmMPJ121641/FormatAds:getNextMessageCheckTime	(Lorg/json/JSONObject;)J
    //   37: putfield 174	com/eMVeQv/NFmMPJ121641/FormatAds:nextMessageCheckValue	J
    //   40: aload 4
    //   42: ldc_w 266
    //   45: invokevirtual 31	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   48: ifeq +41 -> 89
    //   51: ldc 110
    //   53: astore 7
    //   55: aload_0
    //   56: aload 7
    //   58: putfield 60	com/eMVeQv/NFmMPJ121641/FormatAds:adType	Ljava/lang/String;
    //   61: aload_0
    //   62: getfield 60	com/eMVeQv/NFmMPJ121641/FormatAds:adType	Ljava/lang/String;
    //   65: ldc 110
    //   67: invokevirtual 68	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   70: ifne +32 -> 102
    //   73: aload_0
    //   74: getfield 60	com/eMVeQv/NFmMPJ121641/FormatAds:adType	Ljava/lang/String;
    //   77: invokestatic 269	com/eMVeQv/NFmMPJ121641/Util:setAdType	(Ljava/lang/String;)V
    //   80: aload_0
    //   81: aload 4
    //   83: invokespecial 271	com/eMVeQv/NFmMPJ121641/FormatAds:getAds	(Lorg/json/JSONObject;)V
    //   86: aload_0
    //   87: monitorexit
    //   88: return
    //   89: aload 4
    //   91: ldc_w 266
    //   94: invokevirtual 188	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   97: astore 7
    //   99: goto -44 -> 55
    //   102: aload_0
    //   103: getfield 19	com/eMVeQv/NFmMPJ121641/FormatAds:context	Landroid/content/Context;
    //   106: aload_0
    //   107: getfield 174	com/eMVeQv/NFmMPJ121641/FormatAds:nextMessageCheckValue	J
    //   110: invokestatic 178	com/eMVeQv/NFmMPJ121641/SetPreferences:setSDKStartTime	(Landroid/content/Context;J)Z
    //   113: pop
    //   114: aload_0
    //   115: getfield 19	com/eMVeQv/NFmMPJ121641/FormatAds:context	Landroid/content/Context;
    //   118: iconst_1
    //   119: invokestatic 184	com/eMVeQv/NFmMPJ121641/PushNotification:reStartSDK	(Landroid/content/Context;Z)V
    //   122: goto -36 -> 86
    //   125: astore 6
    //   127: new 194	java/lang/StringBuilder
    //   130: dup
    //   131: invokespecial 195	java/lang/StringBuilder:<init>	()V
    //   134: ldc_w 273
    //   137: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: aload 6
    //   142: invokevirtual 274	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   145: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: invokevirtual 207	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   151: invokestatic 210	com/eMVeQv/NFmMPJ121641/Util:printLog	(Ljava/lang/String;)V
    //   154: new 194	java/lang/StringBuilder
    //   157: dup
    //   158: invokespecial 195	java/lang/StringBuilder:<init>	()V
    //   161: ldc_w 276
    //   164: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: aload 6
    //   169: invokevirtual 277	org/json/JSONException:toString	()Ljava/lang/String;
    //   172: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: invokevirtual 207	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   178: invokestatic 215	com/eMVeQv/NFmMPJ121641/Util:printDebugLog	(Ljava/lang/String;)V
    //   181: goto -95 -> 86
    //   184: astore_2
    //   185: aload_0
    //   186: monitorexit
    //   187: aload_2
    //   188: athrow
    //   189: astore 5
    //   191: new 194	java/lang/StringBuilder
    //   194: dup
    //   195: invokespecial 195	java/lang/StringBuilder:<init>	()V
    //   198: ldc_w 279
    //   201: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: aload 5
    //   206: invokevirtual 204	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   209: invokevirtual 201	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 207	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: invokestatic 210	com/eMVeQv/NFmMPJ121641/Util:printLog	(Ljava/lang/String;)V
    //   218: goto -132 -> 86
    //   221: ldc_w 281
    //   224: invokestatic 215	com/eMVeQv/NFmMPJ121641/Util:printDebugLog	(Ljava/lang/String;)V
    //   227: goto -141 -> 86
    //   230: astore 5
    //   232: goto -41 -> 191
    //   235: astore 6
    //   237: goto -110 -> 127
    //
    // Exception table:
    //   from	to	target	type
    //   30	51	125	org/json/JSONException
    //   55	86	125	org/json/JSONException
    //   89	99	125	org/json/JSONException
    //   102	122	125	org/json/JSONException
    //   2	16	184	finally
    //   20	30	184	finally
    //   30	51	184	finally
    //   55	86	184	finally
    //   89	99	184	finally
    //   102	122	184	finally
    //   127	181	184	finally
    //   191	218	184	finally
    //   221	227	184	finally
    //   20	30	189	java/lang/Exception
    //   30	51	230	java/lang/Exception
    //   55	86	230	java/lang/Exception
    //   89	99	230	java/lang/Exception
    //   102	122	230	java/lang/Exception
    //   20	30	235	org/json/JSONException
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.FormatAds
 * JD-Core Version:    0.5.3
 */