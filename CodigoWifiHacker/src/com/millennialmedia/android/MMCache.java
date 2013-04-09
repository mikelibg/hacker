package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Environment;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;

class MMCache extends MMJSObject
{
  // ERROR //
  public MMJSResponse availableCachedVideos(HashMap<String, String> paramHashMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 16	com/millennialmedia/android/MMCache:contextRef	Ljava/lang/ref/WeakReference;
    //   4: invokevirtual 22	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   7: checkcast 24	android/content/Context
    //   10: astore_2
    //   11: aconst_null
    //   12: astore_3
    //   13: aconst_null
    //   14: astore 4
    //   16: aload_2
    //   17: ifnull +137 -> 154
    //   20: new 26	com/millennialmedia/android/AdDatabaseHelper
    //   23: dup
    //   24: aload_2
    //   25: invokespecial 29	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   28: astore 6
    //   30: aload 6
    //   32: invokevirtual 33	com/millennialmedia/android/AdDatabaseHelper:getAllVideoAds	()Ljava/util/ArrayList;
    //   35: astore 4
    //   37: aload 6
    //   39: invokevirtual 36	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   42: aload 4
    //   44: ifnull +110 -> 154
    //   47: new 38	org/json/JSONArray
    //   50: dup
    //   51: invokespecial 39	org/json/JSONArray:<init>	()V
    //   54: astore 8
    //   56: aload 4
    //   58: invokevirtual 45	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   61: astore 9
    //   63: aload 9
    //   65: invokeinterface 51 1 0
    //   70: ifeq +59 -> 129
    //   73: aload 9
    //   75: invokeinterface 54 1 0
    //   80: checkcast 56	com/millennialmedia/android/VideoAd
    //   83: astore 10
    //   85: aload 10
    //   87: aload_2
    //   88: invokevirtual 60	com/millennialmedia/android/VideoAd:isOnDisk	(Landroid/content/Context;)Z
    //   91: ifeq -28 -> 63
    //   94: aload 10
    //   96: invokevirtual 63	com/millennialmedia/android/VideoAd:isExpired	()Z
    //   99: ifne -36 -> 63
    //   102: aload 8
    //   104: aload 10
    //   106: getfield 67	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
    //   109: invokevirtual 71	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   112: pop
    //   113: goto -50 -> 63
    //   116: astore 12
    //   118: aload_3
    //   119: ifnull -77 -> 42
    //   122: aload_3
    //   123: invokevirtual 36	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   126: goto -84 -> 42
    //   129: new 73	com/millennialmedia/android/MMJSResponse
    //   132: dup
    //   133: invokespecial 74	com/millennialmedia/android/MMJSResponse:<init>	()V
    //   136: astore 5
    //   138: aload 5
    //   140: iconst_1
    //   141: putfield 78	com/millennialmedia/android/MMJSResponse:result	I
    //   144: aload 5
    //   146: aload 8
    //   148: putfield 82	com/millennialmedia/android/MMJSResponse:response	Ljava/lang/Object;
    //   151: aload 5
    //   153: areturn
    //   154: aconst_null
    //   155: astore 5
    //   157: goto -6 -> 151
    //   160: astore 7
    //   162: aload 6
    //   164: astore_3
    //   165: goto -47 -> 118
    //
    // Exception table:
    //   from	to	target	type
    //   20	30	116	android/database/sqlite/SQLiteException
    //   30	42	160	android/database/sqlite/SQLiteException
  }

