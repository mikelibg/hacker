package com.parse;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ParsePushRouter
{
  private static final Pattern CHANNEL_PATTERN;
  private static final String LEGACY_ROUTE_LOCATION = "persistentCallbacks";
  private static final String STATE_LOCATION = "pushState";
  private static final String TAG = "com.parse.ParsePushRouter";
  static Map<String, CallbackFactory> channelRoutes;
  static Set<String> channels;
  static CallbackFactory defaultRoute;
  private static boolean hasLoadedStateFromDisk;
  static JSONObject history;
  static String ignoreAfter;
  static String lastTime;
  static int maxHistory;

  static
  {
    if (!(ParsePushRouter.class.desiredAssertionStatus()));
    for (int i = 1; ; i = 0)
    {
      $assertionsDisabled = i;
      CHANNEL_PATTERN = Pattern.compile("^$|^[a-zA-Z][A-Za-z0-9_-]*$");
      channelRoutes = null;
      defaultRoute = null;
      channels = new HashSet();
      lastTime = null;
      ignoreAfter = null;
      history = null;
      maxHistory = 10;
      hasLoadedStateFromDisk = false;
      return;
    }
  }

  static boolean addChannelRoute(Context paramContext, String paramString, Class<? extends Activity> paramClass, int paramInt)
  {
    if (paramString == null)
      throw new NullPointerException("invalid channel: you cannot subscribe to null");
    if (!(CHANNEL_PATTERN.matcher(paramString).matches()))
      throw new IllegalArgumentException("invalid channel name: " + paramString);
    JSONObject localJSONObject = dataForActivity(paramContext, paramClass, paramInt);
    if (localJSONObject == null);
    for (boolean bool = false; ; bool = addChannelRoute(paramContext, paramString, localJSONObject, StandardPushCallback.class))
      return bool;
  }

  static boolean addChannelRoute(Context paramContext, String paramString, JSONObject paramJSONObject, Class<? extends PushCallback> paramClass)
  {
    monitorenter;
    try
    {
    	//NO HACE NADA
      ensureStateIsLoaded(paramContext);
    }
    finally
    {
      int i;
      try
      {
        JSONObject localJSONObject = new JSONObject(paramJSONObject.toString());
        if (channelRoutes.put(paramString, new CallbackFactory(paramClass, localJSONObject)) == null)
        {
          i = 1;
          if (i != 0)
          {
            ParseInstallation localParseInstallation = new ParseInstallation();
            localParseInstallation.addUnique("channels", paramString);
            saveEventually(paramContext, localParseInstallation);
          }
          label73: monitorexit;
          return i;
        }
        i = 0;
      }
      catch (JSONException localJSONException)
      {
        Parse.logE("com.parse.ParsePushRouter", "Impossible exception when deserializing a serialized JSON string: " + localJSONException.getMessage());
        i = 0;
        break label73:
        localObject = finally;
        monitorexit;
        throw localObject;
      }
    }
  }

  static void addSingletonRoute(Context paramContext, String paramString, PushCallback paramPushCallback)
  {
    ensureStateIsLoaded(paramContext);
    if (paramString != null)
      channelRoutes.put(paramString, new SingletonFactory(paramPushCallback));
    while (true)
    {
      return;
      defaultRoute = new SingletonFactory(paramPushCallback);
    }
  }

  static void clearStateFromDisk(Context paramContext)
  {
    clearStateFromMemory();
    ParseObject.deleteDiskObject(paramContext, "persistentCallbacks");
    ParseObject.deleteDiskObject(paramContext, "pushState");
  }

  static void clearStateFromMemory()
  {
    hasLoadedStateFromDisk = false;
    channelRoutes = null;
    defaultRoute = null;
    lastTime = null;
    channels = new HashSet();
    history = null;
  }

  static JSONObject dataForActivity(Context paramContext, Class<? extends Activity> paramClass, int paramInt)
  {
    getApplicationId(paramContext);
    String str1 = paramContext.getPackageName();
    PackageManager localPackageManager = paramContext.getPackageManager();
    String str2;
    String str3;
    String str4;
    JSONObject localJSONObject;
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(str1, 0);
      CharSequence localCharSequence = localApplicationInfo.loadLabel(localPackageManager);
      if (localCharSequence != null)
      {
        str2 = localCharSequence.toString();
        ComponentName localComponentName = new ComponentName(paramContext, paramClass);
        str3 = localComponentName.getClassName();
        str4 = localComponentName.getPackageName();
        localJSONObject = new JSONObject();
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      try
      {
        localJSONObject.put("icon", paramInt);
        localJSONObject.put("appName", str2);
        localJSONObject.put("activityClass", str3);
        localJSONObject.put("activityPackage", str4);
        while (true)
        {//////////
          return localJSONObject;
          localNameNotFoundException = localNameNotFoundException;
          Parse.logE("com.parse.ParsePushRouter", "missing package " + str1, localNameNotFoundException);
          localJSONObject = null;
        }
        str2 = null;
      }
      catch (JSONException localJSONException)
      {
        throw new RuntimeException(localJSONException.getMessage());
      }
    }
  }

  // ERROR //
  static void ensureStateIsLoaded(Context paramContext)
  {
  }

  static String getApplicationId(Context paramContext)
  {
    monitorenter;
    JSONObject localJSONObject;
    Object localObject2;
    String str;
    try
    {
      localJSONObject = ParseObject.getDiskObject(paramContext, "oauth");
      if (localJSONObject == null)
        localJSONObject = new JSONObject();
      localObject2 = localJSONObject.optString("key");
      if (localObject2 != "")
        monitorexit;
      label58: str = ParseObject.getApplicationId();
    }
    finally
    {
      try
      {
        localJSONObject.put("key", str);
        ParseObject.saveDiskObject(paramContext, "oauth", localJSONObject);
        localObject2 = str;
      }
      catch (JSONException localJSONException)
      {
        Parse.logE("com.parse.ParsePushRouter", "JSONException in getApplicationId()", localJSONException);
        break label58:
        localObject1 = finally;
        monitorexit;
        throw localObject1;
      }
    }
  }

  static JSONObject getPushRequestJSON(Context paramContext)
  {
    monitorenter;
    while (true)
    {
      JSONObject localJSONObject;
      JSONArray localJSONArray;
      try
      {
        ensureStateIsLoaded(paramContext);
        localJSONObject = new JSONObject();
        try
        {
          localJSONObject.put("installation_id", ParseInstallation.getCurrentInstallation().getInstallationId());
          localJSONObject.put("oauth_key", getApplicationId(paramContext));
          localJSONObject.put("v", "a1.1.6");
          if (lastTime != null)
            break label138;
          localJSONObject.put("last", JSONObject.NULL);
          if (history.length() == 0)
            break label168;
          localJSONArray = new JSONArray();
          Iterator localIterator = history.keys();
          if (!(localIterator.hasNext()))
            break label158;
          label138: localJSONArray.put(localIterator.next());
        }
        catch (JSONException localJSONException)
        {
          Parse.logE("com.parse.ParsePushRouter", "unexpected JSONException", localJSONException);
          localJSONObject = null;
          monitorexit;
          return localJSONObject;
        }
      }
      finally
      {
        monitorexit;
      }
      label158: localJSONObject.put("last_seen", localJSONArray);
      label168: localJSONObject.putOpt("ignore_after", ignoreAfter);
    }
  }

  static Set<String> getSubscriptions(Context paramContext)
  {
    monitorenter;
    try
    {
      ensureStateIsLoaded(paramContext);
      Set localSet = Collections.unmodifiableSet(channels);
      monitorexit;
      return localSet;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  // ERROR //
  private static void handlePushData(PushService paramPushService, String paramString, JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: ldc_w 434
    //   3: monitorenter
    //   4: getstatic 56	com/parse/ParsePushRouter:channelRoutes	Ljava/util/Map;
    //   7: aload_1
    //   8: invokeinterface 438 2 0
    //   13: checkcast 140	com/parse/ParsePushRouter$CallbackFactory
    //   16: astore 4
    //   18: aload 4
    //   20: ifnonnull +55 -> 75
    //   23: getstatic 58	com/parse/ParsePushRouter:defaultRoute	Lcom/parse/ParsePushRouter$CallbackFactory;
    //   26: ifnonnull +44 -> 70
    //   29: ldc 19
    //   31: new 108	java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   38: ldc_w 440
    //   41: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: aload_2
    //   45: invokevirtual 137	org/json/JSONObject:toString	()Ljava/lang/String;
    //   48: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: ldc_w 442
    //   54: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: invokestatic 445	com/parse/Parse:logW	(Ljava/lang/String;Ljava/lang/String;)V
    //   63: ldc_w 434
    //   66: monitorexit
    //   67: goto +160 -> 227
    //   70: getstatic 58	com/parse/ParsePushRouter:defaultRoute	Lcom/parse/ParsePushRouter$CallbackFactory;
    //   73: astore 4
    //   75: aload 4
    //   77: invokevirtual 449	com/parse/ParsePushRouter$CallbackFactory:newCallback	()Lcom/parse/PushCallback;
    //   80: astore 7
    //   82: ldc_w 434
    //   85: monitorexit
    //   86: ldc 19
    //   88: new 108	java/lang/StringBuilder
    //   91: dup
    //   92: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   95: ldc_w 451
    //   98: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: aload_1
    //   102: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: invokestatic 265	com/parse/Parse:logD	(Ljava/lang/String;Ljava/lang/String;)V
    //   111: aload 7
    //   113: aload_0
    //   114: invokevirtual 457	com/parse/PushCallback:setService	(Landroid/app/Service;)V
    //   117: aload 7
    //   119: aload_2
    //   120: invokevirtual 460	com/parse/PushCallback:setPushData	(Lorg/json/JSONObject;)V
    //   123: aload 7
    //   125: aload_1
    //   126: invokevirtual 463	com/parse/PushCallback:setChannel	(Ljava/lang/String;)V
    //   129: aload 7
    //   131: invokevirtual 466	com/parse/PushCallback:run	()V
    //   134: goto +93 -> 227
    //   137: astore 6
    //   139: ldc 19
    //   141: new 108	java/lang/StringBuilder
    //   144: dup
    //   145: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   148: ldc_w 468
    //   151: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: aload 4
    //   156: getfield 472	com/parse/ParsePushRouter$CallbackFactory:klass	Ljava/lang/Class;
    //   159: invokevirtual 475	java/lang/Class:getCanonicalName	()Ljava/lang/String;
    //   162: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   168: aload 6
    //   170: invokestatic 246	com/parse/Parse:logE	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   173: ldc_w 434
    //   176: monitorexit
    //   177: goto +50 -> 227
    //   180: astore_3
    //   181: ldc_w 434
    //   184: monitorexit
    //   185: aload_3
    //   186: athrow
    //   187: astore 5
    //   189: ldc 19
    //   191: new 108	java/lang/StringBuilder
    //   194: dup
    //   195: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   198: ldc_w 477
    //   201: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: aload 4
    //   206: getfield 472	com/parse/ParsePushRouter$CallbackFactory:klass	Ljava/lang/Class;
    //   209: invokevirtual 475	java/lang/Class:getCanonicalName	()Ljava/lang/String;
    //   212: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   215: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   218: aload 5
    //   220: invokestatic 246	com/parse/Parse:logE	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   223: ldc_w 434
    //   226: monitorexit
    //   227: return
    //
    // Exception table:
    //   from	to	target	type
    //   75	82	137	java/lang/IllegalAccessException
    //   4	75	180	finally
    //   75	82	180	finally
    //   82	86	180	finally
    //   139	185	180	finally
    //   189	227	180	finally
    //   75	82	187	java/lang/InstantiationException
  }

  public static boolean hasRoutes(Context paramContext)
  {
    monitorenter;
    try
    {
      ensureStateIsLoaded(paramContext);
      if ((defaultRoute == null) && (((channelRoutes == null) || (channelRoutes.isEmpty()))))
      {
        boolean bool = getSubscriptions(paramContext).isEmpty();
        if (bool)
          break label51;
      }
      int i = 1;
      return i;
      label51: i = 0;
    }
    finally
    {
      monitorexit;
    }
  }

  // ERROR //
  static void insertIntoHistory(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 71	com/parse/ParsePushRouter:history	Lorg/json/JSONObject;
    //   6: aload_0
    //   7: aload_1
    //   8: invokevirtual 418	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   11: pop
    //   12: getstatic 44	com/parse/ParsePushRouter:$assertionsDisabled	Z
    //   15: istore 4
    //   17: aconst_null
    //   18: astore 5
    //   20: iload 4
    //   22: ifne +43 -> 65
    //   25: getstatic 73	com/parse/ParsePushRouter:maxHistory	I
    //   28: istore 12
    //   30: aconst_null
    //   31: astore 5
    //   33: iload 12
    //   35: ifgt +30 -> 65
    //   38: new 488	java/lang/AssertionError
    //   41: dup
    //   42: invokespecial 489	java/lang/AssertionError:<init>	()V
    //   45: athrow
    //   46: astore_3
    //   47: ldc 2
    //   49: monitorexit
    //   50: aload_3
    //   51: athrow
    //   52: getstatic 71	com/parse/ParsePushRouter:history	Lorg/json/JSONObject;
    //   55: aload 7
    //   57: invokevirtual 493	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
    //   60: pop
    //   61: aload 8
    //   63: astore 5
    //   65: getstatic 71	com/parse/ParsePushRouter:history	Lorg/json/JSONObject;
    //   68: invokevirtual 392	org/json/JSONObject:length	()I
    //   71: getstatic 73	com/parse/ParsePushRouter:maxHistory	I
    //   74: if_icmple +86 -> 160
    //   77: getstatic 71	com/parse/ParsePushRouter:history	Lorg/json/JSONObject;
    //   80: invokevirtual 397	org/json/JSONObject:keys	()Ljava/util/Iterator;
    //   83: astore 6
    //   85: aload 6
    //   87: invokeinterface 406 1 0
    //   92: checkcast 495	java/lang/String
    //   95: astore 7
    //   97: getstatic 71	com/parse/ParsePushRouter:history	Lorg/json/JSONObject;
    //   100: aload 7
    //   102: invokevirtual 358	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   105: astore 8
    //   107: aload 6
    //   109: invokeinterface 402 1 0
    //   114: ifeq -62 -> 52
    //   117: aload 6
    //   119: invokeinterface 406 1 0
    //   124: checkcast 495	java/lang/String
    //   127: astore 9
    //   129: getstatic 71	com/parse/ParsePushRouter:history	Lorg/json/JSONObject;
    //   132: aload 9
    //   134: invokevirtual 358	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   137: astore 10
    //   139: aload 10
    //   141: aload 8
    //   143: invokevirtual 499	java/lang/String:compareTo	(Ljava/lang/String;)I
    //   146: ifge -39 -> 107
    //   149: aload 9
    //   151: astore 7
    //   153: aload 10
    //   155: astore 8
    //   157: goto -50 -> 107
    //   160: aload 5
    //   162: ifnull +8 -> 170
    //   165: aload 5
    //   167: putstatic 69	com/parse/ParsePushRouter:ignoreAfter	Ljava/lang/String;
    //   170: ldc 2
    //   172: monitorexit
    //   173: return
    //   174: astore_2
    //   175: goto -163 -> 12
    //
    // Exception table:
    //   from	to	target	type
    //   3	12	46	finally
    //   12	46	46	finally
    //   52	170	46	finally
    //   3	12	174	org/json/JSONException
  }

  private static boolean isSubscribedToChannel(Context paramContext, String paramString)
  {
    int i = 1;
    monitorenter;
    try
    {
      boolean bool1 = channels.contains(paramString);
      if (bool1);
      boolean bool2;
      do
      {
        return i;
        CallbackFactory localCallbackFactory = (CallbackFactory)channelRoutes.get(paramString);
        if (localCallbackFactory == null)
          break;
        bool2 = localCallbackFactory.requiresSubscription();
      }
      while (!(bool2));
    }
    finally
    {
      monitorexit;
    }
  }

  private static void parseChannelRoutes(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null)
      return;
    channelRoutes.clear();
    Iterator localIterator = paramJSONObject.keys();
    while (true)
    {
      if (localIterator.hasNext());
      String str = (String)localIterator.next();
      JSONObject localJSONObject = null;
      try
      {
        localJSONObject = paramJSONObject.getJSONObject(str);
        channelRoutes.put(str, new CallbackFactory(localJSONObject));
      }
      catch (JSONException localJSONException)
      {
        Parse.logE("com.parse.ParsePushRouter", "Failed to parse push route " + localJSONObject);
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        Parse.logE("com.parse.ParsePushRouter", "Route references missing class: " + localClassNotFoundException.getMessage());
      }
      catch (ClassCastException localClassCastException)
      {
        Parse.logE("com.parse.ParsePushRouter", "Route references class which is not a PushCallback: " + localClassCastException.getMessage());
      }
    }
  }

  static boolean removeChannelRoute(Context paramContext, String paramString)
  {
    int i = 1;
    monitorenter;
    try
    {
      ensureStateIsLoaded(paramContext);
      if (channelRoutes.remove(paramString) != null)
      {
        ParseInstallation localParseInstallation = new ParseInstallation();
        localParseInstallation.removeAll("channels", Arrays.asList(new String[] { paramString }));
        saveEventually(paramContext, localParseInstallation);
        return i;
      }
      i = 0;
    }
    finally
    {
      monitorexit;
    }
  }

  static void routePush(PushService paramPushService, JSONObject paramJSONObject)
  {
    int i = 0;
    String str1 = paramJSONObject.optString("channel", null);
    try
    {
      boolean bool = paramJSONObject.has("time");
      i = 0;
      if (bool)
      {
        String str3 = lastTime;
        i = 0;
        if (str3 != null)
        {
          int j = paramJSONObject.optString("time").compareTo(lastTime);
          i = 0;
          if (j <= 0)
            break label73;
        }
        lastTime = paramJSONObject.optString("time");
        i = 1;
        if ((ignoreAfter != null) && (paramJSONObject.optString("time").compareTo(ignoreAfter) <= 0))
          label73: Parse.logD("com.parse.ParsePushRouter", "Ignoring very old push " + paramJSONObject.toString());
      }
      label131: String str2;
      while (true)
      {
        return;
        if ((str1 != null) && (!(isSubscribedToChannel(paramPushService, str1))))
        {
          new BackgroundTask(new ParseCallback(paramPushService, paramJSONObject)
          {
            void internalDone(Boolean paramBoolean, ParseException paramParseException)
            {
              if ((paramBoolean == null) || (!(paramBoolean.booleanValue())))
                return;
              ParsePushRouter.access$000(this.val$service);
              ParsePushRouter.routePush(this.val$service, this.val$message);
            }
          }
          , str1, paramPushService)
          {
            public Boolean run()
              throws ParseException
            {
              ParseInstallation localParseInstallation = new ParseInstallation();
              Parse.logI("com.parse.ParsePushRouter", "refetching installation to check for out of sync channel subscription in channel " + this.val$channel);
              localParseInstallation.fetch();
              List localList = localParseInstallation.getList("channels");
              synchronized (ParsePushRouter.channels)
              {
                ParsePushRouter.channels.clear();
                ParsePushRouter.channels.addAll(localList);
                ParsePushRouter.access$000(this.val$service);
                return Boolean.valueOf(ParsePushRouter.access$100(this.val$service, this.val$channel));
              }
            }
          }
          .execute(new Void[0]);
          if (i == 0)
            continue;
          saveStateToDisk(paramPushService);
        }
        if (!(paramJSONObject.has("push_id")))
          break label287;
        str2 = paramJSONObject.optString("push_id");
        if (!(history.has(str2)))
          break;
        Parse.logD("com.parse.ParsePushRouter", "Ignoring redundant push " + paramJSONObject.toString());
        if (i == 0)
          continue;
        saveStateToDisk(paramPushService);
      }
      insertIntoHistory(str2, paramJSONObject.optString("time"));
      i = 1;
      do
      {
        do
        {
          if (i != 0)
            saveStateToDisk(paramPushService);
          handlePushData(paramPushService, str1, paramJSONObject.optJSONObject("data"));
          label287: break label131:
        }
        while (!(paramJSONObject.has("time")));
        if (lastTime == null)
          break;
      }
      while (paramJSONObject.optString("time").compareTo(lastTime) <= 0);
    }
    finally
    {
      if (i != 0)
        saveStateToDisk(paramPushService);
    }
  }

  private static void saveEventually(Context paramContext, ParseInstallation paramParseInstallation)
  {
	  //Crea un propio constructor anonimamente
    paramParseInstallation.saveEventually(new SaveCallback(paramContext, paramParseInstallation)
    {
      public void done(ParseException paramParseException)
      {
        if (paramParseException != null)
        {
          Parse.logE("com.parse.ParsePushRouter", "Failed to save installation eventually", paramParseException);
          return;
        }
        //No hace nada
        ParsePushRouter.ensureStateIsLoaded(this.val$context);
        synchronized (ParsePushRouter.channels)
        {
          ParsePushRouter.channels.clear();
          List localList = this.val$installation.getList("channels");
          ParsePushRouter.channels.addAll(localList);
          if (!(ParsePushRouter.hasRoutes(this.val$context)))
          {
            Parse.logD("com.parse.ParsePushRouter", "Shutting down push service. No remaining channels");
            this.val$context.stopService(new Intent(this.val$context, PushService.class));
          }
          new BackgroundTask(null)
          {
            public Void run()
              throws ParseException
            {
              ParsePushRouter.access$000(ParsePushRouter.1.this.val$context);
              return null;
            }
          }
          .execute(new Void[0]);
        }
      }
    });
  }

  // ERROR //
  private static void saveStateToDisk(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 136	org/json/JSONObject
    //   6: dup
    //   7: invokespecial 227	org/json/JSONObject:<init>	()V
    //   10: astore_1
    //   11: aload_1
    //   12: ldc_w 569
    //   15: iconst_3
    //   16: invokevirtual 232	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   19: pop
    //   20: getstatic 58	com/parse/ParsePushRouter:defaultRoute	Lcom/parse/ParsePushRouter$CallbackFactory;
    //   23: ifnull +17 -> 40
    //   26: aload_1
    //   27: ldc_w 293
    //   30: getstatic 58	com/parse/ParsePushRouter:defaultRoute	Lcom/parse/ParsePushRouter$CallbackFactory;
    //   33: invokevirtual 573	com/parse/ParsePushRouter$CallbackFactory:toJSON	()Lorg/json/JSONObject;
    //   36: invokevirtual 418	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   39: pop
    //   40: new 136	org/json/JSONObject
    //   43: dup
    //   44: invokespecial 227	org/json/JSONObject:<init>	()V
    //   47: astore 5
    //   49: getstatic 56	com/parse/ParsePushRouter:channelRoutes	Ljava/util/Map;
    //   52: invokeinterface 278 1 0
    //   57: invokeinterface 576 1 0
    //   62: astore 6
    //   64: aload 6
    //   66: invokeinterface 402 1 0
    //   71: ifeq +75 -> 146
    //   74: aload 6
    //   76: invokeinterface 406 1 0
    //   81: checkcast 495	java/lang/String
    //   84: astore 12
    //   86: aload 5
    //   88: aload 12
    //   90: getstatic 56	com/parse/ParsePushRouter:channelRoutes	Ljava/util/Map;
    //   93: aload 12
    //   95: invokeinterface 438 2 0
    //   100: checkcast 140	com/parse/ParsePushRouter$CallbackFactory
    //   103: invokevirtual 573	com/parse/ParsePushRouter$CallbackFactory:toJSON	()Lorg/json/JSONObject;
    //   106: invokevirtual 418	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   109: pop
    //   110: goto -46 -> 64
    //   113: astore_3
    //   114: ldc 19
    //   116: new 108	java/lang/StringBuilder
    //   119: dup
    //   120: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   123: ldc_w 578
    //   126: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: aload_3
    //   130: invokevirtual 166	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   133: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: invokestatic 172	com/parse/Parse:logE	(Ljava/lang/String;Ljava/lang/String;)V
    //   142: ldc 2
    //   144: monitorexit
    //   145: return
    //   146: aload_1
    //   147: ldc_w 288
    //   150: aload 5
    //   152: invokevirtual 418	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   155: pop
    //   156: aload_1
    //   157: ldc 153
    //   159: new 312	org/json/JSONArray
    //   162: dup
    //   163: getstatic 65	com/parse/ParsePushRouter:channels	Ljava/util/Set;
    //   166: invokespecial 581	org/json/JSONArray:<init>	(Ljava/util/Collection;)V
    //   169: invokevirtual 237	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   172: pop
    //   173: aload_1
    //   174: ldc_w 296
    //   177: getstatic 67	com/parse/ParsePushRouter:lastTime	Ljava/lang/String;
    //   180: invokevirtual 418	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   183: pop
    //   184: aload_1
    //   185: ldc_w 350
    //   188: getstatic 71	com/parse/ParsePushRouter:history	Lorg/json/JSONObject;
    //   191: invokevirtual 418	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   194: pop
    //   195: aload_1
    //   196: ldc_w 301
    //   199: getstatic 69	com/parse/ParsePushRouter:ignoreAfter	Ljava/lang/String;
    //   202: invokevirtual 418	org/json/JSONObject:putOpt	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   205: pop
    //   206: aload_0
    //   207: ldc 16
    //   209: aload_1
    //   210: invokestatic 366	com/parse/ParseObject:saveDiskObject	(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    //   213: goto -71 -> 142
    //   216: astore_2
    //   217: ldc 2
    //   219: monitorexit
    //   220: aload_2
    //   221: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   3	110	113	org/json/JSONException
    //   146	213	113	org/json/JSONException
    //   3	110	216	finally
    //   114	142	216	finally
    //   146	213	216	finally
  }

  static void setDefaultRoute(Context paramContext, Class<? extends Activity> paramClass, int paramInt)
  {
    ensureStateIsLoaded(paramContext);
    if (paramClass == null)
      defaultRoute = null;
    while (true)
    {
      saveStateToDisk(paramContext);
      return;
      JSONObject localJSONObject = dataForActivity(paramContext, paramClass, paramInt);
      if (localJSONObject == null)
        localJSONObject = new JSONObject();
      defaultRoute = new CallbackFactory(StandardPushCallback.class, localJSONObject);
    }
  }

  static class CallbackFactory
  {
    JSONObject contextData;
    Class<? extends PushCallback> klass;

    protected CallbackFactory()
    {
    }

    CallbackFactory(Class<? extends PushCallback> paramClass, JSONObject paramJSONObject)
    {
      this.klass = paramClass;
      this.contextData = paramJSONObject;
    }

    CallbackFactory(JSONObject paramJSONObject)
      throws ClassNotFoundException
    {
      Parse.logD("com.parse.ParsePushRouter", "Creating factory for class " + paramJSONObject.optString("name"));
      this.klass = Class.forName(paramJSONObject.optString("name"));
      if (this.klass == null)
        throw new ClassNotFoundException("Missing class definition in " + paramJSONObject);
      this.contextData = paramJSONObject.optJSONObject("data");
    }

    PushCallback newCallback()
      throws IllegalAccessException, InstantiationException
    {
      PushCallback localPushCallback = (PushCallback)this.klass.newInstance();
      localPushCallback.setLocalData(this.contextData);
      return localPushCallback;
    }

    boolean requiresSubscription()
    {
      return true;
    }

    JSONObject toJSON()
    {
      JSONObject localJSONObject;
      try
      {
        localJSONObject = new JSONObject();
        localJSONObject.put("name", this.klass.getCanonicalName());
        localJSONObject.putOpt("data", this.contextData);
        return localJSONObject;
      }
      catch (JSONException localJSONException)
      {
        Parse.logE("com.parse.ParsePushRouter", "Failed to encode route: " + localJSONException.getMessage());
        localJSONObject = null;
      }
    }
  }

  static class SingletonFactory extends ParsePushRouter.CallbackFactory
  {
    PushCallback singleton;

    SingletonFactory(PushCallback paramPushCallback)
    {
      this.singleton = paramPushCallback;
    }

    PushCallback newCallback()
    {
      return this.singleton;
    }

    boolean requiresSubscription()
    {
      return false;
    }

    JSONObject toJSON()
    {
      return null;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ParsePushRouter
 * JD-Core Version:    0.5.3
 */