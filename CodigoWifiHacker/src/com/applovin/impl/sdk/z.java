package com.applovin.impl.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.applovin.sdk.Logger;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import org.json.JSONObject;

class z
{
  private final AppLovinSdkImpl a;
  private final Logger b;
  private final Context c;
  private final Object[] d = new Object[w.b()];

  z(AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    this.a = paramAppLovinSdkImpl;
    this.b = paramAppLovinSdkImpl.getLogger();
    this.c = paramAppLovinSdkImpl.getApplicationContext();
  }

  private static y a(String paramString)
  {
    Iterator localIterator = w.a().iterator();
    y localy;
    do
    {
      if (!(localIterator.hasNext()))
        break;
      localy = (y)localIterator.next();
    }
    while (!(localy.b().equals(paramString)));
    while (true)
    {
      return localy;
      localy = null;
    }
  }

  private static Object a(String paramString, JSONObject paramJSONObject, Object paramObject)
  {
    if (paramObject instanceof Boolean);
    for (Object localObject = Boolean.valueOf(paramJSONObject.getBoolean(paramString)); ; localObject = paramJSONObject.getString(paramString))
    {
      while (true)
      {
        return localObject;
        if (paramObject instanceof Float)
          localObject = Float.valueOf((float)paramJSONObject.getDouble(paramString));
        if (paramObject instanceof Integer)
          localObject = Integer.valueOf(paramJSONObject.getInt(paramString));
        if (!(paramObject instanceof Long))
          break;
        localObject = Long.valueOf(paramJSONObject.getLong(paramString));
      }
      if (!(paramObject instanceof String))
        break;
    }
    throw new RuntimeException("SDK Error: unknown value type: " + paramObject.getClass());
  }

  private String e()
  {
    return "com.applovin.sdk." + ad.a(this.a.getSdkKey()) + ".";
  }

  public SharedPreferences a()
  {
    if (this.c == null)
      throw new IllegalArgumentException("No context specified");
    return this.c.getSharedPreferences("com.applovin.sdk.1", 0);
  }

  public Object a(y paramy)
  {
    if (paramy == null)
      throw new IllegalArgumentException("No setting type specified");
    synchronized (this.d)
    {
      Object localObject2 = this.d[paramy.a()];
      if (localObject2 != null)
      {
        localObject3 = paramy.a(localObject2);
        return localObject3;
      }
      Object localObject3 = paramy.c();
    }
  }

  public void a(y paramy, Object paramObject)
  {
    if (paramy == null)
      throw new IllegalArgumentException("No setting type specified");
    if (paramObject == null)
      throw new IllegalArgumentException("No new value specified");
    synchronized (this.d)
    {
      this.d[paramy.a()] = paramObject;
      this.b.d("SettingsManager", "Setting update: " + paramy.b() + " set to \"" + paramObject + "\"");
      return;
    }
  }