  // ERROR //
  public MMJSResponse cacheVideo(HashMap<String, String> paramHashMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 16	com/millennialmedia/android/MMCache:contextRef	Ljava/lang/ref/WeakReference;
    //   4: invokevirtual 22	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   7: checkcast 24	android/content/Context
    //   10: astore_2
    //   11: aload_1
    //   12: ldc 91
    //   14: invokevirtual 96	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   17: checkcast 98	java/lang/String
    //   20: astore_3
    //   21: aload_3
    //   22: ifnull +266 -> 288
    //   25: aload_2
    //   26: ifnull +262 -> 288
    //   29: getstatic 104	java/lang/System:out	Ljava/io/PrintStream;
    //   32: aload_3
    //   33: invokevirtual 110	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   36: new 112	com/millennialmedia/android/HttpGetRequest
    //   39: dup
    //   40: invokespecial 113	com/millennialmedia/android/HttpGetRequest:<init>	()V
    //   43: aload_3
    //   44: invokevirtual 116	com/millennialmedia/android/HttpGetRequest:get	(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    //   47: astore 6
    //   49: aload 6
    //   51: ifnonnull +14 -> 65
    //   54: ldc 118
    //   56: invokestatic 123	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   59: aconst_null
    //   60: astore 4
    //   62: goto +242 -> 304
    //   65: aload 6
    //   67: invokeinterface 129 1 0
    //   72: astore 7
    //   74: aload 7
    //   76: ifnonnull +48 -> 124
    //   79: ldc 131
    //   81: invokestatic 123	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   84: aconst_null
    //   85: astore 4
    //   87: goto +217 -> 304
    //   90: astore 5
    //   92: new 133	java/lang/StringBuilder
    //   95: dup
    //   96: invokespecial 134	java/lang/StringBuilder:<init>	()V
    //   99: ldc 136
    //   101: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: aload 5
    //   106: invokevirtual 144	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   109: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: invokevirtual 147	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: invokestatic 123	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   118: aconst_null
    //   119: astore 4
    //   121: goto +183 -> 304
    //   124: aload 7
    //   126: invokeinterface 153 1 0
    //   131: lconst_0
    //   132: lcmp
    //   133: ifne +14 -> 147
    //   136: ldc 155
    //   138: invokestatic 123	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   141: aconst_null
    //   142: astore 4
    //   144: goto +160 -> 304
    //   147: aload 7
    //   149: invokeinterface 159 1 0
    //   154: astore 8
    //   156: aload 8
    //   158: ifnull +130 -> 288
    //   161: aload 8
    //   163: invokeinterface 164 1 0
    //   168: ifnull +120 -> 288
    //   171: aload 8
    //   173: invokeinterface 164 1 0
    //   178: ldc 166
    //   180: invokevirtual 170	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   183: ifeq +105 -> 288
    //   186: new 56	com/millennialmedia/android/VideoAd
    //   189: dup
    //   190: aload 7
    //   192: invokeinterface 174 1 0
    //   197: invokestatic 178	com/millennialmedia/android/HttpGetRequest:convertStreamToString	(Ljava/io/InputStream;)Ljava/lang/String;
    //   200: invokespecial 180	com/millennialmedia/android/VideoAd:<init>	(Ljava/lang/String;)V
    //   203: astore 9
    //   205: invokestatic 185	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   208: ldc 187
    //   210: invokevirtual 191	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   213: ifeq +9 -> 222
    //   216: aload 9
    //   218: iconst_1
    //   219: putfield 195	com/millennialmedia/android/VideoAd:storedOnSdCard	Z
    //   222: aload 9
    //   224: ifnull +64 -> 288
    //   227: aload 9
    //   229: invokevirtual 198	com/millennialmedia/android/VideoAd:isValid	()Z
    //   232: ifeq +56 -> 288
    //   235: aload 9
    //   237: aload_2
    //   238: invokevirtual 201	com/millennialmedia/android/VideoAd:download	(Landroid/content/Context;)Z
    //   241: ifeq +47 -> 288
    //   244: invokestatic 205	com/millennialmedia/android/MMJSResponse:responseWithSuccess	()Lcom/millennialmedia/android/MMJSResponse;
    //   247: astore 4
    //   249: goto +55 -> 304
    //   252: astore 10
    //   254: aload 10
    //   256: invokevirtual 208	java/lang/IllegalStateException:printStackTrace	()V
    //   259: ldc 210
    //   261: invokestatic 123	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   264: aconst_null
    //   265: astore 4
    //   267: goto +37 -> 304
    //   270: astore 11
    //   272: aload 11
    //   274: invokevirtual 211	java/io/IOException:printStackTrace	()V
    //   277: ldc 210
    //   279: invokestatic 123	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   282: aconst_null
    //   283: astore 4
    //   285: goto +19 -> 304
    //   288: aconst_null
    //   289: astore 4
    //   291: goto +13 -> 304
    //   294: astore 11
    //   296: goto -24 -> 272
    //   299: astore 10
    //   301: goto -47 -> 254
    //   304: aload 4
    //   306: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   36	74	90	java/lang/Exception
    //   186	205	252	java/lang/IllegalStateException
    //   186	205	270	java/io/IOException
    //   205	222	294	java/io/IOException
    //   205	222	299	java/lang/IllegalStateException
  }

