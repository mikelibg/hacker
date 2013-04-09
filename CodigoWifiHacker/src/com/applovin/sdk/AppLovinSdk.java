package com.applovin.sdk;

import android.content.Context;

public abstract class AppLovinSdk
{
  public static final String URI_HOST = "com.applovin.sdk";
  public static final String URI_SCHEME = "applovin";
  public static final String VERSION = "4.2.0";
  private static AppLovinSdk[] a = new AppLovinSdk[0];
  private static final Object b = new Object();

  public static AppLovinSdk getInstance(Context paramContext)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("No context specified");
    return getInstance(AppLovinSdkUtils.retrieveSdkKey(paramContext), AppLovinSdkUtils.retrieveUserSettings(paramContext), paramContext);
  }

  public static AppLovinSdk getInstance(AppLovinSdkSettings paramAppLovinSdkSettings, Context paramContext)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("No context specified");
    return getInstance(AppLovinSdkUtils.retrieveSdkKey(paramContext), paramAppLovinSdkSettings, paramContext);
  }

  // ERROR //
  public static AppLovinSdk getInstance(String paramString, AppLovinSdkSettings paramAppLovinSdkSettings, Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: getstatic 27	com/applovin/sdk/AppLovinSdk:b	Ljava/lang/Object;
    //   5: astore 4
    //   7: aload 4
    //   9: monitorenter
    //   10: getstatic 22	com/applovin/sdk/AppLovinSdk:a	[Lcom/applovin/sdk/AppLovinSdk;
    //   13: arraylength
    //   14: iconst_1
    //   15: if_icmpne +31 -> 46
    //   18: getstatic 22	com/applovin/sdk/AppLovinSdk:a	[Lcom/applovin/sdk/AppLovinSdk;
    //   21: iconst_0
    //   22: aaload
    //   23: invokevirtual 56	com/applovin/sdk/AppLovinSdk:getSdkKey	()Ljava/lang/String;
    //   26: aload_0
    //   27: invokevirtual 62	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   30: ifeq +16 -> 46
    //   33: getstatic 22	com/applovin/sdk/AppLovinSdk:a	[Lcom/applovin/sdk/AppLovinSdk;
    //   36: iconst_0
    //   37: aaload
    //   38: astore 12
    //   40: aload 4
    //   42: monitorexit
    //   43: goto +225 -> 268
    //   46: getstatic 22	com/applovin/sdk/AppLovinSdk:a	[Lcom/applovin/sdk/AppLovinSdk;
    //   49: astore 6
    //   51: aload 6
    //   53: arraylength
    //   54: istore 7
    //   56: iconst_0
    //   57: istore 8
    //   59: iload 8
    //   61: iload 7
    //   63: if_icmpge +42 -> 105
    //   66: aload 6
    //   68: iload 8
    //   70: aaload
    //   71: astore 12
    //   73: aload 12
    //   75: invokevirtual 56	com/applovin/sdk/AppLovinSdk:getSdkKey	()Ljava/lang/String;
    //   78: aload_0
    //   79: invokevirtual 62	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   82: ifeq +17 -> 99
    //   85: aload 4
    //   87: monitorexit
    //   88: goto +180 -> 268
    //   91: astore 5
    //   93: aload 4
    //   95: monitorexit
    //   96: aload 5
    //   98: athrow
    //   99: iinc 8 1
    //   102: goto -43 -> 59
    //   105: aload_2
    //   106: invokestatic 67	com/applovin/sdk/bootstrap/SdkBootstrap:getInstance	(Landroid/content/Context;)Lcom/applovin/sdk/bootstrap/SdkBootstrap;
    //   109: astore 9
    //   111: aload 9
    //   113: ldc 2
    //   115: invokevirtual 71	com/applovin/sdk/bootstrap/SdkBootstrap:loadImplementation	(Ljava/lang/Class;)Ljava/lang/Object;
    //   118: checkcast 2	com/applovin/sdk/AppLovinSdk
    //   121: astore 12
    //   123: aload 12
    //   125: aload_0
    //   126: aload_1
    //   127: aload_2
    //   128: invokevirtual 77	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   131: invokevirtual 81	com/applovin/sdk/AppLovinSdk:initialize	(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)V
    //   134: aload 12
    //   136: ifnonnull +45 -> 181
    //   139: ldc 83
    //   141: ldc 85
    //   143: invokestatic 91	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   146: pop
    //   147: aload 9
    //   149: aload_3
    //   150: invokevirtual 94	com/applovin/sdk/bootstrap/SdkBootstrap:disable	(Ljava/lang/String;)V
    //   153: aload 9
    //   155: ldc 2
    //   157: invokevirtual 71	com/applovin/sdk/bootstrap/SdkBootstrap:loadImplementation	(Ljava/lang/Class;)Ljava/lang/Object;
    //   160: checkcast 2	com/applovin/sdk/AppLovinSdk
    //   163: astore 12
    //   165: aload 12
    //   167: ifnull +83 -> 250
    //   170: aload 12
    //   172: aload_0
    //   173: aload_1
    //   174: aload_2
    //   175: invokevirtual 77	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   178: invokevirtual 81	com/applovin/sdk/AppLovinSdk:initialize	(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)V
    //   181: iconst_1
    //   182: getstatic 22	com/applovin/sdk/AppLovinSdk:a	[Lcom/applovin/sdk/AppLovinSdk;
    //   185: arraylength
    //   186: iadd
    //   187: anewarray 2	com/applovin/sdk/AppLovinSdk
    //   190: astore 13
    //   192: getstatic 22	com/applovin/sdk/AppLovinSdk:a	[Lcom/applovin/sdk/AppLovinSdk;
    //   195: iconst_0
    //   196: aload 13
    //   198: iconst_0
    //   199: getstatic 22	com/applovin/sdk/AppLovinSdk:a	[Lcom/applovin/sdk/AppLovinSdk;
    //   202: arraylength
    //   203: invokestatic 100	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   206: aload 13
    //   208: getstatic 22	com/applovin/sdk/AppLovinSdk:a	[Lcom/applovin/sdk/AppLovinSdk;
    //   211: arraylength
    //   212: aload 12
    //   214: aastore
    //   215: aload 13
    //   217: putstatic 22	com/applovin/sdk/AppLovinSdk:a	[Lcom/applovin/sdk/AppLovinSdk;
    //   220: aload 4
    //   222: monitorexit
    //   223: goto +45 -> 268
    //   226: astore 10
    //   228: ldc 83
    //   230: ldc 102
    //   232: aload 10
    //   234: invokestatic 106	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   237: pop
    //   238: aload 10
    //   240: invokevirtual 109	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   243: astore_3
    //   244: aconst_null
    //   245: astore 12
    //   247: goto -113 -> 134
    //   250: ldc 83
    //   252: ldc 111
    //   254: invokestatic 113	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   257: pop
    //   258: new 115	java/lang/RuntimeException
    //   261: dup
    //   262: ldc 117
    //   264: invokespecial 118	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   267: athrow
    //   268: aload 12
    //   270: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   10	96	91	finally
    //   105	111	91	finally
    //   111	134	91	finally
    //   139	268	91	finally
    //   111	134	226	java/lang/Throwable
  }

  public abstract AppLovinAdService getAdService();

  public abstract Context getApplicationContext();

  public abstract Logger getLogger();

  public abstract String getSdkKey();

  public abstract AppLovinSdkSettings getSettings();

  public abstract AppLovinTargetingData getTargetingData();

  public abstract boolean hasCriticalErrors();

  protected abstract void initialize(String paramString, AppLovinSdkSettings paramAppLovinSdkSettings, Context paramContext);

  public abstract boolean isEnabled();

  public abstract void setPluginVersion(String paramString);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.sdk.AppLovinSdk
 * JD-Core Version:    0.5.3
 */