  // ERROR //
  void a(com.applovin.sdk.AppLovinSdkSettings paramAppLovinSdkSettings)
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore_2
    //   2: aload_0
    //   3: getfield 34	com/applovin/impl/sdk/z:b	Lcom/applovin/sdk/Logger;
    //   6: ldc 180
    //   8: ldc 194
    //   10: invokeinterface 197 3 0
    //   15: aload_1
    //   16: ifnonnull +4 -> 20
    //   19: return
    //   20: aload_0
    //   21: getfield 24	com/applovin/impl/sdk/z:d	[Ljava/lang/Object;
    //   24: astore 4
    //   26: aload 4
    //   28: monitorenter
    //   29: aload_0
    //   30: getfield 24	com/applovin/impl/sdk/z:d	[Ljava/lang/Object;
    //   33: getstatic 201	com/applovin/impl/sdk/w:l	Lcom/applovin/impl/sdk/y;
    //   36: invokevirtual 170	com/applovin/impl/sdk/y:a	()I
    //   39: aload_1
    //   40: invokevirtual 206	com/applovin/sdk/AppLovinSdkSettings:isVerboseLoggingEnabled	()Z
    //   43: invokestatic 84	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   46: aastore
    //   47: aload_1
    //   48: invokevirtual 210	com/applovin/sdk/AppLovinSdkSettings:getAdRefreshSeconds	()J
    //   51: lstore 6
    //   53: lload 6
    //   55: lload_2
    //   56: lcmp
    //   57: iflt +133 -> 190
    //   60: lload 6
    //   62: lload_2
    //   63: lcmp
    //   64: ifle +12 -> 76
    //   67: ldc2_w 211
    //   70: lload 6
    //   72: invokestatic 218	java/lang/Math:max	(JJ)J
    //   75: lstore_2
    //   76: aload_0
    //   77: getfield 24	com/applovin/impl/sdk/z:d	[Ljava/lang/Object;
    //   80: getstatic 221	com/applovin/impl/sdk/w:G	Lcom/applovin/impl/sdk/y;
    //   83: invokevirtual 170	com/applovin/impl/sdk/y:a	()I
    //   86: lload_2
    //   87: invokestatic 111	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   90: aastore
    //   91: aload_0
    //   92: getfield 24	com/applovin/impl/sdk/z:d	[Ljava/lang/Object;
    //   95: getstatic 224	com/applovin/impl/sdk/w:F	Lcom/applovin/impl/sdk/y;
    //   98: invokevirtual 170	com/applovin/impl/sdk/y:a	()I
    //   101: iconst_1
    //   102: invokestatic 84	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   105: aastore
    //   106: aload_1
    //   107: instanceof 226
    //   110: ifeq +107 -> 217
    //   113: aload_1
    //   114: checkcast 226	com/applovin/impl/sdk/s
    //   117: invokevirtual 229	com/applovin/impl/sdk/s:b	()Ljava/util/Map;
    //   120: invokeinterface 235 1 0
    //   125: invokeinterface 238 1 0
    //   130: astore 8
    //   132: aload 8
    //   134: invokeinterface 56 1 0
    //   139: ifeq +78 -> 217
    //   142: aload 8
    //   144: invokeinterface 60 1 0
    //   149: checkcast 240	java/util/Map$Entry
    //   152: astore 9
    //   154: aload_0
    //   155: getfield 24	com/applovin/impl/sdk/z:d	[Ljava/lang/Object;
    //   158: aload 9
    //   160: invokeinterface 243 1 0
    //   165: checkcast 62	com/applovin/impl/sdk/y
    //   168: invokevirtual 170	com/applovin/impl/sdk/y:a	()I
    //   171: aload 9
    //   173: invokeinterface 246 1 0
    //   178: aastore
    //   179: goto -47 -> 132
    //   182: astore 5
    //   184: aload 4
    //   186: monitorexit
    //   187: aload 5
    //   189: athrow
    //   190: lload 6
    //   192: ldc2_w 247
    //   195: lcmp
    //   196: ifne -90 -> 106
    //   199: aload_0
    //   200: getfield 24	com/applovin/impl/sdk/z:d	[Ljava/lang/Object;
    //   203: getstatic 224	com/applovin/impl/sdk/w:F	Lcom/applovin/impl/sdk/y;
    //   206: invokevirtual 170	com/applovin/impl/sdk/y:a	()I
    //   209: iconst_0
    //   210: invokestatic 84	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   213: aastore
    //   214: goto -108 -> 106
    //   217: aload 4
    //   219: monitorexit
    //   220: goto -201 -> 19
    //
    // Exception table:
    //   from	to	target	type
    //   29	187	182	finally
    //   199	220	182	finally
  }

  // ERROR //
  void a(JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 34	com/applovin/impl/sdk/z:b	Lcom/applovin/sdk/Logger;
    //   4: ldc 180
    //   6: ldc 255
    //   8: invokeinterface 191 3 0
    //   13: aload_0
    //   14: getfield 24	com/applovin/impl/sdk/z:d	[Ljava/lang/Object;
    //   17: astore_2
    //   18: aload_2
    //   19: monitorenter
    //   20: aload_1
    //   21: invokevirtual 258	org/json/JSONObject:keys	()Ljava/util/Iterator;
    //   24: astore 4
    //   26: aload 4
    //   28: invokeinterface 56 1 0
    //   33: ifeq +203 -> 236
    //   36: aload 4
    //   38: invokeinterface 60 1 0
    //   43: checkcast 67	java/lang/String
    //   46: astore 5
    //   48: aload 5
    //   50: ifnull -24 -> 26
    //   53: aload 5
    //   55: invokevirtual 261	java/lang/String:length	()I
    //   58: istore 6
    //   60: iload 6
    //   62: ifle -36 -> 26
    //   65: aload 5
    //   67: invokestatic 263	com/applovin/impl/sdk/z:a	(Ljava/lang/String;)Lcom/applovin/impl/sdk/y;
    //   70: astore 9
    //   72: aload 9
    //   74: ifnull +106 -> 180
    //   77: aload 5
    //   79: aload_1
    //   80: aload 9
    //   82: invokevirtual 175	com/applovin/impl/sdk/y:c	()Ljava/lang/Object;
    //   85: invokestatic 265	com/applovin/impl/sdk/z:a	(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    //   88: astore 10
    //   90: aload_0
    //   91: getfield 24	com/applovin/impl/sdk/z:d	[Ljava/lang/Object;
    //   94: aload 9
    //   96: invokevirtual 170	com/applovin/impl/sdk/y:a	()I
    //   99: aload 10
    //   101: aastore
    //   102: aload_0
    //   103: getfield 34	com/applovin/impl/sdk/z:b	Lcom/applovin/sdk/Logger;
    //   106: ldc 180
    //   108: new 119	java/lang/StringBuilder
    //   111: dup
    //   112: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   115: ldc 182
    //   117: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: aload 9
    //   122: invokevirtual 65	com/applovin/impl/sdk/y:b	()Ljava/lang/String;
    //   125: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: ldc 184
    //   130: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: aload 10
    //   135: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   138: ldc 186
    //   140: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: invokeinterface 191 3 0
    //   151: goto -125 -> 26
    //   154: astore 8
    //   156: aload_0
    //   157: getfield 34	com/applovin/impl/sdk/z:b	Lcom/applovin/sdk/Logger;
    //   160: ldc 180
    //   162: ldc_w 267
    //   165: aload 8
    //   167: invokeinterface 270 4 0
    //   172: goto -146 -> 26
    //   175: astore_3
    //   176: aload_2
    //   177: monitorexit
    //   178: aload_3
    //   179: athrow
    //   180: aload_0
    //   181: getfield 34	com/applovin/impl/sdk/z:b	Lcom/applovin/sdk/Logger;
    //   184: ldc 180
    //   186: new 119	java/lang/StringBuilder
    //   189: dup
    //   190: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   193: ldc_w 272
    //   196: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: aload 5
    //   201: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   207: invokeinterface 275 3 0
    //   212: goto -186 -> 26
    //   215: astore 7
    //   217: aload_0
    //   218: getfield 34	com/applovin/impl/sdk/z:b	Lcom/applovin/sdk/Logger;
    //   221: ldc 180
    //   223: ldc_w 277
    //   226: aload 7
    //   228: invokeinterface 270 4 0
    //   233: goto -207 -> 26
    //   236: aload_2
    //   237: monitorexit
    //   238: return
    //
    // Exception table:
    //   from	to	target	type
    //   65	151	154	org/json/JSONException
    //   180	212	154	org/json/JSONException
    //   20	60	175	finally
    //   65	151	175	finally
    //   156	178	175	finally
    //   180	212	175	finally
    //   217	238	175	finally
    //   65	151	215	java/lang/Throwable
    //   180	212	215	java/lang/Throwable
  }

  // ERROR //
  void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 40	com/applovin/impl/sdk/z:c	Landroid/content/Context;
    //   4: ifnonnull +13 -> 17
    //   7: new 154	java/lang/IllegalArgumentException
    //   10: dup
    //   11: ldc 156
    //   13: invokespecial 157	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   16: athrow
    //   17: aload_0
    //   18: getfield 34	com/applovin/impl/sdk/z:b	Lcom/applovin/sdk/Logger;
    //   21: ldc 180
    //   23: ldc_w 279
    //   26: invokeinterface 197 3 0
    //   31: aload_0
    //   32: invokespecial 281	com/applovin/impl/sdk/z:e	()Ljava/lang/String;
    //   35: astore_1
    //   36: aload_0
    //   37: invokevirtual 283	com/applovin/impl/sdk/z:a	()Landroid/content/SharedPreferences;
    //   40: invokeinterface 289 1 0
    //   45: astore_2
    //   46: aload_0
    //   47: getfield 24	com/applovin/impl/sdk/z:d	[Ljava/lang/Object;
    //   50: astore_3
    //   51: aload_3
    //   52: monitorenter
    //   53: invokestatic 44	com/applovin/impl/sdk/w:a	()Ljava/util/Collection;
    //   56: invokeinterface 50 1 0
    //   61: astore 5
    //   63: aload 5
    //   65: invokeinterface 56 1 0
    //   70: ifeq +232 -> 302
    //   73: aload 5
    //   75: invokeinterface 60 1 0
    //   80: checkcast 62	com/applovin/impl/sdk/y
    //   83: astore 7
    //   85: aload_0
    //   86: getfield 24	com/applovin/impl/sdk/z:d	[Ljava/lang/Object;
    //   89: aload 7
    //   91: invokevirtual 170	com/applovin/impl/sdk/y:a	()I
    //   94: aaload
    //   95: astore 8
    //   97: aload 8
    //   99: ifnull -36 -> 63
    //   102: new 119	java/lang/StringBuilder
    //   105: dup
    //   106: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   109: aload_1
    //   110: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: aload 7
    //   115: invokevirtual 65	com/applovin/impl/sdk/y:b	()Ljava/lang/String;
    //   118: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   124: astore 9
    //   126: aload 8
    //   128: instanceof 74
    //   131: ifeq +30 -> 161
    //   134: aload_2
    //   135: aload 9
    //   137: aload 8
    //   139: checkcast 74	java/lang/Boolean
    //   142: invokevirtual 292	java/lang/Boolean:booleanValue	()Z
    //   145: invokeinterface 298 3 0
    //   150: pop
    //   151: goto -88 -> 63
    //   154: astore 4
    //   156: aload_3
    //   157: monitorexit
    //   158: aload 4
    //   160: athrow
    //   161: aload 8
    //   163: instanceof 86
    //   166: ifeq +23 -> 189
    //   169: aload_2
    //   170: aload 9
    //   172: aload 8
    //   174: checkcast 86	java/lang/Float
    //   177: invokevirtual 302	java/lang/Float:floatValue	()F
    //   180: invokeinterface 306 3 0
    //   185: pop
    //   186: goto -123 -> 63
    //   189: aload 8
    //   191: instanceof 95
    //   194: ifeq +23 -> 217
    //   197: aload_2
    //   198: aload 9
    //   200: aload 8
    //   202: checkcast 95	java/lang/Integer
    //   205: invokevirtual 309	java/lang/Integer:intValue	()I
    //   208: invokeinterface 313 3 0
    //   213: pop
    //   214: goto -151 -> 63
    //   217: aload 8
    //   219: instanceof 104
    //   222: ifeq +23 -> 245
    //   225: aload_2
    //   226: aload 9
    //   228: aload 8
    //   230: checkcast 104	java/lang/Long
    //   233: invokevirtual 316	java/lang/Long:longValue	()J
    //   236: invokeinterface 320 4 0
    //   241: pop
    //   242: goto -179 -> 63
    //   245: aload 8
    //   247: instanceof 67
    //   250: ifeq +20 -> 270
    //   253: aload_2
    //   254: aload 9
    //   256: aload 8
    //   258: checkcast 67	java/lang/String
    //   261: invokeinterface 324 3 0
    //   266: pop
    //   267: goto -204 -> 63
    //   270: new 117	java/lang/RuntimeException
    //   273: dup
    //   274: new 119	java/lang/StringBuilder
    //   277: dup
    //   278: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   281: ldc_w 326
    //   284: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: aload 8
    //   289: invokevirtual 130	java/lang/Object:getClass	()Ljava/lang/Class;
    //   292: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   295: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   298: invokespecial 139	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   301: athrow
    //   302: aload_3
    //   303: monitorexit
    //   304: aload_2
    //   305: invokeinterface 329 1 0
    //   310: pop
    //   311: aload_0
    //   312: getfield 34	com/applovin/impl/sdk/z:b	Lcom/applovin/sdk/Logger;
    //   315: ldc 180
    //   317: ldc_w 331
    //   320: invokeinterface 191 3 0
    //   325: return
    //
    // Exception table:
    //   from	to	target	type
    //   53	158	154	finally
    //   161	304	154	finally
  }

  void c()
  {
    if (this.c == null)
      throw new IllegalArgumentException("No context specified");
    this.b.i("SettingsManager", "Loading settings saved with the application...");
    String str1 = e();
    SharedPreferences localSharedPreferences = this.c.getSharedPreferences("com.applovin.sdk.1", 0);
    Object localObject2;
    while (true)
    {
      String str2;
      synchronized (this.d)
      {
        Iterator localIterator = w.a().iterator();
        while (true)
        {
          if (!(localIterator.hasNext()))
            break label369;
          y localy = (y)localIterator.next();
          try
          {
            str2 = str1 + localy.b();
            localObject2 = localy.c();
            if (!(localObject2 instanceof Boolean))
              break label215;
            localObject3 = Boolean.valueOf(localSharedPreferences.getBoolean(str2, ((Boolean)localObject2).booleanValue()));
            this.d[localy.a()] = localObject3;
          }
          catch (Exception localException)
          {
            this.b.e("SettingsManager", "Unable to load \"" + localy.b() + "\"", localException);
          }
        }
      }
      if (localObject2 instanceof Float)
        label215: localObject3 = Float.valueOf(localSharedPreferences.getFloat(str2, ((Float)localObject2).floatValue()));
      if (localObject2 instanceof Integer)
        localObject3 = Integer.valueOf(localSharedPreferences.getInt(str2, ((Integer)localObject2).intValue()));
      if (localObject2 instanceof Long)
        localObject3 = Long.valueOf(localSharedPreferences.getLong(str2, ((Long)localObject2).longValue()));
      if (!(localObject2 instanceof String))
        break;
      Object localObject3 = localSharedPreferences.getString(str2, (String)localObject2);
    }
    throw new RuntimeException("SDK Error: unknown value: " + localObject2.getClass());
    label369: monitorexit;
  }

  void d()
  {
    synchronized (this.d)
    {
      Arrays.fill(this.d, null);
      SharedPreferences.Editor localEditor = a().edit();
      localEditor.clear();
      localEditor.commit();
      return;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.z
 * JD-Core Version:    0.5.3
 */