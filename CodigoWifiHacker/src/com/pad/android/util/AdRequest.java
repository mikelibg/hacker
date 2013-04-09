package com.pad.android.util;

import android.app.Activity;
import android.content.Context;
import android.telephony.TelephonyManager;
import java.util.List;
import org.apache.http.NameValuePair;
import org.json.JSONObject;

public class AdRequest
{
  private static final String LB_LOG = "LBAdController";
  private Activity activity;
  private Context context;
  private String domain;
  private boolean loadIcon = false;
  private String notificationLaunchType = "App";
  private boolean requestInProgress = false;
  private JSONObject results;
  private int sHeight;
  private int sWidth;
  private String sectionid;
  private String subid;
  private TelephonyManager tm;
  private List<NameValuePair> tokens;
  private boolean useLocation = false;
  private boolean useNotification = false;

  public AdRequest(Activity paramActivity, String paramString)
  {
    this.activity = paramActivity;
    this.context = null;
    this.sectionid = paramString;
  }

  public AdRequest(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    this.activity = null;
    this.context = paramContext;
    this.sectionid = paramString1;
    this.useNotification = paramString2.equals("notification");
    this.loadIcon = paramString2.equals("icon");
    this.notificationLaunchType = paramString3;
  }

  // ERROR //
  public JSONObject makeLBRequest()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 38	com/pad/android/util/AdRequest:requestInProgress	Z
    //   4: ifeq +9 -> 13
    //   7: aconst_null
    //   8: astore 40
    //   10: aload 40
    //   12: areturn
    //   13: aload_0
    //   14: iconst_1
    //   15: putfield 38	com/pad/android/util/AdRequest:requestInProgress	Z
    //   18: sipush 250
    //   21: new 71	java/util/Random
    //   24: dup
    //   25: invokespecial 72	java/util/Random:<init>	()V
    //   28: sipush 151
    //   31: invokevirtual 76	java/util/Random:nextInt	(I)I
    //   34: iadd
    //   35: i2l
    //   36: lstore_1
    //   37: lload_1
    //   38: invokestatic 82	java/lang/Thread:sleep	(J)V
    //   41: aload_0
    //   42: getfield 50	com/pad/android/util/AdRequest:activity	Landroid/app/Activity;
    //   45: ifnonnull +307 -> 352
    //   48: aload_0
    //   49: getfield 52	com/pad/android/util/AdRequest:context	Landroid/content/Context;
    //   52: astore 4
    //   54: aload 4
    //   56: ldc 84
    //   58: iconst_2
    //   59: invokevirtual 90	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   62: astore 5
    //   64: aload_0
    //   65: getfield 50	com/pad/android/util/AdRequest:activity	Landroid/app/Activity;
    //   68: ifnull +182 -> 250
    //   71: new 92	android/util/DisplayMetrics
    //   74: dup
    //   75: invokespecial 93	android/util/DisplayMetrics:<init>	()V
    //   78: astore 6
    //   80: aload_0
    //   81: getfield 50	com/pad/android/util/AdRequest:activity	Landroid/app/Activity;
    //   84: invokevirtual 99	android/app/Activity:getWindowManager	()Landroid/view/WindowManager;
    //   87: invokeinterface 105 1 0
    //   92: aload 6
    //   94: invokevirtual 111	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   97: new 113	android/graphics/Rect
    //   100: dup
    //   101: invokespecial 114	android/graphics/Rect:<init>	()V
    //   104: astore 7
    //   106: aload_0
    //   107: getfield 50	com/pad/android/util/AdRequest:activity	Landroid/app/Activity;
    //   110: invokevirtual 118	android/app/Activity:getWindow	()Landroid/view/Window;
    //   113: astore 8
    //   115: aload 8
    //   117: invokevirtual 124	android/view/Window:getDecorView	()Landroid/view/View;
    //   120: aload 7
    //   122: invokevirtual 130	android/view/View:getWindowVisibleDisplayFrame	(Landroid/graphics/Rect;)V
    //   125: aload 7
    //   127: getfield 133	android/graphics/Rect:top	I
    //   130: istore 9
    //   132: aload 8
    //   134: ldc 134
    //   136: invokevirtual 138	android/view/Window:findViewById	(I)Landroid/view/View;
    //   139: invokevirtual 142	android/view/View:getTop	()I
    //   142: istore 10
    //   144: iload 10
    //   146: iload 9
    //   148: if_icmple +213 -> 361
    //   151: iload 10
    //   153: iload 9
    //   155: isub
    //   156: istore 11
    //   158: aload_0
    //   159: aload 6
    //   161: getfield 145	android/util/DisplayMetrics:widthPixels	I
    //   164: putfield 147	com/pad/android/util/AdRequest:sWidth	I
    //   167: aload_0
    //   168: aload 6
    //   170: getfield 150	android/util/DisplayMetrics:heightPixels	I
    //   173: iload 9
    //   175: isub
    //   176: iload 11
    //   178: isub
    //   179: putfield 152	com/pad/android/util/AdRequest:sHeight	I
    //   182: ldc 8
    //   184: new 154	java/lang/StringBuilder
    //   187: dup
    //   188: ldc 156
    //   190: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   193: aload_0
    //   194: getfield 147	com/pad/android/util/AdRequest:sWidth	I
    //   197: invokevirtual 163	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   200: ldc 165
    //   202: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   205: aload_0
    //   206: getfield 152	com/pad/android/util/AdRequest:sHeight	I
    //   209: invokevirtual 163	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   212: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: invokestatic 178	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   218: ldc 8
    //   220: new 154	java/lang/StringBuilder
    //   223: dup
    //   224: ldc 180
    //   226: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   229: iload 9
    //   231: invokevirtual 163	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   234: ldc 182
    //   236: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: iload 11
    //   241: invokevirtual 163	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   244: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   247: invokestatic 178	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   250: new 184	org/apache/http/params/BasicHttpParams
    //   253: dup
    //   254: invokespecial 185	org/apache/http/params/BasicHttpParams:<init>	()V
    //   257: astore 12
    //   259: aload 12
    //   261: ldc 187
    //   263: getstatic 193	org/apache/http/HttpVersion:HTTP_1_1	Lorg/apache/http/HttpVersion;
    //   266: invokeinterface 199 3 0
    //   271: pop
    //   272: new 201	org/apache/http/impl/client/DefaultHttpClient
    //   275: dup
    //   276: aload 12
    //   278: invokespecial 204	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   281: astore 14
    //   283: aload_0
    //   284: getfield 50	com/pad/android/util/AdRequest:activity	Landroid/app/Activity;
    //   287: ifnull +80 -> 367
    //   290: aload_0
    //   291: aload_0
    //   292: getfield 50	com/pad/android/util/AdRequest:activity	Landroid/app/Activity;
    //   295: invokevirtual 208	android/app/Activity:getBaseContext	()Landroid/content/Context;
    //   298: ldc 210
    //   300: invokevirtual 214	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   303: checkcast 216	android/telephony/TelephonyManager
    //   306: putfield 218	com/pad/android/util/AdRequest:tm	Landroid/telephony/TelephonyManager;
    //   309: iconst_2
    //   310: anewarray 59	java/lang/String
    //   313: dup
    //   314: iconst_0
    //   315: ldc 220
    //   317: aastore
    //   318: dup
    //   319: iconst_1
    //   320: ldc 222
    //   322: aastore
    //   323: astore 15
    //   325: iconst_0
    //   326: istore 16
    //   328: iconst_0
    //   329: istore 17
    //   331: aload 15
    //   333: arraylength
    //   334: istore 18
    //   336: iload 17
    //   338: iload 18
    //   340: if_icmplt +46 -> 386
    //   343: aload_0
    //   344: getfield 224	com/pad/android/util/AdRequest:results	Lorg/json/JSONObject;
    //   347: astore 40
    //   349: goto -339 -> 10
    //   352: aload_0
    //   353: getfield 50	com/pad/android/util/AdRequest:activity	Landroid/app/Activity;
    //   356: astore 4
    //   358: goto -304 -> 54
    //   361: iconst_0
    //   362: istore 11
    //   364: goto -206 -> 158
    //   367: aload_0
    //   368: aload_0
    //   369: getfield 52	com/pad/android/util/AdRequest:context	Landroid/content/Context;
    //   372: ldc 210
    //   374: invokevirtual 214	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   377: checkcast 216	android/telephony/TelephonyManager
    //   380: putfield 218	com/pad/android/util/AdRequest:tm	Landroid/telephony/TelephonyManager;
    //   383: goto -74 -> 309
    //   386: iload 16
    //   388: ifne -45 -> 343
    //   391: aload_0
    //   392: aload 15
    //   394: iload 17
    //   396: aaload
    //   397: putfield 226	com/pad/android/util/AdRequest:domain	Ljava/lang/String;
    //   400: new 154	java/lang/StringBuilder
    //   403: dup
    //   404: aload_0
    //   405: getfield 226	com/pad/android/util/AdRequest:domain	Ljava/lang/String;
    //   408: invokestatic 230	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   411: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   414: ldc 232
    //   416: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   419: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   422: astore 19
    //   424: aload_0
    //   425: getfield 40	com/pad/android/util/AdRequest:useNotification	Z
    //   428: ifeq +502 -> 930
    //   431: new 154	java/lang/StringBuilder
    //   434: dup
    //   435: aload_0
    //   436: getfield 226	com/pad/android/util/AdRequest:domain	Ljava/lang/String;
    //   439: invokestatic 230	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   442: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   445: ldc 234
    //   447: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   450: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   453: astore 19
    //   455: new 154	java/lang/StringBuilder
    //   458: dup
    //   459: ldc 236
    //   461: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   464: aload_0
    //   465: getfield 54	com/pad/android/util/AdRequest:sectionid	Ljava/lang/String;
    //   468: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   471: ldc 238
    //   473: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   476: aload 5
    //   478: ldc 240
    //   480: ldc 242
    //   482: invokeinterface 248 3 0
    //   487: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   490: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   493: astore 20
    //   495: aload_0
    //   496: getfield 40	com/pad/android/util/AdRequest:useNotification	Z
    //   499: ifeq +188 -> 687
    //   502: aload 5
    //   504: new 154	java/lang/StringBuilder
    //   507: dup
    //   508: ldc 250
    //   510: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   513: aload_0
    //   514: getfield 54	com/pad/android/util/AdRequest:sectionid	Ljava/lang/String;
    //   517: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   520: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   523: ldc 242
    //   525: invokeinterface 248 3 0
    //   530: invokestatic 255	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   533: invokevirtual 258	java/lang/Integer:intValue	()I
    //   536: istore 35
    //   538: new 154	java/lang/StringBuilder
    //   541: dup
    //   542: new 154	java/lang/StringBuilder
    //   545: dup
    //   546: aload 20
    //   548: invokestatic 230	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   551: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   554: ldc_w 260
    //   557: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   560: iload 35
    //   562: invokevirtual 163	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   565: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   568: invokestatic 230	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   571: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   574: ldc_w 262
    //   577: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   580: aload_0
    //   581: getfield 46	com/pad/android/util/AdRequest:notificationLaunchType	Ljava/lang/String;
    //   584: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   587: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   590: astore 36
    //   592: aload 5
    //   594: new 154	java/lang/StringBuilder
    //   597: dup
    //   598: ldc_w 264
    //   601: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   604: aload_0
    //   605: getfield 54	com/pad/android/util/AdRequest:sectionid	Ljava/lang/String;
    //   608: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   611: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   614: ldc2_w 265
    //   617: invokeinterface 270 4 0
    //   622: lstore 37
    //   624: lload 37
    //   626: ldc2_w 265
    //   629: lcmp
    //   630: ifne +335 -> 965
    //   633: iconst_m1
    //   634: istore 39
    //   636: new 154	java/lang/StringBuilder
    //   639: dup
    //   640: aload 36
    //   642: invokestatic 230	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   645: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   648: ldc_w 272
    //   651: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   654: iload 39
    //   656: invokevirtual 163	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   659: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   662: astore 20
    //   664: ldc 8
    //   666: new 154	java/lang/StringBuilder
    //   669: dup
    //   670: ldc_w 274
    //   673: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   676: iload 39
    //   678: invokevirtual 163	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   681: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   684: invokestatic 178	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   687: aload_0
    //   688: getfield 42	com/pad/android/util/AdRequest:loadIcon	Z
    //   691: ifeq +61 -> 752
    //   694: aload 5
    //   696: new 154	java/lang/StringBuilder
    //   699: dup
    //   700: ldc_w 276
    //   703: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   706: aload_0
    //   707: getfield 54	com/pad/android/util/AdRequest:sectionid	Ljava/lang/String;
    //   710: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   713: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   716: iconst_0
    //   717: invokeinterface 280 3 0
    //   722: istore 34
    //   724: new 154	java/lang/StringBuilder
    //   727: dup
    //   728: aload 20
    //   730: invokestatic 230	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   733: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   736: ldc_w 282
    //   739: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   742: iload 34
    //   744: invokevirtual 163	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   747: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   750: astore 20
    //   752: aload 20
    //   754: invokevirtual 285	java/lang/String:trim	()Ljava/lang/String;
    //   757: invokestatic 291	com/pad/android/util/AdEncryption:encrypt	(Ljava/lang/String;)Ljava/lang/String;
    //   760: invokevirtual 285	java/lang/String:trim	()Ljava/lang/String;
    //   763: astore 21
    //   765: new 154	java/lang/StringBuilder
    //   768: dup
    //   769: aload 19
    //   771: invokestatic 230	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   774: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   777: ldc_w 293
    //   780: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   783: aload 21
    //   785: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   788: ldc 236
    //   790: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   793: aload_0
    //   794: getfield 54	com/pad/android/util/AdRequest:sectionid	Ljava/lang/String;
    //   797: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   800: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   803: astore 22
    //   805: ldc 8
    //   807: new 154	java/lang/StringBuilder
    //   810: dup
    //   811: ldc_w 295
    //   814: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   817: aload 21
    //   819: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   822: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   825: invokestatic 178	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   828: new 297	org/apache/http/client/methods/HttpPost
    //   831: dup
    //   832: aload 22
    //   834: invokespecial 298	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   837: astore 23
    //   839: new 300	java/util/ArrayList
    //   842: dup
    //   843: iconst_2
    //   844: invokespecial 303	java/util/ArrayList:<init>	(I)V
    //   847: astore 24
    //   849: new 305	org/apache/http/message/BasicNameValuePair
    //   852: dup
    //   853: ldc_w 307
    //   856: aload 4
    //   858: aload_0
    //   859: getfield 218	com/pad/android/util/AdRequest:tm	Landroid/telephony/TelephonyManager;
    //   862: aload_0
    //   863: getfield 309	com/pad/android/util/AdRequest:subid	Ljava/lang/String;
    //   866: aload_0
    //   867: getfield 311	com/pad/android/util/AdRequest:tokens	Ljava/util/List;
    //   870: aload_0
    //   871: getfield 48	com/pad/android/util/AdRequest:useLocation	Z
    //   874: aload_0
    //   875: getfield 147	com/pad/android/util/AdRequest:sWidth	I
    //   878: aload_0
    //   879: getfield 152	com/pad/android/util/AdRequest:sHeight	I
    //   882: invokestatic 317	com/pad/android/util/AdRefValues:adRefValues	(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/util/List;ZII)Ljava/lang/String;
    //   885: invokespecial 319	org/apache/http/message/BasicNameValuePair:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   888: astore 25
    //   890: aload 24
    //   892: aload 25
    //   894: invokeinterface 324 2 0
    //   899: pop
    //   900: aload 23
    //   902: new 326	org/apache/http/client/entity/UrlEncodedFormEntity
    //   905: dup
    //   906: aload 24
    //   908: invokespecial 329	org/apache/http/client/entity/UrlEncodedFormEntity:<init>	(Ljava/util/List;)V
    //   911: invokevirtual 333	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   914: iconst_0
    //   915: istore 27
    //   917: iload 27
    //   919: bipush 10
    //   921: if_icmplt +77 -> 998
    //   924: iinc 17 1
    //   927: goto -596 -> 331
    //   930: aload_0
    //   931: getfield 42	com/pad/android/util/AdRequest:loadIcon	Z
    //   934: ifeq -479 -> 455
    //   937: new 154	java/lang/StringBuilder
    //   940: dup
    //   941: aload_0
    //   942: getfield 226	com/pad/android/util/AdRequest:domain	Ljava/lang/String;
    //   945: invokestatic 230	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   948: invokespecial 159	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   951: ldc_w 335
    //   954: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   957: invokevirtual 172	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   960: astore 19
    //   962: goto -507 -> 455
    //   965: invokestatic 341	java/lang/System:currentTimeMillis	()J
    //   968: ldc2_w 342
    //   971: ldiv
    //   972: l2i
    //   973: lload 37
    //   975: ldc2_w 342
    //   978: ldiv
    //   979: l2i
    //   980: isub
    //   981: istore 39
    //   983: goto -347 -> 636
    //   986: astore 26
    //   988: ldc 8
    //   990: aload 26
    //   992: invokestatic 347	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   995: goto -81 -> 914
    //   998: iload 16
    //   1000: ifne -76 -> 924
    //   1003: aload 14
    //   1005: aload 23
    //   1007: invokeinterface 353 2 0
    //   1012: astore 30
    //   1014: aload 30
    //   1016: invokeinterface 359 1 0
    //   1021: invokeinterface 364 1 0
    //   1026: sipush 200
    //   1029: if_icmpne +50 -> 1079
    //   1032: iconst_1
    //   1033: istore 16
    //   1035: aload 30
    //   1037: invokeinterface 368 1 0
    //   1042: astore 31
    //   1044: aload 31
    //   1046: ifnull +33 -> 1079
    //   1049: aload 31
    //   1051: invokeinterface 374 1 0
    //   1056: astore 32
    //   1058: aload_0
    //   1059: new 376	org/json/JSONObject
    //   1062: dup
    //   1063: aload 32
    //   1065: invokestatic 382	com/pad/android/util/AdUtilFuncs:convertStreamToString	(Ljava/io/InputStream;)Ljava/lang/String;
    //   1068: invokespecial 383	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   1071: putfield 224	com/pad/android/util/AdRequest:results	Lorg/json/JSONObject;
    //   1074: aload 32
    //   1076: invokevirtual 388	java/io/InputStream:close	()V
    //   1079: aload_0
    //   1080: iconst_0
    //   1081: putfield 38	com/pad/android/util/AdRequest:requestInProgress	Z
    //   1084: iinc 27 1
    //   1087: goto -170 -> 917
    //   1090: astore 29
    //   1092: ldc 8
    //   1094: aload 29
    //   1096: invokestatic 347	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1099: aload_0
    //   1100: new 376	org/json/JSONObject
    //   1103: dup
    //   1104: invokespecial 389	org/json/JSONObject:<init>	()V
    //   1107: putfield 224	com/pad/android/util/AdRequest:results	Lorg/json/JSONObject;
    //   1110: aload_0
    //   1111: iconst_0
    //   1112: putfield 38	com/pad/android/util/AdRequest:requestInProgress	Z
    //   1115: iconst_0
    //   1116: istore 16
    //   1118: goto -34 -> 1084
    //   1121: astore 28
    //   1123: aload_0
    //   1124: iconst_0
    //   1125: putfield 38	com/pad/android/util/AdRequest:requestInProgress	Z
    //   1128: aload 28
    //   1130: athrow
    //   1131: astore_3
    //   1132: goto -1091 -> 41
    //
    // Exception table:
    //   from	to	target	type
    //   839	914	986	java/lang/Exception
    //   1003	1079	1090	java/lang/Exception
    //   1003	1079	1121	finally
    //   1092	1110	1121	finally
    //   37	41	1131	java/lang/Exception
  }

  public void setSubId(String paramString)
  {
    this.subid = paramString;
  }

  public void setTokens(List<NameValuePair> paramList)
  {
    this.tokens = paramList;
  }

  public void setUseLocation(boolean paramBoolean)
  {
    this.useLocation = paramBoolean;
    AdLog.i("LBAdController", "setUseLocation: " + paramBoolean);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.pad.android.util.AdRequest
 * JD-Core Version:    0.5.3
 */