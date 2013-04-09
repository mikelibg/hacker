package com.millennialmedia.android;

import android.content.Context;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class VideoAd extends BasicCachedAd
  implements Parcelable
{
  public static final Parcelable.Creator<VideoAd> CREATOR = new Parcelable.Creator()
  {
    public VideoAd createFromParcel(Parcel paramParcel)
    {
      return new VideoAd(paramParcel);
    }

    public VideoAd[] newArray(int paramInt)
    {
      return new VideoAd[paramInt];
    }
  };
  ArrayList<VideoLogEvent> activities = new ArrayList();
  ArrayList<VideoImage> buttons = new ArrayList();
  String[] cacheComplete;
  String[] cacheFailed;
  long contentLength;
  long duration;
  String[] endActivity;
  String onCompletionUrl;
  boolean showControls;
  boolean showCountdown;
  String[] startActivity;
  boolean stayInPlayer;
  boolean storedOnSdCard;
  String[] videoError;

  VideoAd()
  {
  }

  VideoAd(Parcel paramParcel)
  {
    String str;
    SimpleDateFormat localSimpleDateFormat;
    try
    {
      this.id = paramParcel.readString();
      this.acid = paramParcel.readString();
      this.contentUrl = paramParcel.readString();
      this.startActivity = new String[paramParcel.readInt()];
      paramParcel.readStringArray(this.startActivity);
      this.endActivity = new String[paramParcel.readInt()];
      paramParcel.readStringArray(this.endActivity);
      boolean[] arrayOfBoolean = new boolean[4];
      paramParcel.readBooleanArray(arrayOfBoolean);
      this.showControls = arrayOfBoolean[0];
      this.stayInPlayer = arrayOfBoolean[1];
      this.showCountdown = arrayOfBoolean[2];
      this.storedOnSdCard = arrayOfBoolean[3];
      str = paramParcel.readString();
      label153: localSimpleDateFormat = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy");
    }
    catch (Exception localException)
    {
      try
      {
        this.expiration = localSimpleDateFormat.parse(str);
        this.onCompletionUrl = paramParcel.readString();
        this.duration = paramParcel.readLong();
        this.contentLength = paramParcel.readLong();
        this.buttons = paramParcel.readArrayList(VideoImage.class.getClassLoader());
        this.activities = paramParcel.readArrayList(VideoLogEvent.class.getClassLoader());
        this.deferredViewStart = paramParcel.readLong();
        this.cacheComplete = new String[paramParcel.readInt()];
        paramParcel.readStringArray(this.cacheComplete);
        this.cacheFailed = new String[paramParcel.readInt()];
        paramParcel.readStringArray(this.cacheFailed);
        this.videoError = new String[paramParcel.readInt()];
        paramParcel.readStringArray(this.videoError);
      }
      catch (ParseException localParseException)
      {
        localParseException.printStackTrace();
        break label153:
        localException = localException;
        localException.printStackTrace();
      }
    }
  }

  VideoAd(String paramString)
  {
    if (paramString != null);
    JSONObject localJSONObject2;
    try
    {
      JSONObject localJSONObject1 = new JSONObject(paramString);
      localJSONObject2 = localJSONObject1;
      if (localJSONObject2 != null)
      {
        JSONObject localJSONObject3 = localJSONObject2.optJSONObject("video");
        if (localJSONObject3 != null)
          deserializeFromObj(localJSONObject3);
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      localJSONObject2 = null;
    }
  }

  private void deserializeFromObj(JSONObject paramJSONObject)
  {
    this.id = paramJSONObject.optString("id", null);
    this.acid = paramJSONObject.optString("vid", null);
    this.contentUrl = paramJSONObject.optString("content-url", null);
    JSONArray localJSONArray1 = paramJSONObject.optJSONArray("startActivity");
    if (localJSONArray1 != null)
    {
      this.startActivity = new String[localJSONArray1.length()];
      for (int i3 = 0; ; ++i3)
      {
        if (i3 >= localJSONArray1.length())
          break label94;
        this.startActivity[i3] = localJSONArray1.optString(i3);
      }
    }
    this.startActivity = new String[0];
    label94: JSONArray localJSONArray2 = paramJSONObject.optJSONArray("endActivity");
    if (localJSONArray2 != null)
    {
      this.endActivity = new String[localJSONArray2.length()];
      for (int i2 = 0; ; ++i2)
      {
        if (i2 >= localJSONArray2.length())
          break label155;
        this.endActivity[i2] = localJSONArray2.optString(i2);
      }
    }
    this.endActivity = new String[0];
    label155: JSONArray localJSONArray3 = paramJSONObject.optJSONArray("cacheComplete");
    if (localJSONArray3 != null)
    {
      this.cacheComplete = new String[localJSONArray3.length()];
      for (int i1 = 0; ; ++i1)
      {
        if (i1 >= localJSONArray3.length())
          break label221;
        this.cacheComplete[i1] = localJSONArray3.optString(i1);
      }
    }
    this.cacheComplete = new String[0];
    label221: JSONArray localJSONArray4 = paramJSONObject.optJSONArray("cacheFailed");
    if (localJSONArray4 != null)
    {
      this.cacheFailed = new String[localJSONArray4.length()];
      for (int l = 0; ; ++l)
      {
        if (l >= localJSONArray4.length())
          break label287;
        this.cacheFailed[l] = localJSONArray4.optString(l);
      }
    }
    this.cacheFailed = new String[0];
    label287: JSONArray localJSONArray5 = paramJSONObject.optJSONArray("videoError");
    if (localJSONArray5 != null)
    {
      this.videoError = new String[localJSONArray5.length()];
      for (int k = 0; ; ++k)
      {
        if (k >= localJSONArray5.length())
          break label353;
        this.videoError[k] = localJSONArray5.optString(k);
      }
    }
    this.videoError = new String[0];
    label353: this.showControls = paramJSONObject.optBoolean("showVideoPlayerControls");
    this.showCountdown = paramJSONObject.optBoolean("showCountdownHUD");
    String str = paramJSONObject.optString("expiration", null);
    SimpleDateFormat localSimpleDateFormat;
    if (str != null)
      localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ZZZZ");
    try
    {
      this.expiration = localSimpleDateFormat.parse(str);
      label409: JSONObject localJSONObject1 = paramJSONObject.optJSONObject("onCompletion");
      if (localJSONObject1 != null)
      {
        this.onCompletionUrl = localJSONObject1.optString("url", null);
        this.stayInPlayer = localJSONObject1.optBoolean("stayInPlayer");
      }
      this.duration = (1000L * ()paramJSONObject.optDouble("duration", 0.0D));
      this.contentLength = paramJSONObject.optLong("contentLength");
      JSONArray localJSONArray6 = paramJSONObject.optJSONArray("buttons");
      if (localJSONArray6 == null)
        break label548;
      int j = 0;
      if (j >= localJSONArray6.length())
        break label548;
      JSONObject localJSONObject3 = localJSONArray6.optJSONObject(j);
      if (localJSONObject3 != null)
      {
        VideoImage localVideoImage = new VideoImage(localJSONObject3);
        this.buttons.add(localVideoImage);
      }
      label548: ++j;
    }
    catch (ParseException localParseException)
    {
      localParseException.printStackTrace();
      break label409:
      JSONArray localJSONArray7 = paramJSONObject.optJSONArray("log");
      if (localJSONArray7 != null)
        for (int i = 0; i < localJSONArray7.length(); ++i)
        {
          JSONObject localJSONObject2 = localJSONArray7.optJSONObject(i);
          if (localJSONObject2 == null)
            continue;
          VideoLogEvent localVideoLogEvent = new VideoLogEvent(localJSONObject2);
          this.activities.add(localVideoLogEvent);
        }
      this.deferredViewStart = System.currentTimeMillis();
    }
  }

  public int describeContents()
  {
    return 0;
  }

  // ERROR //
  boolean download(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokestatic 244	com/millennialmedia/android/MMAdViewController:initCachedAdDirectory	(Lcom/millennialmedia/android/VideoAd;Landroid/content/Context;)Ljava/io/File;
    //   5: astore_2
    //   6: new 246	java/lang/StringBuilder
    //   9: dup
    //   10: invokespecial 247	java/lang/StringBuilder:<init>	()V
    //   13: ldc 249
    //   15: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   18: aload_2
    //   19: invokevirtual 256	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   22: invokevirtual 259	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   25: invokestatic 264	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   28: aload_0
    //   29: getfield 67	com/millennialmedia/android/VideoAd:contentUrl	Ljava/lang/String;
    //   32: ldc_w 266
    //   35: aload_2
    //   36: invokestatic 270	com/millennialmedia/android/MMAdViewController:downloadComponent	(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    //   39: istore_3
    //   40: iload_3
    //   41: ifeq +51 -> 92
    //   44: iconst_0
    //   45: istore 8
    //   47: iload 8
    //   49: aload_0
    //   50: getfield 45	com/millennialmedia/android/VideoAd:buttons	Ljava/util/ArrayList;
    //   53: invokevirtual 273	java/util/ArrayList:size	()I
    //   56: if_icmpge +36 -> 92
    //   59: aload_0
    //   60: getfield 45	com/millennialmedia/android/VideoAd:buttons	Ljava/util/ArrayList;
    //   63: iload 8
    //   65: invokevirtual 277	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   68: checkcast 120	com/millennialmedia/android/VideoImage
    //   71: astore 9
    //   73: aload 9
    //   75: getfield 280	com/millennialmedia/android/VideoImage:imageUrl	Ljava/lang/String;
    //   78: aload 9
    //   80: invokevirtual 283	com/millennialmedia/android/VideoImage:getImageName	()Ljava/lang/String;
    //   83: aload_2
    //   84: invokestatic 270	com/millennialmedia/android/MMAdViewController:downloadComponent	(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    //   87: istore_3
    //   88: iload_3
    //   89: ifne +47 -> 136
    //   92: iload_3
    //   93: ifne +49 -> 142
    //   96: aload_1
    //   97: aload_0
    //   98: getfield 61	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
    //   101: invokestatic 287	com/millennialmedia/android/MMAdViewController:deleteAd	(Landroid/content/Context;Ljava/lang/String;)V
    //   104: aload_0
    //   105: getfield 139	com/millennialmedia/android/VideoAd:cacheFailed	[Ljava/lang/String;
    //   108: invokestatic 291	com/millennialmedia/android/HttpGetRequest:log	([Ljava/lang/String;)V
    //   111: new 246	java/lang/StringBuilder
    //   114: dup
    //   115: invokespecial 247	java/lang/StringBuilder:<init>	()V
    //   118: ldc_w 293
    //   121: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: iload_3
    //   125: invokevirtual 296	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   128: invokevirtual 259	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokestatic 264	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   134: iload_3
    //   135: ireturn
    //   136: iinc 8 1
    //   139: goto -92 -> 47
    //   142: aconst_null
    //   143: astore 4
    //   145: new 298	com/millennialmedia/android/AdDatabaseHelper
    //   148: dup
    //   149: aload_1
    //   150: invokespecial 301	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   153: astore 5
    //   155: aload 5
    //   157: aload_0
    //   158: getfield 61	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
    //   161: invokevirtual 304	com/millennialmedia/android/AdDatabaseHelper:checkIfAdExists	(Ljava/lang/String;)Z
    //   164: ifeq +60 -> 224
    //   167: ldc_w 306
    //   170: invokestatic 309	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   173: aload 5
    //   175: aload_0
    //   176: invokevirtual 313	com/millennialmedia/android/AdDatabaseHelper:updateAdData	(Lcom/millennialmedia/android/VideoAd;)V
    //   179: aload_0
    //   180: getfield 64	com/millennialmedia/android/VideoAd:acid	Ljava/lang/String;
    //   183: ifnull +21 -> 204
    //   186: aload_0
    //   187: getfield 64	com/millennialmedia/android/VideoAd:acid	Ljava/lang/String;
    //   190: invokevirtual 314	java/lang/String:length	()I
    //   193: ifle +11 -> 204
    //   196: aload_1
    //   197: aload_0
    //   198: getfield 64	com/millennialmedia/android/VideoAd:acid	Ljava/lang/String;
    //   201: invokestatic 317	com/millennialmedia/android/MMAdViewController:cachedVideoWasAdded	(Landroid/content/Context;Ljava/lang/String;)V
    //   204: aload 5
    //   206: ifnull +89 -> 295
    //   209: aload 5
    //   211: invokevirtual 320	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   214: aload_0
    //   215: getfield 137	com/millennialmedia/android/VideoAd:cacheComplete	[Ljava/lang/String;
    //   218: invokestatic 291	com/millennialmedia/android/HttpGetRequest:log	([Ljava/lang/String;)V
    //   221: goto -110 -> 111
    //   224: ldc_w 322
    //   227: invokestatic 264	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   230: aload 5
    //   232: aload_0
    //   233: invokevirtual 325	com/millennialmedia/android/AdDatabaseHelper:storeAd	(Lcom/millennialmedia/android/VideoAd;)V
    //   236: goto -57 -> 179
    //   239: astore 7
    //   241: aload 5
    //   243: astore 4
    //   245: aload 7
    //   247: invokevirtual 326	android/database/sqlite/SQLiteException:printStackTrace	()V
    //   250: aload 4
    //   252: ifnull -38 -> 214
    //   255: aload 4
    //   257: invokevirtual 320	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   260: goto -46 -> 214
    //   263: astore 6
    //   265: aload 4
    //   267: ifnull +8 -> 275
    //   270: aload 4
    //   272: invokevirtual 320	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   275: aload 6
    //   277: athrow
    //   278: astore 6
    //   280: aload 5
    //   282: astore 4
    //   284: goto -19 -> 265
    //   287: astore 7
    //   289: aconst_null
    //   290: astore 4
    //   292: goto -47 -> 245
    //   295: goto -81 -> 214
    //
    // Exception table:
    //   from	to	target	type
    //   155	204	239	android/database/sqlite/SQLiteException
    //   224	236	239	android/database/sqlite/SQLiteException
    //   145	155	263	finally
    //   245	250	263	finally
    //   155	204	278	finally
    //   224	236	278	finally
    //   145	155	287	android/database/sqlite/SQLiteException
  }

  boolean isExpired()
  {
    if ((this.expiration != null) && (this.expiration.getTime() <= System.currentTimeMillis()));
    for (int i = 1; ; i = 0)
      return i;
  }

  boolean isOnDisk(Context paramContext)
  {
    File localFile1;
    if ((this.storedOnSdCard) && (Environment.getExternalStorageState().equals("mounted")))
    {
      localFile1 = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + ".mmsyscache" + "/" + this.id);
      label71: boolean bool = localFile1.exists();
      i = 0;
      if (bool)
      {
        String[] arrayOfString = localFile1.list();
        i = 0;
        if (arrayOfString != null)
        {
          int j = arrayOfString.length;
          int k = 1 + this.buttons.size();
          i = 0;
          if (j >= k)
            i = 1;
        }
      }
      if (i != 0)
      {
        if (this.contentLength <= 0L)
          break label221;
        File localFile2 = new File(localFile1, "video.dat");
        if ((localFile2.exists()) && (localFile2.length() == this.contentLength))
          break label221;
      }
    }
    for (int i = 0; ; i = 0)
    {
      return i;
      localFile1 = new File(paramContext.getCacheDir() + "/" + this.id);
      break label71:
      label221: Iterator localIterator = this.buttons.iterator();
      VideoImage localVideoImage;
      File localFile3;
      do
      {
        do
        {
          if (localIterator.hasNext());
          localVideoImage = (VideoImage)localIterator.next();
        }
        while (localVideoImage.contentLength <= 0L);
        localFile3 = new File(localFile1, localVideoImage.getImageName());
      }
      while ((localFile3.exists()) && (localFile3.length() == localVideoImage.contentLength));
    }
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.id);
    paramParcel.writeString(this.acid);
    paramParcel.writeString(this.contentUrl);
    paramParcel.writeInt(this.startActivity.length);
    paramParcel.writeStringArray(this.startActivity);
    paramParcel.writeInt(this.endActivity.length);
    paramParcel.writeStringArray(this.endActivity);
    boolean[] arrayOfBoolean = new boolean[4];
    arrayOfBoolean[0] = this.showControls;
    arrayOfBoolean[1] = this.stayInPlayer;
    arrayOfBoolean[2] = this.showCountdown;
    arrayOfBoolean[3] = this.storedOnSdCard;
    paramParcel.writeBooleanArray(arrayOfBoolean);
    if (this.expiration != null)
      paramParcel.writeString(this.expiration.toString());
    paramParcel.writeString(this.onCompletionUrl);
    paramParcel.writeLong(this.duration);
    paramParcel.writeLong(this.contentLength);
    paramParcel.writeList(this.buttons);
    paramParcel.writeList(this.activities);
    paramParcel.writeLong(this.deferredViewStart);
    paramParcel.writeInt(this.cacheComplete.length);
    paramParcel.writeStringArray(this.cacheComplete);
    paramParcel.writeInt(this.cacheFailed.length);
    paramParcel.writeStringArray(this.cacheFailed);
    paramParcel.writeInt(this.videoError.length);
    paramParcel.writeStringArray(this.videoError);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.VideoAd
 * JD-Core Version:    0.5.3
 */