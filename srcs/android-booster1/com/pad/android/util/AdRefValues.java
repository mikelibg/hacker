package com.pad.android.util;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

public class AdRefValues
{
  private static boolean a = true;

  private static String a()
  {
    try
    {
      Enumeration localEnumeration1 = NetworkInterface.getNetworkInterfaces();
      if (!(localEnumeration1.hasMoreElements()))
        break label74;
      Enumeration localEnumeration2 = ((NetworkInterface)localEnumeration1.nextElement()).getInetAddresses();
      InetAddress localInetAddress;
      do
      {
        if (localEnumeration2.hasMoreElements());
        localInetAddress = (InetAddress)localEnumeration2.nextElement();
      }
      while (localInetAddress.isLoopbackAddress());
      String str = localInetAddress.getHostAddress().toString();
      return str;
    }
    catch (SocketException localSocketException)
    {
      AdLog.printStackTrace("LBAdConroller", localSocketException);
    }
    label74: return null;
  }

  // ERROR //
  public static String adRefValues(android.content.Context paramContext, android.telephony.TelephonyManager paramTelephonyManager, String paramString, java.util.List paramList, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: new 62	java/util/ArrayList
    //   3: dup
    //   4: iconst_2
    //   5: invokespecial 65	java/util/ArrayList:<init>	(I)V
    //   8: astore 7
    //   10: aload_2
    //   11: ifnull +21 -> 32
    //   14: aload 7
    //   16: new 67	org/apache/http/message/BasicNameValuePair
    //   19: dup
    //   20: ldc 69
    //   22: aload_2
    //   23: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   26: invokeinterface 78 2 0
    //   31: pop
    //   32: aload_3
    //   33: ifnull +62 -> 95
    //   36: ldc 80
    //   38: astore 54
    //   40: iconst_0
    //   41: istore 55
    //   43: iload 55
    //   45: aload_3
    //   46: invokeinterface 84 1 0
    //   51: if_icmplt +803 -> 854
    //   54: aload 7
    //   56: new 67	org/apache/http/message/BasicNameValuePair
    //   59: dup
    //   60: ldc 86
    //   62: aload 54
    //   64: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   67: invokeinterface 78 2 0
    //   72: pop
    //   73: ldc 50
    //   75: new 88	java/lang/StringBuilder
    //   78: dup
    //   79: ldc 90
    //   81: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   84: aload 54
    //   86: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   92: invokestatic 101	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   95: aload_0
    //   96: invokevirtual 107	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   99: ldc 109
    //   101: invokestatic 115	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   104: astore 9
    //   106: invokestatic 121	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   109: astore 10
    //   111: aload 7
    //   113: new 67	org/apache/http/message/BasicNameValuePair
    //   116: dup
    //   117: ldc 123
    //   119: aload 9
    //   121: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   124: invokeinterface 78 2 0
    //   129: pop
    //   130: aload 7
    //   132: new 67	org/apache/http/message/BasicNameValuePair
    //   135: dup
    //   136: ldc 125
    //   138: getstatic 131	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   141: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   144: invokeinterface 78 2 0
    //   149: pop
    //   150: aload 7
    //   152: new 67	org/apache/http/message/BasicNameValuePair
    //   155: dup
    //   156: ldc 133
    //   158: ldc 135
    //   160: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   163: invokeinterface 78 2 0
    //   168: pop
    //   169: aload 7
    //   171: new 67	org/apache/http/message/BasicNameValuePair
    //   174: dup
    //   175: ldc 137
    //   177: invokestatic 139	com/pad/android/util/AdRefValues:a	()Ljava/lang/String;
    //   180: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   183: invokeinterface 78 2 0
    //   188: pop
    //   189: aload 7
    //   191: new 67	org/apache/http/message/BasicNameValuePair
    //   194: dup
    //   195: ldc 141
    //   197: new 88	java/lang/StringBuilder
    //   200: dup
    //   201: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   204: aload 10
    //   206: bipush 15
    //   208: invokevirtual 146	java/util/Calendar:get	(I)I
    //   211: invokevirtual 149	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   214: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   217: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   220: invokeinterface 78 2 0
    //   225: pop
    //   226: aload 7
    //   228: new 67	org/apache/http/message/BasicNameValuePair
    //   231: dup
    //   232: ldc 151
    //   234: new 88	java/lang/StringBuilder
    //   237: dup
    //   238: invokespecial 142	java/lang/StringBuilder:<init>	()V
    //   241: aload 10
    //   243: invokevirtual 155	java/util/Calendar:getTimeInMillis	()J
    //   246: ldc2_w 156
    //   249: ldiv
    //   250: l2i
    //   251: invokevirtual 149	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   254: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   257: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   260: invokeinterface 78 2 0
    //   265: pop
    //   266: aload 7
    //   268: new 67	org/apache/http/message/BasicNameValuePair
    //   271: dup
    //   272: ldc 159
    //   274: iload 5
    //   276: invokestatic 163	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   279: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   282: invokeinterface 78 2 0
    //   287: pop
    //   288: aload 7
    //   290: new 67	org/apache/http/message/BasicNameValuePair
    //   293: dup
    //   294: ldc 165
    //   296: iload 6
    //   298: invokestatic 163	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   301: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   304: invokeinterface 78 2 0
    //   309: pop
    //   310: iload 4
    //   312: ifeq +73 -> 385
    //   315: aload_0
    //   316: ldc 167
    //   318: invokevirtual 171	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   321: checkcast 173	android/location/LocationManager
    //   324: ldc 175
    //   326: invokevirtual 179	android/location/LocationManager:getLastKnownLocation	(Ljava/lang/String;)Landroid/location/Location;
    //   329: astore 50
    //   331: aload 50
    //   333: invokevirtual 185	android/location/Location:getLongitude	()D
    //   336: invokestatic 188	java/lang/String:valueOf	(D)Ljava/lang/String;
    //   339: astore 51
    //   341: aload 7
    //   343: new 67	org/apache/http/message/BasicNameValuePair
    //   346: dup
    //   347: ldc 190
    //   349: aload 50
    //   351: invokevirtual 193	android/location/Location:getLatitude	()D
    //   354: invokestatic 188	java/lang/String:valueOf	(D)Ljava/lang/String;
    //   357: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   360: invokeinterface 78 2 0
    //   365: pop
    //   366: aload 7
    //   368: new 67	org/apache/http/message/BasicNameValuePair
    //   371: dup
    //   372: ldc 195
    //   374: aload 51
    //   376: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   379: invokeinterface 78 2 0
    //   384: pop
    //   385: getstatic 10	com/pad/android/util/AdRefValues:a	Z
    //   388: istore 19
    //   390: iload 19
    //   392: ifeq +66 -> 458
    //   395: aload 7
    //   397: new 67	org/apache/http/message/BasicNameValuePair
    //   400: dup
    //   401: ldc 197
    //   403: aload_1
    //   404: invokevirtual 202	android/telephony/TelephonyManager:getNetworkCountryIso	()Ljava/lang/String;
    //   407: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   410: invokeinterface 78 2 0
    //   415: pop
    //   416: aload 7
    //   418: new 67	org/apache/http/message/BasicNameValuePair
    //   421: dup
    //   422: ldc 204
    //   424: aload_1
    //   425: invokevirtual 207	android/telephony/TelephonyManager:getNetworkOperator	()Ljava/lang/String;
    //   428: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   431: invokeinterface 78 2 0
    //   436: pop
    //   437: aload 7
    //   439: new 67	org/apache/http/message/BasicNameValuePair
    //   442: dup
    //   443: ldc 209
    //   445: aload_1
    //   446: invokevirtual 212	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   449: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   452: invokeinterface 78 2 0
    //   457: pop
    //   458: aload 7
    //   460: new 67	org/apache/http/message/BasicNameValuePair
    //   463: dup
    //   464: ldc 214
    //   466: ldc 216
    //   468: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   471: invokeinterface 78 2 0
    //   476: pop
    //   477: aload 7
    //   479: new 67	org/apache/http/message/BasicNameValuePair
    //   482: dup
    //   483: ldc 218
    //   485: ldc 220
    //   487: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   490: invokeinterface 78 2 0
    //   495: pop
    //   496: aload_1
    //   497: invokevirtual 223	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   500: ifnull +465 -> 965
    //   503: aload_1
    //   504: invokevirtual 223	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   507: astore 22
    //   509: aload 7
    //   511: new 67	org/apache/http/message/BasicNameValuePair
    //   514: dup
    //   515: ldc 225
    //   517: aload 22
    //   519: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   522: invokeinterface 78 2 0
    //   527: pop
    //   528: aload 7
    //   530: new 67	org/apache/http/message/BasicNameValuePair
    //   533: dup
    //   534: ldc 227
    //   536: getstatic 232	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   539: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   542: invokeinterface 78 2 0
    //   547: pop
    //   548: aload 7
    //   550: new 67	org/apache/http/message/BasicNameValuePair
    //   553: dup
    //   554: ldc 234
    //   556: getstatic 237	android/os/Build:MODEL	Ljava/lang/String;
    //   559: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   562: invokeinterface 78 2 0
    //   567: pop
    //   568: aload_0
    //   569: ldc 239
    //   571: invokevirtual 171	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   574: checkcast 241	android/net/ConnectivityManager
    //   577: astore 26
    //   579: aload 26
    //   581: iconst_0
    //   582: invokevirtual 245	android/net/ConnectivityManager:getNetworkInfo	(I)Landroid/net/NetworkInfo;
    //   585: astore 27
    //   587: aload 26
    //   589: iconst_1
    //   590: invokevirtual 245	android/net/ConnectivityManager:getNetworkInfo	(I)Landroid/net/NetworkInfo;
    //   593: astore 28
    //   595: aload 27
    //   597: ifnull +548 -> 1145
    //   600: aload 27
    //   602: invokevirtual 251	android/net/NetworkInfo:getState	()Landroid/net/NetworkInfo$State;
    //   605: astore 29
    //   607: aload 28
    //   609: ifnull +542 -> 1151
    //   612: aload 28
    //   614: invokevirtual 251	android/net/NetworkInfo:getState	()Landroid/net/NetworkInfo$State;
    //   617: astore 30
    //   619: aload 30
    //   621: getstatic 257	android/net/NetworkInfo$State:CONNECTED	Landroid/net/NetworkInfo$State;
    //   624: if_acmpeq +496 -> 1120
    //   627: aload 30
    //   629: getstatic 260	android/net/NetworkInfo$State:CONNECTING	Landroid/net/NetworkInfo$State;
    //   632: if_acmpne +341 -> 973
    //   635: goto +485 -> 1120
    //   638: aload 7
    //   640: new 67	org/apache/http/message/BasicNameValuePair
    //   643: dup
    //   644: ldc_w 262
    //   647: aload 31
    //   649: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   652: invokeinterface 78 2 0
    //   657: pop
    //   658: aload_1
    //   659: invokevirtual 265	android/telephony/TelephonyManager:getSimState	()I
    //   662: tableswitch	default:+466 -> 1128, 0:+543->1205, 1:+503->1165, 2:+519->1181, 3:+527->1189, 4:+511->1173, 5:+535->1197
    //   701: iconst_4
    //   702: new 67	org/apache/http/message/BasicNameValuePair
    //   705: dup
    //   706: ldc_w 267
    //   709: aload 33
    //   711: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   714: invokeinterface 78 2 0
    //   719: pop
    //   720: new 88	java/lang/StringBuilder
    //   723: dup
    //   724: ldc_w 269
    //   727: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   730: astore 35
    //   732: aload 31
    //   734: ldc_w 271
    //   737: invokevirtual 274	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   740: ifeq +473 -> 1213
    //   743: ldc_w 276
    //   746: astore 36
    //   748: ldc 50
    //   750: aload 35
    //   752: aload 36
    //   754: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   757: ldc_w 278
    //   760: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   763: aload 33
    //   765: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   768: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   771: invokestatic 281	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   774: aload_0
    //   775: ldc_w 283
    //   778: invokevirtual 287	android/content/Context:checkCallingOrSelfPermission	(Ljava/lang/String;)I
    //   781: ifne +354 -> 1135
    //   784: aload 7
    //   786: new 67	org/apache/http/message/BasicNameValuePair
    //   789: dup
    //   790: ldc_w 289
    //   793: aload_0
    //   794: ldc_w 271
    //   797: invokevirtual 171	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   800: checkcast 291	android/net/wifi/WifiManager
    //   803: invokevirtual 295	android/net/wifi/WifiManager:getConnectionInfo	()Landroid/net/wifi/WifiInfo;
    //   806: invokevirtual 300	android/net/wifi/WifiInfo:getMacAddress	()Ljava/lang/String;
    //   809: invokespecial 72	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   812: invokeinterface 78 2 0
    //   817: pop
    //   818: goto +317 -> 1135
    //   821: iload 38
    //   823: aload 7
    //   825: invokeinterface 84 1 0
    //   830: if_icmplt +162 -> 992
    //   833: aload 37
    //   835: iconst_0
    //   836: iconst_m1
    //   837: aload 37
    //   839: invokevirtual 303	java/lang/String:length	()I
    //   842: iadd
    //   843: invokevirtual 307	java/lang/String:substring	(II)Ljava/lang/String;
    //   846: invokestatic 313	com/pad/android/util/AdEncryption:encrypt	(Ljava/lang/String;)Ljava/lang/String;
    //   849: astore 43
    //   851: aload 43
    //   853: areturn
    //   854: aload_3
    //   855: iload 55
    //   857: invokeinterface 316 2 0
    //   862: checkcast 67	org/apache/http/message/BasicNameValuePair
    //   865: astore 57
    //   867: new 88	java/lang/StringBuilder
    //   870: dup
    //   871: aload 54
    //   873: invokestatic 319	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   876: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   879: aload 57
    //   881: invokevirtual 322	org/apache/http/message/BasicNameValuePair:getName	()Ljava/lang/String;
    //   884: invokevirtual 326	java/lang/String:getBytes	()[B
    //   887: invokestatic 330	com/pad/android/util/AdEncryption:base64encode	([B)Ljava/lang/String;
    //   890: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   893: ldc_w 332
    //   896: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   899: aload 57
    //   901: invokevirtual 335	org/apache/http/message/BasicNameValuePair:getValue	()Ljava/lang/String;
    //   904: invokevirtual 326	java/lang/String:getBytes	()[B
    //   907: invokestatic 330	com/pad/android/util/AdEncryption:base64encode	([B)Ljava/lang/String;
    //   910: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   913: ldc_w 337
    //   916: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   919: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   922: astore 58
    //   924: aload 58
    //   926: astore 54
    //   928: iinc 55 1
    //   931: goto -888 -> 43
    //   934: astore 56
    //   936: ldc 50
    //   938: new 88	java/lang/StringBuilder
    //   941: dup
    //   942: ldc_w 339
    //   945: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   948: aload 56
    //   950: invokevirtual 342	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   953: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   956: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   959: invokestatic 345	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   962: goto -867 -> 95
    //   965: ldc_w 347
    //   968: astore 22
    //   970: goto -461 -> 509
    //   973: aload 29
    //   975: getstatic 257	android/net/NetworkInfo$State:CONNECTED	Landroid/net/NetworkInfo$State;
    //   978: if_acmpeq +179 -> 1157
    //   981: aload 29
    //   983: getstatic 260	android/net/NetworkInfo$State:CONNECTING	Landroid/net/NetworkInfo$State;
    //   986: if_acmpne +127 -> 1113
    //   989: goto +168 -> 1157
    //   992: aload 7
    //   994: iload 38
    //   996: invokeinterface 316 2 0
    //   1001: checkcast 349	org/apache/http/NameValuePair
    //   1004: astore 39
    //   1006: aload 39
    //   1008: invokeinterface 350 1 0
    //   1013: astore 40
    //   1015: aload 40
    //   1017: ifnull +89 -> 1106
    //   1020: new 88	java/lang/StringBuilder
    //   1023: dup
    //   1024: aload 37
    //   1026: invokestatic 319	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1029: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1032: aload 39
    //   1034: invokeinterface 351 1 0
    //   1039: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1042: ldc_w 353
    //   1045: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1048: aload 40
    //   1050: ldc_w 355
    //   1053: invokestatic 361	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1056: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1059: ldc_w 363
    //   1062: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1065: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1068: astore 41
    //   1070: aload 41
    //   1072: astore 42
    //   1074: iinc 38 1
    //   1077: aload 42
    //   1079: astore 37
    //   1081: goto -260 -> 821
    //   1084: astore 8
    //   1086: ldc 50
    //   1088: aload 8
    //   1090: invokestatic 56	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1093: ldc 80
    //   1095: areturn
    //   1096: astore 45
    //   1098: goto -640 -> 458
    //   1101: astore 49
    //   1103: goto -718 -> 385
    //   1106: aload 37
    //   1108: astore 42
    //   1110: goto -36 -> 1074
    //   1113: ldc 80
    //   1115: astore 31
    //   1117: goto -479 -> 638
    //   1120: ldc_w 271
    //   1123: astore 31
    //   1125: goto -487 -> 638
    //   1128: ldc 80
    //   1130: astore 33
    //   1132: goto -432 -> 700
    //   1135: ldc 80
    //   1137: astore 37
    //   1139: iconst_0
    //   1140: istore 38
    //   1142: goto -321 -> 821
    //   1145: aconst_null
    //   1146: astore 29
    //   1148: goto -541 -> 607
    //   1151: aconst_null
    //   1152: astore 30
    //   1154: goto -535 -> 619
    //   1157: ldc_w 365
    //   1160: astore 31
    //   1162: goto -524 -> 638
    //   1165: ldc_w 367
    //   1168: astore 33
    //   1170: goto -470 -> 700
    //   1173: ldc_w 369
    //   1176: astore 33
    //   1178: goto -478 -> 700
    //   1181: ldc_w 371
    //   1184: astore 33
    //   1186: goto -486 -> 700
    //   1189: ldc_w 373
    //   1192: astore 33
    //   1194: goto -494 -> 700
    //   1197: ldc_w 375
    //   1200: astore 33
    //   1202: goto -502 -> 700
    //   1205: ldc_w 377
    //   1208: astore 33
    //   1210: goto -510 -> 700
    //   1213: ldc_w 379
    //   1216: astore 36
    //   1218: goto -470 -> 748
    //
    // Exception table:
    //   from	to	target	type
    //   43	95	934	java/lang/Exception
    //   854	924	934	java/lang/Exception
    //   95	310	1084	java/lang/Exception
    //   385	390	1084	java/lang/Exception
    //   458	509	1084	java/lang/Exception
    //   509	595	1084	java/lang/Exception
    //   600	607	1084	java/lang/Exception
    //   612	619	1084	java/lang/Exception
    //   619	635	1084	java/lang/Exception
    //   638	700	1084	java/lang/Exception
    //   700	743	1084	java/lang/Exception
    //   748	818	1084	java/lang/Exception
    //   821	851	1084	java/lang/Exception
    //   973	989	1084	java/lang/Exception
    //   992	1015	1084	java/lang/Exception
    //   1020	1070	1084	java/lang/Exception
    //   395	458	1096	java/lang/Exception
    //   315	385	1101	java/lang/Exception
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.pad.android.util.AdRefValues
 * JD-Core Version:    0.5.3
 */