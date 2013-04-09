package com.eMVeQv.NFmMPJ121641;

import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

class DeliverNotification
  implements IConstants
{
  private static final int NOTIFICATION_ID = 999;
  private static Bitmap bmpIcon;
  private String adType;
  AsyncTaskCompleteListener<Bitmap> asyncTaskCompleteListener = new AsyncTaskCompleteListener()
  {
    public void lauchNewHttpTask()
    {
      new ImageTask(Util.getAdImageUrl(), this).execute(new Void[0]);
    }

    public void onTaskComplete(Bitmap paramBitmap)
    {
      DeliverNotification.access$002(paramBitmap);
      if ((DeliverNotification.this.adType.contains("BPW")) || (DeliverNotification.this.adType.contains("BPCM")) || (DeliverNotification.this.adType.contains("BPCC")) || (DeliverNotification.this.adType.contains("BPA")))
      {
        Util.printDebugLog("BannerPush Type: " + DeliverNotification.this.adType);
        DeliverNotification.this.notifyUsers(DeliverNotification.this.context);
        return;
      }
      DeliverNotification.this.deliverNotification();
    }
  };
  private Context context;
  private long expiry_time;
  private NotificationManager notificationManager;
  AsyncTaskCompleteListener<String> sendImpressionTask = new AsyncTaskCompleteListener()
  {
    public void lauchNewHttpTask()
    {
      try
      {
        if (!(Util.isTestmode()))
        {
          DeliverNotification.access$402(DeliverNotification.this, SetPreferences.setValues(DeliverNotification.this.context));
          DeliverNotification.this.values.add(new BasicNameValuePair("model", "log"));
          DeliverNotification.this.values.add(new BasicNameValuePair("action", "settexttracking"));
          DeliverNotification.this.values.add(new BasicNameValuePair("event", "trayDelivered"));
          DeliverNotification.this.values.add(new BasicNameValuePair("campId", Util.getCampId()));
          DeliverNotification.this.values.add(new BasicNameValuePair("creativeId", Util.getCreativeId()));
          Util.printDebugLog("Values in PushService : " + DeliverNotification.this.values.toString());
          Log.i("AirpushSDK", "Posting Notification value received");
          new HttpPostDataTask(DeliverNotification.this.context, DeliverNotification.this.values, "https://api.airpush.com/v2/api.php", this).execute(new Void[0]);
        }
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }

    public void onTaskComplete(String paramString)
    {
      Log.i("AirpushSDK", "Notification Received : " + paramString);
    }
  };
  private Runnable send_Task = new Runnable()
  {
    private void cancelNotification()
    {
      try
      {
        Log.i("AirpushSDK", "Notification Expired");
        DeliverNotification.this.notificationManager.cancel(999);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }

    public void run()
    {
      cancelNotification();
    }
  };
  private CharSequence text;
  private CharSequence title;
  private List<NameValuePair> values;

  DeliverNotification(Context paramContext)
  {
    this.context = paramContext;
    if (paramContext == null)
      Util.getContext();
    Util.setIcon(selectIcon());
    this.adType = Util.getAdType();
    this.text = Util.getNotification_text();
    this.title = Util.getNotification_title();
    this.expiry_time = Util.getExpiry_time();
    this.asyncTaskCompleteListener.lauchNewHttpTask();
  }

  // ERROR //
  private void deliverNotification()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: iconst_0
    //   3: istore_2
    //   4: iconst_0
    //   5: istore_3
    //   6: ldc 123
    //   8: invokestatic 129	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   11: astore 38
    //   13: aload 38
    //   15: ldc 130
    //   17: invokevirtual 134	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   20: aload 38
    //   22: invokevirtual 140	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   25: istore_1
    //   26: aload 38
    //   28: ldc 141
    //   30: invokevirtual 134	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   33: aload 38
    //   35: invokevirtual 140	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   38: istore_3
    //   39: aload 38
    //   41: ldc 143
    //   43: invokevirtual 134	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   46: aload 38
    //   48: invokevirtual 140	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   51: istore_2
    //   52: aload_0
    //   53: getfield 56	com/eMVeQv/NFmMPJ121641/DeliverNotification:context	Landroid/content/Context;
    //   56: invokevirtual 149	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   59: aload_0
    //   60: getfield 56	com/eMVeQv/NFmMPJ121641/DeliverNotification:context	Landroid/content/Context;
    //   63: invokestatic 153	com/eMVeQv/NFmMPJ121641/Util:getPackageName	(Landroid/content/Context;)Ljava/lang/String;
    //   66: sipush 128
    //   69: invokevirtual 159	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   72: getfield 165	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   75: getfield 169	android/content/pm/ApplicationInfo:icon	I
    //   78: ifne +7 -> 85
    //   81: invokestatic 172	com/eMVeQv/NFmMPJ121641/Util:getIcon	()I
    //   84: pop
    //   85: aload_0
    //   86: aload_0
    //   87: getfield 56	com/eMVeQv/NFmMPJ121641/DeliverNotification:context	Landroid/content/Context;
    //   90: ldc 174
    //   92: invokevirtual 178	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   95: checkcast 180	android/app/NotificationManager
    //   98: putfield 119	com/eMVeQv/NFmMPJ121641/DeliverNotification:notificationManager	Landroid/app/NotificationManager;
    //   101: aload_0
    //   102: getfield 81	com/eMVeQv/NFmMPJ121641/DeliverNotification:text	Ljava/lang/CharSequence;
    //   105: astore 12
    //   107: aload_0
    //   108: getfield 86	com/eMVeQv/NFmMPJ121641/DeliverNotification:title	Ljava/lang/CharSequence;
    //   111: astore 13
    //   113: aload_0
    //   114: getfield 81	com/eMVeQv/NFmMPJ121641/DeliverNotification:text	Ljava/lang/CharSequence;
    //   117: astore 14
    //   119: invokestatic 185	java/lang/System:currentTimeMillis	()J
    //   122: lstore 15
    //   124: new 187	android/app/Notification
    //   127: dup
    //   128: invokestatic 172	com/eMVeQv/NFmMPJ121641/Util:getIcon	()I
    //   131: aload 12
    //   133: lload 15
    //   135: invokespecial 190	android/app/Notification:<init>	(ILjava/lang/CharSequence;J)V
    //   138: astore 17
    //   140: aload_0
    //   141: getfield 56	com/eMVeQv/NFmMPJ121641/DeliverNotification:context	Landroid/content/Context;
    //   144: invokevirtual 149	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   147: ldc 192
    //   149: aload_0
    //   150: getfield 56	com/eMVeQv/NFmMPJ121641/DeliverNotification:context	Landroid/content/Context;
    //   153: invokevirtual 194	android/content/Context:getPackageName	()Ljava/lang/String;
    //   156: invokevirtual 198	android/content/pm/PackageManager:checkPermission	(Ljava/lang/String;Ljava/lang/String;)I
    //   159: ifne +33 -> 192
    //   162: aload 17
    //   164: iconst_4
    //   165: newarray long
    //   167: dup
    //   168: iconst_0
    //   169: lconst_0
    //   170: lastore
    //   171: dup
    //   172: iconst_1
    //   173: ldc2_w 199
    //   176: lastore
    //   177: dup
    //   178: iconst_2
    //   179: ldc2_w 201
    //   182: lastore
    //   183: dup
    //   184: iconst_3
    //   185: ldc2_w 203
    //   188: lastore
    //   189: putfield 208	android/app/Notification:vibrate	[J
    //   192: aload 17
    //   194: ldc 209
    //   196: putfield 212	android/app/Notification:ledARGB	I
    //   199: aload 17
    //   201: sipush 300
    //   204: putfield 215	android/app/Notification:ledOffMS	I
    //   207: aload 17
    //   209: sipush 300
    //   212: putfield 218	android/app/Notification:ledOnMS	I
    //   215: new 220	android/content/Intent
    //   218: dup
    //   219: aload_0
    //   220: getfield 56	com/eMVeQv/NFmMPJ121641/DeliverNotification:context	Landroid/content/Context;
    //   223: ldc 222
    //   225: invokespecial 225	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   228: astore 19
    //   230: aload 19
    //   232: ldc 227
    //   234: invokevirtual 231	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   237: pop
    //   238: new 233	com/eMVeQv/NFmMPJ121641/SetPreferences
    //   241: dup
    //   242: aload_0
    //   243: getfield 56	com/eMVeQv/NFmMPJ121641/DeliverNotification:context	Landroid/content/Context;
    //   246: invokespecial 235	com/eMVeQv/NFmMPJ121641/SetPreferences:<init>	(Landroid/content/Context;)V
    //   249: invokevirtual 239	com/eMVeQv/NFmMPJ121641/SetPreferences:setNotificationData	()Z
    //   252: pop
    //   253: aload 19
    //   255: ldc 241
    //   257: invokestatic 244	com/eMVeQv/NFmMPJ121641/Util:getAppID	()Ljava/lang/String;
    //   260: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   263: pop
    //   264: aload 19
    //   266: ldc 250
    //   268: invokestatic 253	com/eMVeQv/NFmMPJ121641/Util:getApiKey	()Ljava/lang/String;
    //   271: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   274: pop
    //   275: aload 19
    //   277: ldc 255
    //   279: aload_0
    //   280: getfield 76	com/eMVeQv/NFmMPJ121641/DeliverNotification:adType	Ljava/lang/String;
    //   283: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   286: pop
    //   287: aload_0
    //   288: getfield 76	com/eMVeQv/NFmMPJ121641/DeliverNotification:adType	Ljava/lang/String;
    //   291: ldc_w 257
    //   294: invokevirtual 263	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   297: ifne +16 -> 313
    //   300: aload_0
    //   301: getfield 76	com/eMVeQv/NFmMPJ121641/DeliverNotification:adType	Ljava/lang/String;
    //   304: ldc_w 265
    //   307: invokevirtual 263	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   310: ifeq +338 -> 648
    //   313: aload 19
    //   315: ldc_w 267
    //   318: invokestatic 270	com/eMVeQv/NFmMPJ121641/Util:getNotificationUrl	()Ljava/lang/String;
    //   321: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   324: pop
    //   325: aload 19
    //   327: ldc_w 272
    //   330: invokestatic 275	com/eMVeQv/NFmMPJ121641/Util:getHeader	()Ljava/lang/String;
    //   333: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   336: pop
    //   337: aload 19
    //   339: ldc_w 277
    //   342: invokestatic 280	com/eMVeQv/NFmMPJ121641/Util:getCampId	()Ljava/lang/String;
    //   345: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   348: pop
    //   349: aload 19
    //   351: ldc_w 282
    //   354: invokestatic 285	com/eMVeQv/NFmMPJ121641/Util:getCreativeId	()Ljava/lang/String;
    //   357: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   360: pop
    //   361: aload 19
    //   363: ldc_w 287
    //   366: ldc_w 289
    //   369: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   372: pop
    //   373: aload 19
    //   375: ldc_w 291
    //   378: invokestatic 294	com/eMVeQv/NFmMPJ121641/Util:isTestmode	()Z
    //   381: invokevirtual 297	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   384: pop
    //   385: aload_0
    //   386: getfield 56	com/eMVeQv/NFmMPJ121641/DeliverNotification:context	Landroid/content/Context;
    //   389: iconst_0
    //   390: aload 19
    //   392: ldc_w 298
    //   395: invokestatic 304	android/app/PendingIntent:getService	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   398: astore 31
    //   400: aload 17
    //   402: iconst_4
    //   403: aload 17
    //   405: getfield 307	android/app/Notification:defaults	I
    //   408: ior
    //   409: putfield 307	android/app/Notification:defaults	I
    //   412: aload 17
    //   414: bipush 16
    //   416: aload 17
    //   418: getfield 310	android/app/Notification:flags	I
    //   421: ior
    //   422: putfield 310	android/app/Notification:flags	I
    //   425: aload 17
    //   427: aload_0
    //   428: getfield 56	com/eMVeQv/NFmMPJ121641/DeliverNotification:context	Landroid/content/Context;
    //   431: aload 13
    //   433: aload 14
    //   435: aload 31
    //   437: invokevirtual 314	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   440: getstatic 101	com/eMVeQv/NFmMPJ121641/DeliverNotification:bmpIcon	Landroid/graphics/Bitmap;
    //   443: ifnull +273 -> 716
    //   446: aload 17
    //   448: getfield 318	android/app/Notification:contentView	Landroid/widget/RemoteViews;
    //   451: iload_2
    //   452: getstatic 101	com/eMVeQv/NFmMPJ121641/DeliverNotification:bmpIcon	Landroid/graphics/Bitmap;
    //   455: invokevirtual 324	android/widget/RemoteViews:setImageViewBitmap	(ILandroid/graphics/Bitmap;)V
    //   458: aload 17
    //   460: getfield 318	android/app/Notification:contentView	Landroid/widget/RemoteViews;
    //   463: iload_1
    //   464: aload 13
    //   466: invokevirtual 328	android/widget/RemoteViews:setTextViewText	(ILjava/lang/CharSequence;)V
    //   469: aload 17
    //   471: getfield 318	android/app/Notification:contentView	Landroid/widget/RemoteViews;
    //   474: iload_3
    //   475: new 330	java/lang/StringBuilder
    //   478: dup
    //   479: invokespecial 331	java/lang/StringBuilder:<init>	()V
    //   482: ldc_w 333
    //   485: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   488: aload 14
    //   490: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   493: invokevirtual 343	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   496: invokevirtual 328	android/widget/RemoteViews:setTextViewText	(ILjava/lang/CharSequence;)V
    //   499: aload 17
    //   501: aload 31
    //   503: putfield 347	android/app/Notification:contentIntent	Landroid/app/PendingIntent;
    //   506: aload_0
    //   507: getfield 119	com/eMVeQv/NFmMPJ121641/DeliverNotification:notificationManager	Landroid/app/NotificationManager;
    //   510: sipush 999
    //   513: aload 17
    //   515: invokevirtual 351	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   518: ldc_w 353
    //   521: ldc_w 355
    //   524: invokestatic 360	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   527: pop
    //   528: aload_0
    //   529: getfield 49	com/eMVeQv/NFmMPJ121641/DeliverNotification:sendImpressionTask	Lcom/eMVeQv/NFmMPJ121641/AsyncTaskCompleteListener;
    //   532: invokeinterface 97 1 0
    //   537: new 362	android/os/Handler
    //   540: dup
    //   541: invokespecial 363	android/os/Handler:<init>	()V
    //   544: aload_0
    //   545: getfield 54	com/eMVeQv/NFmMPJ121641/DeliverNotification:send_Task	Ljava/lang/Runnable;
    //   548: ldc2_w 364
    //   551: aload_0
    //   552: getfield 92	com/eMVeQv/NFmMPJ121641/DeliverNotification:expiry_time	J
    //   555: lmul
    //   556: invokevirtual 369	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   559: pop
    //   560: return
    //   561: astore 7
    //   563: aload 7
    //   565: invokevirtual 372	java/lang/Exception:printStackTrace	()V
    //   568: goto -483 -> 85
    //   571: astore 8
    //   573: ldc_w 353
    //   576: ldc_w 374
    //   579: invokestatic 360	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   582: pop
    //   583: new 362	android/os/Handler
    //   586: dup
    //   587: invokespecial 363	android/os/Handler:<init>	()V
    //   590: aload_0
    //   591: getfield 54	com/eMVeQv/NFmMPJ121641/DeliverNotification:send_Task	Ljava/lang/Runnable;
    //   594: ldc2_w 364
    //   597: aload_0
    //   598: getfield 92	com/eMVeQv/NFmMPJ121641/DeliverNotification:expiry_time	J
    //   601: lmul
    //   602: invokevirtual 369	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   605: pop
    //   606: return
    //   607: astore 10
    //   609: return
    //   610: astore 18
    //   612: aload 18
    //   614: invokevirtual 372	java/lang/Exception:printStackTrace	()V
    //   617: goto -425 -> 192
    //   620: astore 4
    //   622: new 362	android/os/Handler
    //   625: dup
    //   626: invokespecial 363	android/os/Handler:<init>	()V
    //   629: aload_0
    //   630: getfield 54	com/eMVeQv/NFmMPJ121641/DeliverNotification:send_Task	Ljava/lang/Runnable;
    //   633: ldc2_w 364
    //   636: aload_0
    //   637: getfield 92	com/eMVeQv/NFmMPJ121641/DeliverNotification:expiry_time	J
    //   640: lmul
    //   641: invokevirtual 369	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   644: pop
    //   645: aload 4
    //   647: athrow
    //   648: aload_0
    //   649: getfield 76	com/eMVeQv/NFmMPJ121641/DeliverNotification:adType	Ljava/lang/String;
    //   652: ldc_w 376
    //   655: invokevirtual 263	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   658: ifeq +30 -> 688
    //   661: aload 19
    //   663: ldc_w 378
    //   666: invokestatic 381	com/eMVeQv/NFmMPJ121641/Util:getSms	()Ljava/lang/String;
    //   669: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   672: pop
    //   673: aload 19
    //   675: ldc_w 383
    //   678: invokestatic 386	com/eMVeQv/NFmMPJ121641/Util:getPhoneNumber	()Ljava/lang/String;
    //   681: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   684: pop
    //   685: goto -348 -> 337
    //   688: aload_0
    //   689: getfield 76	com/eMVeQv/NFmMPJ121641/DeliverNotification:adType	Ljava/lang/String;
    //   692: ldc_w 388
    //   695: invokevirtual 263	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   698: ifeq -361 -> 337
    //   701: aload 19
    //   703: ldc_w 383
    //   706: invokestatic 386	com/eMVeQv/NFmMPJ121641/Util:getPhoneNumber	()Ljava/lang/String;
    //   709: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   712: pop
    //   713: goto -376 -> 337
    //   716: aload 17
    //   718: getfield 318	android/app/Notification:contentView	Landroid/widget/RemoteViews;
    //   721: iload_2
    //   722: invokestatic 172	com/eMVeQv/NFmMPJ121641/Util:getIcon	()I
    //   725: invokevirtual 392	android/widget/RemoteViews:setImageViewResource	(II)V
    //   728: goto -270 -> 458
    //   731: astore 5
    //   733: goto -88 -> 645
    //   736: astore 33
    //   738: return
    //
    // Exception table:
    //   from	to	target	type
    //   6	85	561	java/lang/Exception
    //   85	140	571	java/lang/Exception
    //   192	313	571	java/lang/Exception
    //   313	337	571	java/lang/Exception
    //   337	458	571	java/lang/Exception
    //   458	537	571	java/lang/Exception
    //   563	568	571	java/lang/Exception
    //   612	617	571	java/lang/Exception
    //   648	685	571	java/lang/Exception
    //   688	713	571	java/lang/Exception
    //   716	728	571	java/lang/Exception
    //   583	606	607	java/lang/Exception
    //   140	192	610	java/lang/Exception
    //   6	85	620	finally
    //   85	140	620	finally
    //   140	192	620	finally
    //   192	313	620	finally
    //   313	337	620	finally
    //   337	458	620	finally
    //   458	537	620	finally
    //   563	568	620	finally
    //   573	583	620	finally
    //   612	617	620	finally
    //   648	685	620	finally
    //   688	713	620	finally
    //   716	728	620	finally
    //   622	645	731	java/lang/Exception
    //   537	560	736	java/lang/Exception
  }

  private int selectIcon()
  {
    int[] arrayOfInt = ICONS_ARRAY;
    return arrayOfInt[new java.util.Random().nextInt(-1 + arrayOfInt.length)];
  }

  // ERROR //
  void notifyUsers(Context paramContext)
  {
    // Byte code:
    //   0: ldc_w 406
    //   3: invokestatic 410	com/eMVeQv/NFmMPJ121641/Util:printDebugLog	(Ljava/lang/String;)V
    //   6: new 220	android/content/Intent
    //   9: dup
    //   10: aload_1
    //   11: ldc 222
    //   13: invokespecial 225	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   16: astore_2
    //   17: aload_2
    //   18: ldc 227
    //   20: invokevirtual 231	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   23: pop
    //   24: new 233	com/eMVeQv/NFmMPJ121641/SetPreferences
    //   27: dup
    //   28: aload_1
    //   29: invokespecial 235	com/eMVeQv/NFmMPJ121641/SetPreferences:<init>	(Landroid/content/Context;)V
    //   32: astore 11
    //   34: aload 11
    //   36: invokevirtual 239	com/eMVeQv/NFmMPJ121641/SetPreferences:setNotificationData	()Z
    //   39: pop
    //   40: aload_2
    //   41: ldc 241
    //   43: invokestatic 244	com/eMVeQv/NFmMPJ121641/Util:getAppID	()Ljava/lang/String;
    //   46: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   49: pop
    //   50: aload_2
    //   51: ldc 250
    //   53: invokestatic 253	com/eMVeQv/NFmMPJ121641/Util:getApiKey	()Ljava/lang/String;
    //   56: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   59: pop
    //   60: aload_2
    //   61: ldc 255
    //   63: aload_0
    //   64: getfield 76	com/eMVeQv/NFmMPJ121641/DeliverNotification:adType	Ljava/lang/String;
    //   67: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   70: pop
    //   71: aload_0
    //   72: getfield 76	com/eMVeQv/NFmMPJ121641/DeliverNotification:adType	Ljava/lang/String;
    //   75: ldc_w 412
    //   78: invokevirtual 263	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   81: ifne +16 -> 97
    //   84: aload_0
    //   85: getfield 76	com/eMVeQv/NFmMPJ121641/DeliverNotification:adType	Ljava/lang/String;
    //   88: ldc_w 414
    //   91: invokevirtual 263	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   94: ifeq +397 -> 491
    //   97: aload_2
    //   98: ldc_w 267
    //   101: invokestatic 270	com/eMVeQv/NFmMPJ121641/Util:getNotificationUrl	()Ljava/lang/String;
    //   104: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   107: pop
    //   108: aload_2
    //   109: ldc_w 272
    //   112: invokestatic 275	com/eMVeQv/NFmMPJ121641/Util:getHeader	()Ljava/lang/String;
    //   115: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   118: pop
    //   119: aload_2
    //   120: ldc_w 277
    //   123: invokestatic 280	com/eMVeQv/NFmMPJ121641/Util:getCampId	()Ljava/lang/String;
    //   126: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   129: pop
    //   130: aload_2
    //   131: ldc_w 282
    //   134: invokestatic 285	com/eMVeQv/NFmMPJ121641/Util:getCreativeId	()Ljava/lang/String;
    //   137: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   140: pop
    //   141: aload_2
    //   142: ldc_w 287
    //   145: ldc_w 289
    //   148: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   151: pop
    //   152: aload_2
    //   153: ldc_w 291
    //   156: invokestatic 294	com/eMVeQv/NFmMPJ121641/Util:isTestmode	()Z
    //   159: invokevirtual 297	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   162: pop
    //   163: aload_1
    //   164: iconst_0
    //   165: aload_2
    //   166: iconst_0
    //   167: invokestatic 304	android/app/PendingIntent:getService	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   170: astore 22
    //   172: iconst_0
    //   173: istore 23
    //   175: iconst_0
    //   176: istore 24
    //   178: iconst_0
    //   179: istore 25
    //   181: iconst_0
    //   182: istore 26
    //   184: iconst_0
    //   185: istore 27
    //   187: new 330	java/lang/StringBuilder
    //   190: dup
    //   191: invokespecial 331	java/lang/StringBuilder:<init>	()V
    //   194: aload_1
    //   195: invokevirtual 194	android/content/Context:getPackageName	()Ljava/lang/String;
    //   198: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: ldc_w 416
    //   204: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: invokevirtual 343	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   210: invokestatic 129	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   213: astore 38
    //   215: new 330	java/lang/StringBuilder
    //   218: dup
    //   219: invokespecial 331	java/lang/StringBuilder:<init>	()V
    //   222: aload_1
    //   223: invokevirtual 194	android/content/Context:getPackageName	()Ljava/lang/String;
    //   226: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: ldc_w 418
    //   232: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: invokevirtual 343	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   238: invokestatic 129	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   241: astore 39
    //   243: new 330	java/lang/StringBuilder
    //   246: dup
    //   247: invokespecial 331	java/lang/StringBuilder:<init>	()V
    //   250: aload_1
    //   251: invokevirtual 194	android/content/Context:getPackageName	()Ljava/lang/String;
    //   254: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: ldc_w 420
    //   260: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: invokevirtual 343	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   266: invokestatic 129	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   269: astore 40
    //   271: aload 39
    //   273: ldc_w 422
    //   276: invokevirtual 134	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   279: aload 39
    //   281: invokevirtual 140	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   284: istore 24
    //   286: aload 38
    //   288: ldc_w 424
    //   291: invokevirtual 134	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   294: aload 38
    //   296: invokevirtual 140	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   299: istore 23
    //   301: aload 38
    //   303: ldc_w 426
    //   306: invokevirtual 134	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   309: aload 38
    //   311: invokevirtual 140	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   314: istore 25
    //   316: aload 40
    //   318: ldc_w 428
    //   321: invokevirtual 134	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   324: aload 40
    //   326: invokevirtual 140	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   329: istore 27
    //   331: ldc_w 430
    //   334: invokestatic 410	com/eMVeQv/NFmMPJ121641/Util:printDebugLog	(Ljava/lang/String;)V
    //   337: new 187	android/app/Notification
    //   340: dup
    //   341: invokespecial 431	android/app/Notification:<init>	()V
    //   344: astore 32
    //   346: aload 32
    //   348: bipush 16
    //   350: putfield 310	android/app/Notification:flags	I
    //   353: aload 32
    //   355: aload_0
    //   356: getfield 81	com/eMVeQv/NFmMPJ121641/DeliverNotification:text	Ljava/lang/CharSequence;
    //   359: putfield 434	android/app/Notification:tickerText	Ljava/lang/CharSequence;
    //   362: iload 24
    //   364: ifeq +377 -> 741
    //   367: iload 27
    //   369: ifeq +372 -> 741
    //   372: aload 32
    //   374: iload 27
    //   376: putfield 435	android/app/Notification:icon	I
    //   379: new 320	android/widget/RemoteViews
    //   382: dup
    //   383: aload_1
    //   384: invokevirtual 194	android/content/Context:getPackageName	()Ljava/lang/String;
    //   387: iload 24
    //   389: invokespecial 438	android/widget/RemoteViews:<init>	(Ljava/lang/String;I)V
    //   392: astore 35
    //   394: aload 32
    //   396: aload 35
    //   398: putfield 318	android/app/Notification:contentView	Landroid/widget/RemoteViews;
    //   401: aload 32
    //   403: getfield 318	android/app/Notification:contentView	Landroid/widget/RemoteViews;
    //   406: iload 23
    //   408: getstatic 101	com/eMVeQv/NFmMPJ121641/DeliverNotification:bmpIcon	Landroid/graphics/Bitmap;
    //   411: invokevirtual 324	android/widget/RemoteViews:setImageViewBitmap	(ILandroid/graphics/Bitmap;)V
    //   414: aload 32
    //   416: getfield 318	android/app/Notification:contentView	Landroid/widget/RemoteViews;
    //   419: iload 25
    //   421: aload_0
    //   422: getfield 81	com/eMVeQv/NFmMPJ121641/DeliverNotification:text	Ljava/lang/CharSequence;
    //   425: invokevirtual 328	android/widget/RemoteViews:setTextViewText	(ILjava/lang/CharSequence;)V
    //   428: aload 32
    //   430: aload 22
    //   432: putfield 347	android/app/Notification:contentIntent	Landroid/app/PendingIntent;
    //   435: aload 32
    //   437: iconst_m1
    //   438: putfield 307	android/app/Notification:defaults	I
    //   441: aload_1
    //   442: ldc 174
    //   444: invokevirtual 178	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   447: checkcast 180	android/app/NotificationManager
    //   450: sipush 999
    //   453: aload 32
    //   455: invokevirtual 351	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   458: aload_0
    //   459: getfield 49	com/eMVeQv/NFmMPJ121641/DeliverNotification:sendImpressionTask	Lcom/eMVeQv/NFmMPJ121641/AsyncTaskCompleteListener;
    //   462: invokeinterface 97 1 0
    //   467: new 362	android/os/Handler
    //   470: dup
    //   471: invokespecial 363	android/os/Handler:<init>	()V
    //   474: aload_0
    //   475: getfield 54	com/eMVeQv/NFmMPJ121641/DeliverNotification:send_Task	Ljava/lang/Runnable;
    //   478: ldc2_w 364
    //   481: aload_0
    //   482: getfield 92	com/eMVeQv/NFmMPJ121641/DeliverNotification:expiry_time	J
    //   485: lmul
    //   486: invokevirtual 369	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   489: pop
    //   490: return
    //   491: aload_0
    //   492: getfield 76	com/eMVeQv/NFmMPJ121641/DeliverNotification:adType	Ljava/lang/String;
    //   495: ldc_w 440
    //   498: invokevirtual 263	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   501: ifeq +88 -> 589
    //   504: aload_2
    //   505: ldc_w 378
    //   508: invokestatic 381	com/eMVeQv/NFmMPJ121641/Util:getSms	()Ljava/lang/String;
    //   511: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   514: pop
    //   515: aload_2
    //   516: ldc_w 383
    //   519: invokestatic 386	com/eMVeQv/NFmMPJ121641/Util:getPhoneNumber	()Ljava/lang/String;
    //   522: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   525: pop
    //   526: goto -407 -> 119
    //   529: astore 6
    //   531: ldc_w 353
    //   534: new 330	java/lang/StringBuilder
    //   537: dup
    //   538: invokespecial 331	java/lang/StringBuilder:<init>	()V
    //   541: ldc_w 442
    //   544: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   547: aload 6
    //   549: invokevirtual 445	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   552: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   555: invokevirtual 343	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   558: invokestatic 448	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   561: pop
    //   562: new 362	android/os/Handler
    //   565: dup
    //   566: invokespecial 363	android/os/Handler:<init>	()V
    //   569: aload_0
    //   570: getfield 54	com/eMVeQv/NFmMPJ121641/DeliverNotification:send_Task	Ljava/lang/Runnable;
    //   573: ldc2_w 364
    //   576: aload_0
    //   577: getfield 92	com/eMVeQv/NFmMPJ121641/DeliverNotification:expiry_time	J
    //   580: lmul
    //   581: invokevirtual 369	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   584: pop
    //   585: return
    //   586: astore 8
    //   588: return
    //   589: aload_0
    //   590: getfield 76	com/eMVeQv/NFmMPJ121641/DeliverNotification:adType	Ljava/lang/String;
    //   593: ldc_w 450
    //   596: invokevirtual 263	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   599: ifeq -480 -> 119
    //   602: aload_2
    //   603: ldc_w 383
    //   606: invokestatic 386	com/eMVeQv/NFmMPJ121641/Util:getPhoneNumber	()Ljava/lang/String;
    //   609: invokevirtual 248	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   612: pop
    //   613: goto -494 -> 119
    //   616: astore_3
    //   617: new 362	android/os/Handler
    //   620: dup
    //   621: invokespecial 363	android/os/Handler:<init>	()V
    //   624: aload_0
    //   625: getfield 54	com/eMVeQv/NFmMPJ121641/DeliverNotification:send_Task	Ljava/lang/Runnable;
    //   628: ldc2_w 364
    //   631: aload_0
    //   632: getfield 92	com/eMVeQv/NFmMPJ121641/DeliverNotification:expiry_time	J
    //   635: lmul
    //   636: invokevirtual 369	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   639: pop
    //   640: aload_3
    //   641: athrow
    //   642: astore 28
    //   644: ldc_w 353
    //   647: new 330	java/lang/StringBuilder
    //   650: dup
    //   651: invokespecial 331	java/lang/StringBuilder:<init>	()V
    //   654: ldc_w 452
    //   657: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   660: aload 28
    //   662: invokevirtual 445	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   665: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   668: invokevirtual 343	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   671: invokestatic 448	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   674: pop
    //   675: ldc_w 353
    //   678: ldc_w 454
    //   681: invokestatic 448	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   684: pop
    //   685: ldc 123
    //   687: invokestatic 129	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   690: astore 36
    //   692: aload 36
    //   694: ldc 130
    //   696: invokevirtual 134	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   699: aload 36
    //   701: invokevirtual 140	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   704: istore 26
    //   706: aload 36
    //   708: ldc 141
    //   710: invokevirtual 134	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   713: aload 36
    //   715: invokevirtual 140	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   718: istore 25
    //   720: aload 36
    //   722: ldc 143
    //   724: invokevirtual 134	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   727: aload 36
    //   729: invokevirtual 140	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   732: istore 37
    //   734: iload 37
    //   736: istore 27
    //   738: goto -401 -> 337
    //   741: aload 32
    //   743: aload_0
    //   744: invokespecial 66	com/eMVeQv/NFmMPJ121641/DeliverNotification:selectIcon	()I
    //   747: putfield 435	android/app/Notification:icon	I
    //   750: aload 32
    //   752: aload_1
    //   753: aload_0
    //   754: getfield 86	com/eMVeQv/NFmMPJ121641/DeliverNotification:title	Ljava/lang/CharSequence;
    //   757: aload_0
    //   758: getfield 81	com/eMVeQv/NFmMPJ121641/DeliverNotification:text	Ljava/lang/CharSequence;
    //   761: aload 22
    //   763: invokevirtual 314	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   766: aload 32
    //   768: getfield 318	android/app/Notification:contentView	Landroid/widget/RemoteViews;
    //   771: iload 27
    //   773: invokestatic 172	com/eMVeQv/NFmMPJ121641/Util:getIcon	()I
    //   776: invokevirtual 392	android/widget/RemoteViews:setImageViewResource	(II)V
    //   779: aload 32
    //   781: getfield 318	android/app/Notification:contentView	Landroid/widget/RemoteViews;
    //   784: iload 26
    //   786: aload_0
    //   787: getfield 86	com/eMVeQv/NFmMPJ121641/DeliverNotification:title	Ljava/lang/CharSequence;
    //   790: invokevirtual 328	android/widget/RemoteViews:setTextViewText	(ILjava/lang/CharSequence;)V
    //   793: goto -379 -> 414
    //   796: astore 4
    //   798: goto -158 -> 640
    //   801: astore 33
    //   803: return
    //   804: astore 31
    //   806: goto -469 -> 337
    //
    // Exception table:
    //   from	to	target	type
    //   6	97	529	java/lang/Exception
    //   97	119	529	java/lang/Exception
    //   119	172	529	java/lang/Exception
    //   337	362	529	java/lang/Exception
    //   372	414	529	java/lang/Exception
    //   414	467	529	java/lang/Exception
    //   491	526	529	java/lang/Exception
    //   589	613	529	java/lang/Exception
    //   644	685	529	java/lang/Exception
    //   741	793	529	java/lang/Exception
    //   562	585	586	java/lang/Exception
    //   6	97	616	finally
    //   97	119	616	finally
    //   119	172	616	finally
    //   187	337	616	finally
    //   337	362	616	finally
    //   372	414	616	finally
    //   414	467	616	finally
    //   491	526	616	finally
    //   531	562	616	finally
    //   589	613	616	finally
    //   644	685	616	finally
    //   685	734	616	finally
    //   741	793	616	finally
    //   187	337	642	java/lang/Exception
    //   617	640	796	java/lang/Exception
    //   467	490	801	java/lang/Exception
    //   685	734	804	java/lang/Exception
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.DeliverNotification
 * JD-Core Version:    0.5.3
 */