  public MMJSResponse playCachedVideo(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)this.contextRef.get();
    String str = (String)paramHashMap.get("videoId");
    Object localObject = null;
    MMJSResponse localMMJSResponse = null;
    if (str != null)
    {
      localMMJSResponse = null;
      if (localContext == null);
    }
    AdDatabaseHelper localAdDatabaseHelper;
    try
    {
      localAdDatabaseHelper = new AdDatabaseHelper(localContext);
    }
    catch (SQLiteException localSQLiteException2)
    {
      try
      {
        VideoAd localVideoAd = localAdDatabaseHelper.getVideoAd(str);
        localAdDatabaseHelper.close();
        if ((localVideoAd == null) || (!(localVideoAd.isOnDisk(localContext))) || (localVideoAd.isExpired()))
          break label254;
        Intent localIntent = new Intent().setClass(localContext, VideoPlayer.class);
        localIntent.setFlags(603979776);
        localIntent.putExtra("cached", true);
        localIntent.putExtra("adName", str);
        if ((localVideoAd.storedOnSdCard) && (Environment.getExternalStorageState().equals("mounted")))
        {
          localIntent.setData(Uri.parse(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + ".mmsyscache" + "/" + str + "/video.dat"));
          localContext.startActivity(localIntent);
          for (localMMJSResponse = MMJSResponse.responseWithSuccess(); ; localMMJSResponse = null)
          {
            do
            {
              label208: return localMMJSResponse;
              localSQLiteException2 = localSQLiteException2;
              label213: localMMJSResponse = null;
            }
            while (localObject == null);
            localObject.close();
          }
        }
        label254: localIntent.setData(Uri.parse(str));
      }
      catch (SQLiteException localSQLiteException1)
      {
        localObject = localAdDatabaseHelper;
        break label213:
        localMMJSResponse = null;
        break label208:
      }
    }
  }

  public MMJSResponse videoIdExists(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)this.contextRef.get();
    String str = (String)paramHashMap.get("videoId");
    Object localObject = null;
    VideoAd localVideoAd = null;
    if ((str != null) && (localContext != null));
    AdDatabaseHelper localAdDatabaseHelper;
    try
    {
      localAdDatabaseHelper = new AdDatabaseHelper(localContext);
    }
    catch (SQLiteException localSQLiteException2)
    {
      try
      {
        localVideoAd = localAdDatabaseHelper.getVideoAd(str);
        localAdDatabaseHelper.close();
        while ((localVideoAd != null) && (localVideoAd.isOnDisk(localContext)) && (!(localVideoAd.isExpired())))
        {
          localMMJSResponse = MMJSResponse.responseWithSuccess();
          return localMMJSResponse;
          localSQLiteException2 = localSQLiteException2;
          label90: if (localObject == null)
            continue;
          localObject.close();
        }
        MMJSResponse localMMJSResponse = null;
      }
      catch (SQLiteException localSQLiteException1)
      {
        localObject = localAdDatabaseHelper;
        break label90:
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMCache
 * JD-Core Version:    0.5.3
 */