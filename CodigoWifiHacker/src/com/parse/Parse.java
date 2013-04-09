package com.parse;

import android.content.Context;
import android.util.Log;
import com.parse.codec.binary.Base64;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SimpleTimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class Parse
{
  public static final int LOG_LEVEL_DEBUG = 3;
  public static final int LOG_LEVEL_ERROR = 6;
  public static final int LOG_LEVEL_INFO = 4;
  public static final int LOG_LEVEL_NONE = 2147483647;
  public static final int LOG_LEVEL_VERBOSE = 2;
  public static final int LOG_LEVEL_WARNING = 5;
  private static final String TAG = "com.parse.Parse";
  static Context applicationContext;
  static String applicationId;
  static String clientKey;
  static ParseCommandCache commandCache;
  private static final DateFormat dateFormat;
  private static int logLevel = 6;
  static int maxKeyValueCacheBytes;
  static int maxKeyValueCacheFiles;
  static int maxParseFileSize = 10485760;

  static
  {
    maxKeyValueCacheBytes = 2097152;
    maxKeyValueCacheFiles = 1000;
    commandCache = null;
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    localSimpleDateFormat.setTimeZone(new SimpleTimeZone(0, "GMT"));
    dateFormat = localSimpleDateFormat;
  }

  private Parse()
  {
    throw new AssertionError();
  }

  static Number addNumbers(Number paramNumber1, Number paramNumber2)
  {
    if (paramNumber1 instanceof Double);
    for (Object localObject = Double.valueOf(paramNumber1.doubleValue() + paramNumber2.doubleValue()); ; localObject = Integer.valueOf(paramNumber1.intValue() + paramNumber2.intValue()))
      while (true)
      {
        return localObject;
        if (paramNumber1 instanceof Long)
          localObject = Long.valueOf(paramNumber1.longValue() + paramNumber2.longValue());
        if (paramNumber1 instanceof Float)
          localObject = Float.valueOf(paramNumber1.floatValue() + paramNumber2.floatValue());
        if (paramNumber1 instanceof Short)
          localObject = Integer.valueOf(paramNumber1.shortValue() + paramNumber2.shortValue());
        if (!(paramNumber1 instanceof Byte))
          break;
        localObject = Integer.valueOf(paramNumber1.byteValue() + paramNumber2.byteValue());
      }
  }

  // ERROR //
  static void checkCacheApplicationId()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 137	com/parse/Parse:applicationId	Ljava/lang/String;
    //   6: ifnull +134 -> 140
    //   9: new 139	java/io/File
    //   12: dup
    //   13: invokestatic 143	com/parse/Parse:getParseDir	()Ljava/io/File;
    //   16: ldc 144
    //   18: invokespecial 147	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   21: astore_1
    //   22: aload_1
    //   23: invokevirtual 151	java/io/File:exists	()Z
    //   26: istore_2
    //   27: iload_2
    //   28: ifeq +71 -> 99
    //   31: new 153	java/io/RandomAccessFile
    //   34: dup
    //   35: aload_1
    //   36: ldc 155
    //   38: invokespecial 156	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   41: astore 8
    //   43: aload 8
    //   45: invokevirtual 159	java/io/RandomAccessFile:length	()J
    //   48: l2i
    //   49: newarray byte
    //   51: astore 12
    //   53: aload 8
    //   55: aload 12
    //   57: invokevirtual 163	java/io/RandomAccessFile:readFully	([B)V
    //   60: aload 8
    //   62: invokevirtual 166	java/io/RandomAccessFile:close	()V
    //   65: new 168	java/lang/String
    //   68: dup
    //   69: aload 12
    //   71: ldc 170
    //   73: invokespecial 173	java/lang/String:<init>	([BLjava/lang/String;)V
    //   76: getstatic 137	com/parse/Parse:applicationId	Ljava/lang/String;
    //   79: invokevirtual 177	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   82: istore 13
    //   84: iload 13
    //   86: istore 10
    //   88: iload 10
    //   90: ifne +9 -> 99
    //   93: invokestatic 143	com/parse/Parse:getParseDir	()Ljava/io/File;
    //   96: invokestatic 181	com/parse/Parse:recursiveDelete	(Ljava/io/File;)V
    //   99: new 139	java/io/File
    //   102: dup
    //   103: invokestatic 143	com/parse/Parse:getParseDir	()Ljava/io/File;
    //   106: ldc 144
    //   108: invokespecial 147	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   111: astore_3
    //   112: new 183	java/io/FileOutputStream
    //   115: dup
    //   116: aload_3
    //   117: invokespecial 185	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   120: astore 4
    //   122: aload 4
    //   124: getstatic 137	com/parse/Parse:applicationId	Ljava/lang/String;
    //   127: ldc 170
    //   129: invokevirtual 189	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   132: invokevirtual 192	java/io/FileOutputStream:write	([B)V
    //   135: aload 4
    //   137: invokevirtual 193	java/io/FileOutputStream:close	()V
    //   140: ldc 2
    //   142: monitorexit
    //   143: return
    //   144: astore_0
    //   145: ldc 2
    //   147: monitorexit
    //   148: aload_0
    //   149: athrow
    //   150: astore 7
    //   152: goto -12 -> 140
    //   155: astore 6
    //   157: goto -17 -> 140
    //   160: astore 5
    //   162: goto -22 -> 140
    //   165: astore 11
    //   167: iconst_0
    //   168: istore 10
    //   170: goto -82 -> 88
    //   173: astore 9
    //   175: iconst_0
    //   176: istore 10
    //   178: goto -90 -> 88
    //
    // Exception table:
    //   from	to	target	type
    //   3	27	144	finally
    //   31	84	144	finally
    //   93	112	144	finally
    //   112	140	144	finally
    //   112	140	150	java/io/IOException
    //   112	140	155	java/io/UnsupportedEncodingException
    //   112	140	160	java/io/FileNotFoundException
    //   31	84	165	java/io/IOException
    //   31	84	173	java/io/FileNotFoundException
  }

  static void checkContext()
  {
    if (applicationContext != null)
      return;
    throw new RuntimeException("applicationContext is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library.");
  }

  static void checkInit()
  {
    if (applicationId == null)
      throw new RuntimeException("applicationId is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library.");
    if (clientKey != null)
      return;
    throw new RuntimeException("clientKey is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library.");
  }

  static void clearCacheDir()
  {
    File[] arrayOfFile = getKeyValueCacheDir().listFiles();
    if (arrayOfFile == null)
      return;
    for (int i = 0; ; ++i)
    {
      if (i < arrayOfFile.length);
      arrayOfFile[i].delete();
    }
  }

  static void clearFromKeyValueCache(String paramString)
  {
    File localFile = getKeyValueCacheFile(paramString);
    if (localFile == null)
      return;
    localFile.delete();
  }

  static List<Object> convertArrayToList(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    if (i < paramJSONArray.length())
    {
      label10: Object localObject1 = paramJSONArray.opt(i);
      Object localObject2 = decodeJSONObject(localObject1);
      if (localObject2 != null)
        localArrayList.add(localObject2);
      while (true)
      {
        ++i;
        break label10:
        localArrayList.add(localObject1);
      }
    }
    return localArrayList;
  }

  static Map<String, Object> convertJSONObjectToMap(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject1 = paramJSONObject.opt(str);
      Object localObject2 = decodeJSONObject(localObject1);
      if (localObject2 != null)
        localHashMap.put(str, localObject2);
      if (localObject1 instanceof JSONArray)
        localHashMap.put(str, convertArrayToList((JSONArray)localObject1));
      localHashMap.put(str, localObject1);
    }
    return localHashMap;
  }

  static File createKeyValueCacheFile(String paramString)
  {
    String str = String.valueOf(new Date().getTime()) + '.' + paramString;
    return new File(getKeyValueCacheDir(), str);
  }

  static JSONObject dateToObject(Date paramDate)
  {
    JSONObject localJSONObject = new JSONObject();
    String str = encodeDate(paramDate);
    try
    {
      localJSONObject.put("__type", "Date");
      localJSONObject.put("iso", str);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException);
    }
  }

  static Object decodeJSONObject(Object paramObject)
  {
    JSONObject localJSONObject1;
    if (paramObject instanceof JSONObject)
    {
      localJSONObject1 = (JSONObject)paramObject;
      if (localJSONObject1.optString("__op", null) == null)
        break label51;
    }
    while (true)
    {
      try
      {
        ParseFieldOperation localParseFieldOperation = ParseFieldOperations.decode(localJSONObject1);
        localObject = localParseFieldOperation;
        return localObject;
        localObject = null;
      }
      catch (JSONException localJSONException3)
      {
        throw new RuntimeException(localJSONException3);
      }
      label51: String str = localJSONObject1.optString("__type", null);
      if (str == null)
        localObject = convertJSONObjectToMap(localJSONObject1);
      if (str.equals("Date"))
        localObject = parseDate(localJSONObject1.optString("iso"));
      if (str.equals("Bytes"))
        localObject = Base64.decodeBase64(localJSONObject1.optString("base64"));
      if (str.equals("Pointer"))
        localObject = ParseObject.createWithoutData(localJSONObject1.optString("className"), localJSONObject1.optString("objectId"));
      if (str.equals("File"))
        localObject = new ParseFile(localJSONObject1.optString("name"), localJSONObject1.optString("url"));
      if (str.equals("GeoPoint"))
        try
        {
          double d1 = localJSONObject1.getDouble("latitude");
          double d2 = localJSONObject1.getDouble("longitude");
          localObject = new ParseGeoPoint(d1, d2);
        }
        catch (JSONException localJSONException2)
        {
          throw new RuntimeException(localJSONException2);
        }
      if (str.equals("Object"))
      {
        JSONObject localJSONObject2 = new JSONObject();
        try
        {
          localJSONObject2.put("data", localJSONObject1);
          localObject = ParseObject.createWithoutData(localJSONObject1.optString("className"), null);
          ((ParseObject)localObject).mergeAfterFetch(localJSONObject2);
        }
        catch (JSONException localJSONException1)
        {
          throw new RuntimeException(localJSONException1);
        }
      }
      if (str.equals("Relation"))
        localObject = new ParseRelation(localJSONObject1.optString("className", null));
      Object localObject = null;
    }
  }

  static JSONArray encodeAsJSONArray(List<Object> paramList, boolean paramBoolean)
  {
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (!(isValidType(localObject)))
        throw new IllegalArgumentException("invalid type for value in array: " + localObject.getClass().toString());
      localJSONArray.put(maybeEncodeJSONObject(localObject, paramBoolean));
    }
    return localJSONArray;
  }

  static String encodeDate(Date paramDate)
  {
    monitorenter;
    try
    {
      String str = dateFormat.format(paramDate);
      monitorexit;
      return str;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  static JSONObject encodeJSONObject(Object paramObject, boolean paramBoolean)
  {
    Object localObject;
    try
    {
      if (paramObject instanceof Date)
      {
        localObject = dateToObject((Date)paramObject);
        break label358:
      }
      if (!(paramObject instanceof byte[]))
        break label75;
      localObject = new JSONObject();
      ((JSONObject)localObject).put("__type", "Bytes");
      ((JSONObject)localObject).put("base64", Base64.encodeBase64String((byte[])(byte[])paramObject));
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException);
    }
    if (paramObject instanceof ParseObject)
    {
      if (!(paramBoolean))
        label75: throw new IllegalArgumentException("ParseObjects not allowed here");
      localObject = parseObjectToJSONPointer((ParseObject)paramObject);
    }
    else if (paramObject instanceof ParseFile)
    {
      ParseFile localParseFile = (ParseFile)paramObject;
      localObject = new JSONObject();
      ((JSONObject)localObject).put("__type", "File");
      ((JSONObject)localObject).put("url", localParseFile.getUrl());
      ((JSONObject)localObject).put("name", localParseFile.getName());
    }
    else if (paramObject instanceof ParseGeoPoint)
    {
      ParseGeoPoint localParseGeoPoint = (ParseGeoPoint)paramObject;
      localObject = new JSONObject();
      ((JSONObject)localObject).put("__type", "GeoPoint");
      ((JSONObject)localObject).put("latitude", localParseGeoPoint.getLatitude());
      ((JSONObject)localObject).put("longitude", localParseGeoPoint.getLongitude());
    }
    else if (paramObject instanceof ParseACL)
    {
      localObject = ((ParseACL)paramObject).toJSONObject();
    }
    else
    {
      if (paramObject instanceof Map)
      {
        Map localMap = (Map)paramObject;
        localObject = new JSONObject();
        Iterator localIterator = localMap.entrySet().iterator();
        while (true)
        {
          if (!(localIterator.hasNext()))
            break label358;
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          ((JSONObject)localObject).put((String)localEntry.getKey(), maybeEncodeJSONObject(localEntry.getValue(), paramBoolean));
        }
      }
      if (paramObject instanceof ParseRelation)
      {
        JSONObject localJSONObject = ((ParseRelation)paramObject).encodeToJSON();
        localObject = localJSONObject;
      }
      else
      {
        localObject = null;
      }
    }
    label358: return ((JSONObject)localObject);
  }

  static ParseCommandCache getCommandCache()
  {
    monitorenter;
    try
    {
      if (commandCache == null)
      {
        checkContext();
        commandCache = new ParseCommandCache(applicationContext);
      }
      ParseCommandCache localParseCommandCache = commandCache;
      monitorexit;
      return localParseCommandCache;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  static long getKeyValueCacheAge(File paramFile)
  {
    String str = paramFile.getName();
    long l1;
    try
    {
      long l2 = Long.parseLong(str.substring(0, str.indexOf(46)));
      l1 = l2;
      return l1;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      l1 = 0L;
    }
  }

  static File getKeyValueCacheDir()
  {
    monitorenter;
    try
    {
      checkContext();
      File localFile = new File(applicationContext.getCacheDir(), "ParseKeyValueCache");
      if (!(localFile.isDirectory()))
      {
        boolean bool = localFile.mkdir();
        if (!(bool))
          break label44;
      }
      monitorexit;
      label44: throw new RuntimeException("could not create Parse cache directory");
    }
    finally
    {
      monitorexit;
    }
  }

  static File getKeyValueCacheFile(String paramString)
  {
    String str = '.' + paramString;
    File[] arrayOfFile = getKeyValueCacheDir().listFiles(new FilenameFilter(str)
    {
      public boolean accept(File paramFile, String paramString)
      {
        return paramString.endsWith(this.val$suffix);
      }
    });
    if (arrayOfFile.length == 0);
    for (File localFile = null; ; localFile = arrayOfFile[0])
      return localFile;
  }

  public static int getLogLevel()
  {
    return logLevel;
  }

  static File getParseDir()
  {
    monitorenter;
    try
    {
      checkContext();
      File localFile = applicationContext.getDir("Parse", 0);
      monitorexit;
      return localFile;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  static boolean hasPermission(String paramString)
  {
    checkContext();
    if (applicationContext.checkCallingOrSelfPermission(paramString) == 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  public static void initialize(Context paramContext, String paramString1, String paramString2)
  {
    applicationId = paramString1;
    clientKey = paramString2;
    if (paramContext == null)
      return;
    applicationContext = paramContext.getApplicationContext();
    checkCacheApplicationId();
    new Thread("Parse.initialize Starting Command Cache")
    {
      public void run()
      {
        Parse.getCommandCache();
      }
    }
    .start();
  }

  static boolean isContainerObject(Object paramObject)
  {
    if ((paramObject instanceof JSONObject) || (paramObject instanceof JSONArray) || (paramObject instanceof ParseACL) || (paramObject instanceof ParseGeoPoint) || (paramObject instanceof List) || (paramObject instanceof Map));
    for (int i = 1; ; i = 0)
      return i;
  }

  static boolean isValidType(Object paramObject)
  {
    if ((paramObject instanceof JSONObject) || (paramObject instanceof JSONArray) || (paramObject instanceof String) || (paramObject instanceof Number) || (paramObject instanceof Boolean) || (paramObject == JSONObject.NULL) || (paramObject instanceof ParseObject) || (paramObject instanceof ParseACL) || (paramObject instanceof ParseFile) || (paramObject instanceof ParseGeoPoint) || (paramObject instanceof Date) || (paramObject instanceof byte[]) || (paramObject instanceof List) || (paramObject instanceof Map) || (paramObject instanceof ParseRelation));
    for (int i = 1; ; i = 0)
      return i;
  }

  static String join(Collection<String> paramCollection, String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = paramCollection.iterator();
    if (localIterator.hasNext())
    {
      localStringBuffer.append((String)localIterator.next());
      while (localIterator.hasNext())
      {
        localStringBuffer.append(paramString);
        localStringBuffer.append((String)localIterator.next());
      }
    }
    return localStringBuffer.toString();
  }

  static Object jsonFromKeyValueCache(String paramString, long paramLong)
  {
    String str = loadFromKeyValueCache(paramString, paramLong);
    Object localObject1 = null;
    if (str == null);
    while (true)
    {
      return localObject1;
      JSONTokener localJSONTokener = new JSONTokener(str);
      try
      {
        Object localObject2 = localJSONTokener.nextValue();
        localObject1 = localObject2;
      }
      catch (JSONException localJSONException)
      {
        logE("com.parse.Parse", "corrupted cache for " + paramString, localJSONException);
        clearFromKeyValueCache(paramString);
        localObject1 = null;
      }
    }
  }

  static Iterable<String> keys(JSONObject paramJSONObject)
  {
    return new Iterable(paramJSONObject)
    {
      public Iterator<String> iterator()
      {
        return this.val$finalObject.keys();
      }
    };
  }

  static String loadFromKeyValueCache(String paramString, long paramLong)
  {
    File localFile = getKeyValueCacheFile(paramString);
    Object localObject = null;
    if (localFile == null);
    while (true)
    {
      return localObject;
      Date localDate = new Date();
      long l = Math.max(0L, localDate.getTime() - paramLong);
      boolean bool = getKeyValueCacheAge(localFile) < l;
      localObject = null;
      if (bool)
        continue;
      localFile.setLastModified(localDate.getTime());
      try
      {
        RandomAccessFile localRandomAccessFile = new RandomAccessFile(localFile, "r");
        byte[] arrayOfByte = new byte[(int)localRandomAccessFile.length()];
        localRandomAccessFile.readFully(arrayOfByte);
        localRandomAccessFile.close();
        String str = new String(arrayOfByte, "UTF-8");
        localObject = str;
      }
      catch (IOException localIOException)
      {
        logE("com.parse.Parse", "error reading from cache", localIOException);
        localObject = null;
      }
    }
  }

  private static void log(int paramInt, String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (paramInt >= logLevel)
    {
      if (paramThrowable != null)
        break label21;
      Log.println(logLevel, paramString1, paramString2);
    }
    while (true)
    {
      return;
      label21: Log.println(logLevel, paramString1, paramString2 + '\n' + Log.getStackTraceString(paramThrowable));
    }
  }

  static void logD(String paramString1, String paramString2)
  {
    logD(paramString1, paramString2, null);
  }

  static void logD(String paramString1, String paramString2, Throwable paramThrowable)
  {
    log(3, paramString1, paramString2, paramThrowable);
  }

  static void logE(String paramString1, String paramString2)
  {
    logE(paramString1, paramString2, null);
  }

  static void logE(String paramString1, String paramString2, Throwable paramThrowable)
  {
    log(6, paramString1, paramString2, paramThrowable);
  }

  static void logI(String paramString1, String paramString2)
  {
    logI(paramString1, paramString2, null);
  }

  static void logI(String paramString1, String paramString2, Throwable paramThrowable)
  {
    log(4, paramString1, paramString2, paramThrowable);
  }

  static void logV(String paramString1, String paramString2)
  {
    logV(paramString1, paramString2, null);
  }

  static void logV(String paramString1, String paramString2, Throwable paramThrowable)
  {
    log(2, paramString1, paramString2, paramThrowable);
  }

  static void logW(String paramString1, String paramString2)
  {
    logW(paramString1, paramString2, null);
  }

  static void logW(String paramString1, String paramString2, Throwable paramThrowable)
  {
    log(5, paramString1, paramString2, paramThrowable);
  }

  static Object maybeEncodeJSONObject(Object paramObject, boolean paramBoolean)
  {
    if (paramObject instanceof List);
    JSONObject localJSONObject;
    for (paramObject = encodeAsJSONArray((List)paramObject, paramBoolean); ; paramObject = localJSONObject)
      do
      {
        while (true)
        {
          return paramObject;
          if (!(paramObject instanceof ParseFieldOperation))
            break;
          try
          {
            Object localObject = ((ParseFieldOperation)paramObject).encode();
            paramObject = localObject;
          }
          catch (JSONException localJSONException)
          {
            throw new RuntimeException(localJSONException);
          }
        }
        localJSONObject = encodeJSONObject(paramObject, paramBoolean);
      }
      while (localJSONObject == null);
  }

  static Object maybeReferenceAndEncode(Object paramObject)
  {
    if ((paramObject instanceof ParseObject) && (((ParseObject)paramObject).getObjectId() == null))
      throw new IllegalStateException("unable to encode an association with an unsaved ParseObject");
    return maybeEncodeJSONObject(paramObject, true);
  }

  static Date parseDate(String paramString)
  {
    monitorenter;
    Date localDate1;
    try
    {
      Date localDate2 = dateFormat.parse(paramString);
      localDate1 = localDate2;
      return localDate1;
    }
    catch (ParseException localParseException)
    {
      logE("com.parse.Parse", "could not parse date: " + paramString, localParseException);
    }
    finally
    {
      monitorexit;
    }
  }

  static JSONObject parseObjectToJSONPointer(ParseObject paramParseObject)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      if (paramParseObject.getObjectId() != null)
      {
        localJSONObject.put("__type", "Pointer");
        localJSONObject.put("className", paramParseObject.getClassName());
        localJSONObject.put("objectId", paramParseObject.getObjectId());
        break label101:
      }
      localJSONObject.put("__type", "Pointer");
      localJSONObject.put("className", paramParseObject.getClassName());
      localJSONObject.put("localId", paramParseObject.getOrCreateLocalId());
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException);
    }
    label101: return localJSONObject;
  }

  static void recursiveDelete(File paramFile)
  {
    monitorenter;
    try
    {
      if (paramFile.isDirectory())
      {
        File[] arrayOfFile = paramFile.listFiles();
        int i = arrayOfFile.length;
        for (int j = 0; j < i; ++j)
          recursiveDelete(arrayOfFile[j]);
      }
      paramFile.delete();
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

  static void requirePermission(String paramString)
  {
    if (hasPermission(paramString))
      return;
    throw new IllegalStateException("To use this functionality, add this to your AndroidManifest.xml:\n<uses-permission android:name=\"" + paramString + "\" />");
  }

  static void saveToKeyValueCache(String paramString1, String paramString2)
  {
    File localFile1 = getKeyValueCacheFile(paramString1);
    if (localFile1 != null)
      localFile1.delete();
    File localFile2 = createKeyValueCacheFile(paramString1);
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile2);
      localFileOutputStream.write(paramString2.getBytes("UTF-8"));
      localFileOutputStream.close();
      label45: File[] arrayOfFile = getKeyValueCacheDir().listFiles();
      int i = arrayOfFile.length;
      int j = 0;
      int k = arrayOfFile.length;
      for (int l = 0; l < k; ++l)
      {
        File localFile4 = arrayOfFile[l];
        j = (int)(j + localFile4.length());
      }
      int i2;
      if ((i > maxKeyValueCacheFiles) || (j > maxKeyValueCacheBytes))
      {
        Arrays.sort(arrayOfFile, new Comparator()
        {
          public int compare(File paramFile1, File paramFile2)
          {
            int i = Long.valueOf(paramFile1.lastModified()).compareTo(Long.valueOf(paramFile2.lastModified()));
            if (i != 0);
            while (true)
            {
              return i;
              i = paramFile1.getName().compareTo(paramFile2.getName());
            }
          }
        });
        int i1 = arrayOfFile.length;
        i2 = 0;
        if (i2 < i1)
        {
          File localFile3 = arrayOfFile[i2];
          --i;
          j = (int)(j - localFile3.length());
          localFile3.delete();
          if ((i > maxKeyValueCacheFiles) || (j > maxKeyValueCacheBytes))
            break label189;
        }
      }
      return;
      label189: ++i2;
    }
    catch (IOException localIOException)
    {
      break label45:
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      break label45:
    }
  }

  static void setContextIfNeeded(Context paramContext)
  {
    if (applicationContext != null)
      return;
    applicationContext = paramContext;
  }

  public static void setLogLevel(int paramInt)
  {
    logLevel = paramInt;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.Parse
 * JD-Core Version:    0.5.3
 */