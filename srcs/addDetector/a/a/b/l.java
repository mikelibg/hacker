package a.a.b;

import a.a.b.d.h;
import a.a.b.d.m;
import a.a.b.d.p;
import a.a.b.d.q;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.Vector;

public final class l
  implements a.a.b.d.b
{
  static Class c;
  static Class d;
  static Class e;
  static Class f;
  static Class g;
  static Class h;
  protected Hashtable a = new Hashtable(11);
  protected a.a.b.d.g b = new d();
  private h i;

  private a a(Properties paramProperties, String paramString)
  {
    a locala1 = (a)this.a.get(paramString);
    if (locala1 != null)
    {
      a.a.b.b.c.a("Appender \"" + paramString + "\" was already parsed.");
      return locala1;
    }
    String str1 = "log4j.appender." + paramString;
    String str2 = str1 + ".layout";
    Class localClass1;
    if (e == null)
    {
      localClass1 = a("a.a.b.a");
      e = localClass1;
    }
    a locala2;
    while (true)
    {
      locala2 = (a)a.a.b.b.e.a(paramProperties, str1, localClass1);
      if (locala2 != null)
        break;
      a.a.b.b.c.b("Could not instantiate appender named \"" + paramString + "\".");
      return null;
      localClass1 = e;
    }
    locala2.g();
    if (locala2 instanceof a.a.b.d.l)
    {
      Class localClass3;
      if (locala2.h())
      {
        if (f != null)
          break label702;
        localClass3 = a("a.a.b.f");
        f = localClass3;
        label195: f localf = (f)a.a.b.b.e.a(paramProperties, str2, localClass3);
        if (localf != null)
        {
          locala2.f();
          a.a.b.b.c.a("Parsing layout options for \"" + paramString + "\".");
          a.a.b.a.a.a(localf, paramProperties, str2 + ".");
          a.a.b.b.c.a("End of parsing for \"" + paramString + "\".");
        }
      }
      String str3 = str1 + ".errorhandler";
      if (a.a.b.b.e.a(str3, paramProperties) != null)
      {
        Class localClass2;
        label343: a.a.b.d.d locald;
        h localh;
        String str4;
        label492: Properties localProperties;
        String[] arrayOfString;
        Iterator localIterator;
        if (g == null)
        {
          localClass2 = a("a.a.b.d.d");
          g = localClass2;
          locald = (a.a.b.d.d)a.a.b.b.e.a(paramProperties, str3, localClass2);
          if (locald == null)
            break label817;
          locala2.e();
          a.a.b.b.c.a("Parsing errorhandler options for \"" + paramString + "\".");
          localh = this.i;
          if (a.a.b.b.e.a(a.a.b.b.e.a(str3 + "root-ref", paramProperties), false))
          {
            localh.d();
            locald.a();
          }
          str4 = a.a.b.b.e.a(str3 + "logger-ref", paramProperties);
          if (str4 != null)
          {
            if (this.b != null)
              break label718;
            localh.a(str4);
            locald.a();
          }
          String str5 = a.a.b.b.e.a(str3 + "appender-ref", paramProperties);
          if ((str5 != null) && (a(paramProperties, str5) != null))
            locald.b();
          localProperties = new Properties();
          arrayOfString = new String[3];
          arrayOfString[0] = str3 + ".root-ref";
          arrayOfString[1] = str3 + ".logger-ref";
          arrayOfString[2] = str3 + ".appender-ref";
          localIterator = paramProperties.entrySet().iterator();
        }
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          for (int j = 0; ; ++j)
            if ((j >= arrayOfString.length) || (arrayOfString[j].equals(localEntry.getKey())))
              break label735;
          label702: localClass3 = f;
          break label195:
          localClass2 = g;
          break label343:
          label718: localh.a(str4, this.b);
          break label492:
          label735: if (j != arrayOfString.length)
            continue;
          localProperties.put(localEntry.getKey(), localEntry.getValue());
        }
        a.a.b.a.a.a(locald, localProperties, str3 + ".");
        a.a.b.b.c.a("End of errorhandler parsing for \"" + paramString + "\".");
      }
      label817: a.a.b.a.a.a(locala2, paramProperties, str1 + ".");
      a.a.b.b.c.a("Parsed \"" + paramString + "\" options.");
    }
    a(paramProperties, paramString, locala2);
    this.a.put(locala2.d(), locala2);
    return locala2;
  }

  private static Class a(String paramString)
  {
    try
    {
      Class localClass = Class.forName(paramString);
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new NoClassDefFoundError(localClassNotFoundException.getMessage());
    }
  }

  private void a(Properties paramProperties, h paramh)
  {
    Enumeration localEnumeration = paramProperties.propertyNames();
    while (localEnumeration.hasMoreElements())
    {
      label5: String str1 = (String)localEnumeration.nextElement();
      if ((str1.startsWith("log4j.category.")) || (str1.startsWith("log4j.logger.")))
      {
        if (str1.startsWith("log4j.category."));
        for (String str2 = str1.substring(15); ; str2 = str1.substring(13))
        {
          boolean bool1;
          do
          {
            String str3 = a.a.b.b.e.a(str1, paramProperties);
            synchronized (paramh.a(str2, this.b))
            {
              a(paramProperties, ???, str2, str3);
              String str4 = a.a.b.b.e.a("log4j.additivity." + str2, paramProperties);
              a.a.b.b.c.a("Handling log4j.additivity." + str2 + "=[" + str4 + "]");
              if ((str4 != null) && (!(str4.equals(""))))
              {
                boolean bool2 = a.a.b.b.e.a(str4, true);
                a.a.b.b.c.a("Setting additivity for \"" + str2 + "\" to " + bool2);
                ???.a(bool2);
              }
            }
            bool1 = str1.startsWith("log4j.logger.");
            str2 = null;
          }
          while (!(bool1));
        }
      }
      if (str1.startsWith("log4j.renderer."))
      {
        String str5 = str1.substring(15);
        String str6 = a.a.b.b.e.a(str1, paramProperties);
        if (!(paramh instanceof m))
          continue;
        a.a.b.c.c.a((m)paramh, str5, str6);
      }
      if ((!(str1.equals("log4j.throwableRenderer"))) || (!(paramh instanceof q)))
        continue;
      Class localClass;
      if (d == null)
      {
        localClass = a("a.a.b.d.p");
        d = localClass;
      }
      p localp;
      while (true)
      {
        localp = (p)a.a.b.b.e.a(paramProperties, "log4j.throwableRenderer", localClass);
        if (localp != null)
          break;
        a.a.b.b.c.b("Could not instantiate throwableRenderer.");
        break label5:
        localClass = d;
      }
      new a.a.b.a.a(localp).a(paramProperties, "log4j.throwableRenderer.");
      ((q)paramh).a(localp);
    }
  }

  private void a(Properties paramProperties, i parami, String paramString1, String paramString2)
  {
    a.a.b.b.c.a("Parsing for [" + paramString1 + "] with value=[" + paramString2 + "].");
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString2, ",");
    String str2;
    if ((!(paramString2.startsWith(","))) && (!(paramString2.equals(""))))
    {
      if (!(localStringTokenizer.hasMoreTokens()))
        return;
      str2 = localStringTokenizer.nextToken();
      a.a.b.b.c.a("Level token is [" + str2 + "].");
      if ((!("inherited".equalsIgnoreCase(str2))) && (!("null".equalsIgnoreCase(str2))))
        break label282;
      if (!(paramString1.equals("root")))
        break label274;
      a.a.b.b.c.c("The root logger cannot be set to null.");
    }
    while (true)
    {
      a.a.b.b.c.a("Category " + paramString1 + " set to " + parami.f());
      parami.g();
      while (true)
      {
        if (localStringTokenizer.hasMoreTokens());
        String str1 = localStringTokenizer.nextToken().trim();
        if ((str1 == null) || (str1.equals(",")))
          continue;
        a.a.b.b.c.a("Parsing appender named \"" + str1 + "\".");
        a locala = a(paramProperties, str1);
        if (locala == null)
          continue;
        parami.a(locala);
      }
      label274: parami.a(null);
      continue;
      label282: parami.a(a.a.b.b.e.a(str2, g.f));
    }
  }

  private static void a(Properties paramProperties, String paramString, a parama)
  {
    String str1 = "log4j.appender." + paramString + ".filter.";
    int j = str1.length();
    Hashtable localHashtable = new Hashtable();
    Enumeration localEnumeration1 = paramProperties.keys();
    Object localObject1 = "";
    label49: String str4;
    Object localObject2;
    String str5;
    if (localEnumeration1.hasMoreElements())
    {
      str4 = (String)localEnumeration1.nextElement();
      if (!(str4.startsWith(str1)))
        break label502;
      int k = str4.indexOf(46, j);
      if (k == -1)
        break label491;
      String str6 = str4.substring(0, k);
      localObject2 = str4.substring(k + 1);
      str5 = str6;
      label122: Vector localVector = (Vector)localHashtable.get(str5);
      if (localVector == null)
      {
        localVector = new Vector();
        localHashtable.put(str5, localVector);
      }
      if (k != -1)
        localVector.add(new j((String)localObject2, a.a.b.b.e.a(str4, paramProperties)));
    }
    while (true)
    {
      localObject1 = localObject2;
      break label49:
      n localn = new n(localHashtable);
      while (localn.hasMoreElements())
      {
        String str2 = (String)localn.nextElement();
        String str3 = paramProperties.getProperty(str2);
        if (str3 != null)
        {
          a.a.b.b.c.a("Filter key: [" + str2 + "] class: [" + paramProperties.getProperty(str2) + "] props: " + localHashtable.get(str2));
          Class localClass;
          if (h == null)
          {
            localClass = a("a.a.b.d.e");
            h = localClass;
          }
          a.a.b.d.e locale;
          a.a.b.a.a locala;
          while (true)
          {
            locale = (a.a.b.d.e)a.a.b.b.e.a(str3, localClass, null);
            if (locale != null);
            locala = new a.a.b.a.a(locale);
            Enumeration localEnumeration2 = ((Vector)localHashtable.get(str2)).elements();
            while (true)
            {
              if (!(localEnumeration2.hasMoreElements()))
                break label401;
              j localj = (j)localEnumeration2.nextElement();
              locala.a(localj.a, localj.b);
            }
            localClass = h;
          }
          label401: locala.a();
          a.a.b.b.c.a("Adding filter of type [" + locale.getClass() + "] to appender named [" + parama.d() + "].");
          parama.a();
        }
        a.a.b.b.c.c("Missing class definition for filter: [" + str2 + "]");
      }
      return;
      label491: localObject2 = localObject1;
      str5 = str4;
      break label122:
      label502: localObject2 = localObject1;
    }
  }

  // ERROR //
  public final void a(java.net.URL paramURL, h paramh)
  {
    // Byte code:
    //   0: new 154	java/util/Properties
    //   3: dup
    //   4: invokespecial 155	java/util/Properties:<init>	()V
    //   7: astore_3
    //   8: new 44	java/lang/StringBuffer
    //   11: dup
    //   12: ldc_w 456
    //   15: invokespecial 49	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   18: aload_1
    //   19: invokevirtual 353	java/lang/StringBuffer:append	(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   22: invokevirtual 59	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   25: invokestatic 63	a/a/b/b/c:a	(Ljava/lang/String;)V
    //   28: aconst_null
    //   29: astore 4
    //   31: aload_1
    //   32: invokevirtual 462	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   35: astore 13
    //   37: aload 13
    //   39: iconst_0
    //   40: invokevirtual 467	java/net/URLConnection:setUseCaches	(Z)V
    //   43: aload 13
    //   45: invokevirtual 471	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   48: astore 4
    //   50: aload_3
    //   51: aload 4
    //   53: invokevirtual 475	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   56: aload 4
    //   58: ifnull +8 -> 66
    //   61: aload 4
    //   63: invokevirtual 480	java/io/InputStream:close	()V
    //   66: aload_0
    //   67: aload_2
    //   68: putfield 129	a/a/b/l:i	La/a/b/d/h;
    //   71: aload_3
    //   72: ldc_w 482
    //   75: invokevirtual 408	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   78: astore 14
    //   80: aload 14
    //   82: ifnonnull +23 -> 105
    //   85: aload_3
    //   86: ldc_w 484
    //   89: invokevirtual 408	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   92: astore 14
    //   94: aload 14
    //   96: ifnull +9 -> 105
    //   99: ldc_w 486
    //   102: invokestatic 343	a/a/b/b/c:c	(Ljava/lang/String;)V
    //   105: aload 14
    //   107: ifnull +12 -> 119
    //   110: aload 14
    //   112: iconst_1
    //   113: invokestatic 134	a/a/b/b/e:a	(Ljava/lang/String;Z)Z
    //   116: invokestatic 487	a/a/b/b/c:a	(Z)V
    //   119: aload_3
    //   120: ldc_w 489
    //   123: invokevirtual 408	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   126: astore 15
    //   128: aload 15
    //   130: ifnull +18 -> 148
    //   133: aload 15
    //   135: iconst_0
    //   136: invokestatic 134	a/a/b/b/e:a	(Ljava/lang/String;Z)Z
    //   139: ifeq +9 -> 148
    //   142: aload_2
    //   143: invokeinterface 490 1 0
    //   148: ldc_w 492
    //   151: aload_3
    //   152: invokestatic 117	a/a/b/b/e:a	(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    //   155: astore 16
    //   157: aload 16
    //   159: ifnull +48 -> 207
    //   162: aload_2
    //   163: aload 16
    //   165: getstatic 494	a/a/b/g:h	La/a/b/g;
    //   168: invokestatic 373	a/a/b/b/e:a	(Ljava/lang/String;La/a/b/g;)La/a/b/g;
    //   171: invokeinterface 495 2 0
    //   176: new 44	java/lang/StringBuffer
    //   179: dup
    //   180: ldc_w 497
    //   183: invokespecial 49	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   186: aload_2
    //   187: invokeinterface 499 1 0
    //   192: invokevirtual 353	java/lang/StringBuffer:append	(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   195: ldc_w 315
    //   198: invokevirtual 53	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   201: invokevirtual 59	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   204: invokestatic 63	a/a/b/b/c:a	(Ljava/lang/String;)V
    //   207: ldc_w 501
    //   210: aload_3
    //   211: invokestatic 117	a/a/b/b/e:a	(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    //   214: astore 17
    //   216: aload 17
    //   218: ifnonnull +12 -> 230
    //   221: ldc_w 503
    //   224: aload_3
    //   225: invokestatic 117	a/a/b/b/e:a	(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    //   228: astore 17
    //   230: aload 17
    //   232: ifnonnull +253 -> 485
    //   235: ldc_w 505
    //   238: invokestatic 63	a/a/b/b/c:a	(Ljava/lang/String;)V
    //   241: ldc_w 507
    //   244: aload_3
    //   245: invokestatic 117	a/a/b/b/e:a	(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    //   248: astore 20
    //   250: aload 20
    //   252: ifnull +78 -> 330
    //   255: new 44	java/lang/StringBuffer
    //   258: dup
    //   259: ldc_w 509
    //   262: invokespecial 49	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   265: aload 20
    //   267: invokevirtual 53	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   270: ldc_w 315
    //   273: invokevirtual 53	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   276: invokevirtual 59	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   279: invokestatic 63	a/a/b/b/c:a	(Ljava/lang/String;)V
    //   282: getstatic 511	a/a/b/l:c	Ljava/lang/Class;
    //   285: ifnonnull +237 -> 522
    //   288: ldc_w 513
    //   291: invokestatic 75	a/a/b/l:a	(Ljava/lang/String;)Ljava/lang/Class;
    //   294: astore 21
    //   296: aload 21
    //   298: putstatic 511	a/a/b/l:c	Ljava/lang/Class;
    //   301: aload_0
    //   302: aload 20
    //   304: aload 21
    //   306: aload_0
    //   307: getfield 35	a/a/b/l:b	La/a/b/d/g;
    //   310: invokestatic 421	a/a/b/b/e:a	(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    //   313: checkcast 515	a/a/b/d/g
    //   316: putfield 35	a/a/b/l:b	La/a/b/d/g;
    //   319: aload_0
    //   320: getfield 35	a/a/b/l:b	La/a/b/d/g;
    //   323: aload_3
    //   324: ldc_w 517
    //   327: invokestatic 110	a/a/b/a/a:a	(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V
    //   330: aload_0
    //   331: aload_3
    //   332: aload_2
    //   333: invokespecial 519	a/a/b/l:a	(Ljava/util/Properties;La/a/b/d/h;)V
    //   336: ldc_w 521
    //   339: invokestatic 63	a/a/b/b/c:a	(Ljava/lang/String;)V
    //   342: aload_0
    //   343: getfield 30	a/a/b/l:a	Ljava/util/Hashtable;
    //   346: invokevirtual 524	java/util/Hashtable:clear	()V
    //   349: return
    //   350: astore 24
    //   352: invokestatic 530	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   355: invokevirtual 533	java/lang/Thread:interrupt	()V
    //   358: goto -292 -> 66
    //   361: astore 9
    //   363: aload 9
    //   365: instanceof 450
    //   368: ifne +11 -> 379
    //   371: aload 9
    //   373: instanceof 535
    //   376: ifeq +9 -> 385
    //   379: invokestatic 530	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   382: invokevirtual 533	java/lang/Thread:interrupt	()V
    //   385: new 44	java/lang/StringBuffer
    //   388: dup
    //   389: ldc_w 537
    //   392: invokespecial 49	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   395: aload_1
    //   396: invokevirtual 353	java/lang/StringBuffer:append	(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   399: ldc_w 315
    //   402: invokevirtual 53	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   405: invokevirtual 59	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   408: aload 9
    //   410: invokestatic 540	a/a/b/b/c:b	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   413: new 44	java/lang/StringBuffer
    //   416: dup
    //   417: ldc_w 542
    //   420: invokespecial 49	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   423: aload_1
    //   424: invokevirtual 353	java/lang/StringBuffer:append	(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    //   427: ldc_w 315
    //   430: invokevirtual 53	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   433: invokevirtual 59	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   436: invokestatic 86	a/a/b/b/c:b	(Ljava/lang/String;)V
    //   439: aload 4
    //   441: ifnull -92 -> 349
    //   444: aload 4
    //   446: invokevirtual 480	java/io/InputStream:close	()V
    //   449: return
    //   450: astore 12
    //   452: invokestatic 530	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   455: invokevirtual 533	java/lang/Thread:interrupt	()V
    //   458: return
    //   459: astore 5
    //   461: aload 4
    //   463: ifnull +8 -> 471
    //   466: aload 4
    //   468: invokevirtual 480	java/io/InputStream:close	()V
    //   471: aload 5
    //   473: athrow
    //   474: astore 8
    //   476: invokestatic 530	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   479: invokevirtual 533	java/lang/Thread:interrupt	()V
    //   482: goto -11 -> 471
    //   485: aload_2
    //   486: invokeinterface 139 1 0
    //   491: astore 18
    //   493: aload 18
    //   495: monitorenter
    //   496: aload_0
    //   497: aload_3
    //   498: aload 18
    //   500: ldc_w 339
    //   503: aload 17
    //   505: invokespecial 255	a/a/b/l:a	(Ljava/util/Properties;La/a/b/i;Ljava/lang/String;Ljava/lang/String;)V
    //   508: aload 18
    //   510: monitorexit
    //   511: goto -270 -> 241
    //   514: astore 19
    //   516: aload 18
    //   518: monitorexit
    //   519: aload 19
    //   521: athrow
    //   522: getstatic 511	a/a/b/l:c	Ljava/lang/Class;
    //   525: astore 21
    //   527: goto -226 -> 301
    //   530: astore 23
    //   532: goto -466 -> 66
    //   535: astore 22
    //   537: goto -471 -> 66
    //   540: astore 11
    //   542: return
    //   543: astore 10
    //   545: return
    //   546: astore 7
    //   548: goto -77 -> 471
    //   551: astore 6
    //   553: goto -82 -> 471
    //
    // Exception table:
    //   from	to	target	type
    //   61	66	350	java/io/InterruptedIOException
    //   31	56	361	java/lang/Exception
    //   444	449	450	java/io/InterruptedIOException
    //   31	56	459	finally
    //   363	379	459	finally
    //   379	385	459	finally
    //   385	439	459	finally
    //   466	471	474	java/io/InterruptedIOException
    //   496	511	514	finally
    //   61	66	530	java/io/IOException
    //   61	66	535	java/lang/RuntimeException
    //   444	449	540	java/io/IOException
    //   444	449	543	java/lang/RuntimeException
    //   466	471	546	java/io/IOException
    //   466	471	551	java/lang/RuntimeException
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.l
 * JD-Core Version:    0.5.3
 */