package com.parse;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.util.Arrays;
import java.util.List;
import java.util.TimeZone;

public class ParseInstallation extends ParseObject
{
  static final String CLASS_NAME = "_Installation";
  private static final String STORAGE_LOCATION = "currentInstallation";
  private static final String TAG = "com.parse.ParseInstallation";
  static ParseInstallation currentInstallation = null;
  private static final List<String> readonlyFields = Arrays.asList(new String[] { "deviceType", "installationId", "deviceToken", "timeZone", "appVersion", "appName", "parseVersion" });

  ParseInstallation()
  {
    this(false);
  }

  ParseInstallation(boolean paramBoolean)
  {
    super("_Installation", paramBoolean);
    if (paramBoolean)
      return;
    super.put("deviceType", "android");
    super.put("installationId", getOrCreateCurrentInstallationId());
  }

  static void clearCurrentInstallationFromDisk(Context paramContext)
  {
    monitorenter;
    try
    {
      currentInstallation = null;
      ParseObject.deleteDiskObject(paramContext, "currentInstallation");
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

  public static ParseInstallation getCurrentInstallation()
  {
    monitorenter;
    try
    {
      if (currentInstallation != null);
      ParseObject localParseObject;
      for (ParseInstallation localParseInstallation = currentInstallation; ; localParseInstallation = currentInstallation)
      {
        return localParseInstallation;
        localParseObject = getFromDisk(Parse.applicationContext, "currentInstallation");
        if (localParseObject != null)
          break;
        currentInstallation = new ParseInstallation();
      }
      currentInstallation = (ParseInstallation)localParseObject;
    }
    finally
    {
      monitorexit;
    }
  }

  // ERROR //
  private static String getOrCreateCurrentInstallationId()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 22	com/parse/ParseInstallation:currentInstallation	Lcom/parse/ParseInstallation;
    //   6: ifnull +21 -> 27
    //   9: getstatic 22	com/parse/ParseInstallation:currentInstallation	Lcom/parse/ParseInstallation;
    //   12: invokevirtual 94	com/parse/ParseInstallation:getInstallationId	()Ljava/lang/String;
    //   15: astore 15
    //   17: aload 15
    //   19: astore 7
    //   21: ldc 2
    //   23: monitorexit
    //   24: aload 7
    //   26: areturn
    //   27: new 96	java/io/File
    //   30: dup
    //   31: invokestatic 100	com/parse/Parse:getParseDir	()Ljava/io/File;
    //   34: ldc 28
    //   36: invokespecial 103	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   39: astore_1
    //   40: aconst_null
    //   41: astore_2
    //   42: aload_1
    //   43: invokevirtual 107	java/io/File:exists	()Z
    //   46: istore 9
    //   48: aconst_null
    //   49: astore_2
    //   50: iload 9
    //   52: ifne +53 -> 105
    //   55: invokestatic 113	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   58: invokevirtual 116	java/util/UUID:toString	()Ljava/lang/String;
    //   61: astore 7
    //   63: new 118	java/io/RandomAccessFile
    //   66: dup
    //   67: aload_1
    //   68: ldc 120
    //   70: invokespecial 121	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   73: astore 10
    //   75: aload 10
    //   77: aload 7
    //   79: invokevirtual 125	java/io/RandomAccessFile:writeBytes	(Ljava/lang/String;)V
    //   82: aload 10
    //   84: invokevirtual 128	java/io/RandomAccessFile:close	()V
    //   87: aload 10
    //   89: ifnull -68 -> 21
    //   92: aload 10
    //   94: invokevirtual 128	java/io/RandomAccessFile:close	()V
    //   97: goto -76 -> 21
    //   100: astore 14
    //   102: goto -81 -> 21
    //   105: ldc 14
    //   107: ldc 130
    //   109: invokestatic 89	com/parse/Parse:logV	(Ljava/lang/String;Ljava/lang/String;)V
    //   112: new 118	java/io/RandomAccessFile
    //   115: dup
    //   116: aload_1
    //   117: ldc 132
    //   119: invokespecial 121	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   122: astore 10
    //   124: aload 10
    //   126: invokevirtual 136	java/io/RandomAccessFile:length	()J
    //   129: l2i
    //   130: newarray byte
    //   132: astore 12
    //   134: aload 10
    //   136: aload 12
    //   138: invokevirtual 140	java/io/RandomAccessFile:readFully	([B)V
    //   141: new 24	java/lang/String
    //   144: dup
    //   145: aload 12
    //   147: invokespecial 142	java/lang/String:<init>	([B)V
    //   150: astore 7
    //   152: aload 10
    //   154: ifnull -133 -> 21
    //   157: aload 10
    //   159: invokevirtual 128	java/io/RandomAccessFile:close	()V
    //   162: goto -141 -> 21
    //   165: astore 13
    //   167: goto -146 -> 21
    //   170: astore 5
    //   172: invokestatic 113	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   175: invokevirtual 116	java/util/UUID:toString	()Ljava/lang/String;
    //   178: astore 6
    //   180: aload 6
    //   182: astore 7
    //   184: aload_2
    //   185: ifnull -164 -> 21
    //   188: aload_2
    //   189: invokevirtual 128	java/io/RandomAccessFile:close	()V
    //   192: goto -171 -> 21
    //   195: astore 8
    //   197: goto -176 -> 21
    //   200: astore_3
    //   201: aload_2
    //   202: ifnull +7 -> 209
    //   205: aload_2
    //   206: invokevirtual 128	java/io/RandomAccessFile:close	()V
    //   209: aload_3
    //   210: athrow
    //   211: astore_0
    //   212: ldc 2
    //   214: monitorexit
    //   215: aload_0
    //   216: athrow
    //   217: astore 4
    //   219: goto -10 -> 209
    //   222: astore_3
    //   223: aload 10
    //   225: astore_2
    //   226: goto -25 -> 201
    //   229: astore 11
    //   231: aload 10
    //   233: astore_2
    //   234: goto -62 -> 172
    //
    // Exception table:
    //   from	to	target	type
    //   92	97	100	java/io/IOException
    //   157	162	165	java/io/IOException
    //   42	75	170	java/io/IOException
    //   105	124	170	java/io/IOException
    //   188	192	195	java/io/IOException
    //   42	75	200	finally
    //   105	124	200	finally
    //   172	180	200	finally
    //   3	17	211	finally
    //   27	40	211	finally
    //   92	97	211	finally
    //   157	162	211	finally
    //   188	192	211	finally
    //   205	209	211	finally
    //   209	211	211	finally
    //   205	209	217	java/io/IOException
    //   75	87	222	finally
    //   124	152	222	finally
    //   75	87	229	java/io/IOException
    //   124	152	229	java/io/IOException
  }

  public static ParseQuery getQuery()
  {
    return new ParseQuery("_Installation");
  }

  private static void maybeFlushToDisk(ParseInstallation paramParseInstallation)
  {
    monitorenter;
    try
    {
      if (currentInstallation == paramParseInstallation)
        paramParseInstallation.saveToDisk(Parse.applicationContext, "currentInstallation");
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

  private void updateTimezone()
  {
    String str = TimeZone.getDefault().getID();
    if ((str.indexOf(47) <= 0) || (str.equals(get("timeZone"))))
      return;
    super.put("timeZone", str);
  }

  private void updateVersionInfo()
  {
    int i = 1;
    String str2;
    label76: int j;
    try
    {
      String str1 = Parse.applicationContext.getPackageName();
      PackageManager localPackageManager = Parse.applicationContext.getPackageManager();
      str2 = localPackageManager.getPackageInfo(str1, 0).versionName;
      String str3 = localPackageManager.getApplicationLabel(localPackageManager.getApplicationInfo(str1, 0)).toString();
      if ((str3 == null) || (str3.equals(get("appName"))))
        break label150;
      super.put("appName", str3);
      break label150:
      while (!(str2.equals(get("appVersion"))))
      {
        if ((i & j) != 0)
          super.put("appVersion", str2);
        if (!("1.1.6".equals(get("parseVersion"))))
          label105: super.put("parseVersion", "1.1.6");
        return;
        j = 0;
      }
      label150: i = 0;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Parse.logW("com.parse.ParseInstallation", "Cannot load package info; will not be saved to installation");
      break label105:
      if (str2 != null);
      j = i;
      break label76:
    }
  }

  void checkKeyIsMutable(String paramString)
    throws IllegalArgumentException
  {
    if (!(readonlyFields.contains(paramString)))
      return;
    throw new IllegalArgumentException("Cannot change " + paramString + " property of an installation object.");
  }

  public ParseObject fetch()
    throws ParseException
  {
    if (getObjectId() == null)
      save();
    ParseObject localParseObject = super.fetch();
    maybeFlushToDisk(this);
    return localParseObject;
  }

  public String getInstallationId()
  {
    return getString("installationId");
  }

  public void put(String paramString, Object paramObject)
    throws IllegalArgumentException
  {
    checkKeyIsMutable(paramString);
    super.put(paramString, paramObject);
  }

  public void remove(String paramString)
  {
    checkKeyIsMutable(paramString);
    super.remove(paramString);
  }

  protected void save(boolean paramBoolean)
    throws ParseException
  {
    updateTimezone();
    updateVersionInfo();
    super.put("installationId", getOrCreateCurrentInstallationId());
    super.put("deviceType", "android");
    if (paramBoolean)
      checkIfRunning(true);
    super.save(false);
    maybeFlushToDisk(this);
    finishedRunning();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ParseInstallation
 * JD-Core Version:    0.5.3
 */