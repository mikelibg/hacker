package a.a.a.b.b;

import a.a.a.b.c;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public final class a
{
  static Class a;
  private static final Object b = new Object();
  private static String[] c = { "getCause", "getNextException", "getTargetException", "getException", "getSourceException", "getRootCause", "getCausedByException", "getNested", "getLinkedException", "getNestedException", "getLinkedCause", "getThrowable" };
  private static final Method d;
  private static final Method e;

  static
  {
    Class localClass4;
    label102: Method localMethod1;
    try
    {
      if (a == null)
      {
        localClass4 = b("java.lang.Throwable");
        a = localClass4;
        Method localMethod4 = localClass4.getMethod("getCause", null);
        localMethod1 = localMethod4;
        label115: d = localMethod1;
      }
    }
    catch (Exception localException1)
    {
      Method localMethod2;
      try
      {
        Class localClass3;
        if (a == null)
        {
          localClass3 = b("java.lang.Throwable");
          a = localClass3;
        }
        for (Class localClass1 = localClass3; ; localClass1 = a)
        {
          Class[] arrayOfClass = new Class[1];
          if (a != null)
            break;
          localClass2 = b("java.lang.Throwable");
          a = localClass2;
          arrayOfClass[0] = localClass2;
          Method localMethod3 = localClass1.getMethod("initCause", arrayOfClass);
          localMethod2 = localMethod3;
          label185: e = localMethod2;
          return;
          localClass4 = a;
          break label102:
          localException1 = localException1;
          localMethod1 = null;
          break label115:
        }
        Class localClass2 = a;
      }
      catch (Exception localException2)
      {
        localMethod2 = null;
        break label185:
      }
    }
  }

  public static Throwable a(Throwable paramThrowable)
  {
    synchronized (b)
    {
      Throwable localThrowable = a(paramThrowable, c);
      return localThrowable;
    }
  }

  // ERROR //
  private static Throwable a(Throwable paramThrowable, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 88	java/lang/Object:getClass	()Ljava/lang/Class;
    //   4: aload_1
    //   5: aconst_null
    //   6: invokevirtual 63	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   9: astore 10
    //   11: aload 10
    //   13: astore_3
    //   14: aload_3
    //   15: ifnull +72 -> 87
    //   18: getstatic 52	a/a/a/b/b/a:a	Ljava/lang/Class;
    //   21: ifnonnull +56 -> 77
    //   24: ldc 54
    //   26: invokestatic 57	a/a/a/b/b/a:b	(Ljava/lang/String;)Ljava/lang/Class;
    //   29: astore 4
    //   31: aload 4
    //   33: putstatic 52	a/a/a/b/b/a:a	Ljava/lang/Class;
    //   36: aload 4
    //   38: aload_3
    //   39: invokevirtual 93	java/lang/reflect/Method:getReturnType	()Ljava/lang/Class;
    //   42: invokevirtual 97	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   45: ifeq +42 -> 87
    //   48: aload_3
    //   49: aload_0
    //   50: getstatic 102	a/a/a/b/a:a	[Ljava/lang/Object;
    //   53: invokevirtual 106	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   56: checkcast 108	java/lang/Throwable
    //   59: astore 8
    //   61: aload 8
    //   63: areturn
    //   64: astore 9
    //   66: aconst_null
    //   67: astore_3
    //   68: goto -54 -> 14
    //   71: astore_2
    //   72: aconst_null
    //   73: astore_3
    //   74: goto -60 -> 14
    //   77: getstatic 52	a/a/a/b/b/a:a	Ljava/lang/Class;
    //   80: astore 4
    //   82: goto -46 -> 36
    //   85: astore 7
    //   87: aconst_null
    //   88: areturn
    //   89: astore 6
    //   91: goto -4 -> 87
    //   94: astore 5
    //   96: goto -9 -> 87
    //
    // Exception table:
    //   from	to	target	type
    //   0	11	64	java/lang/NoSuchMethodException
    //   0	11	71	java/lang/SecurityException
    //   48	61	85	java/lang/reflect/InvocationTargetException
    //   48	61	89	java/lang/IllegalArgumentException
    //   48	61	94	java/lang/IllegalAccessException
  }

  private static Throwable a(Throwable paramThrowable, String[] paramArrayOfString)
  {
    Object localObject1 = null;
    if (paramThrowable == null);
    do
    {
      return localObject1;
      if (!(paramThrowable instanceof b))
        break label86;
      localObject1 = ((b)paramThrowable).getCause();
    }
    while (localObject1 != null);
    if (paramArrayOfString == null);
    synchronized (b)
    {
      paramArrayOfString = c;
      for (int i = 0; ; ++i)
      {
        if (i >= paramArrayOfString.length)
          break label134;
        String str = paramArrayOfString[i];
        if (str == null)
          continue;
        localObject1 = a(paramThrowable, str);
        if (localObject1 != null)
          break label134;
      }
      if (paramThrowable instanceof SQLException)
        label86: localObject1 = ((SQLException)paramThrowable).getNextException();
      boolean bool = paramThrowable instanceof InvocationTargetException;
      localObject1 = null;
      if (bool);
      label134: localObject1 = ((InvocationTargetException)paramThrowable).getTargetException();
    }
    return ((Throwable)b(paramThrowable, "detail"));
  }

  public static void a(List paramList1, List paramList2)
  {
    if ((paramList1 == null) || (paramList2 == null))
      throw new IllegalArgumentException("The List must not be null");
    int i = -1 + paramList1.size();
    int j = -1 + paramList2.size();
    int l;
    for (int k = i; (k >= 0) && (j >= 0); k = l)
    {
      if (((String)paramList1.get(k)).equals((String)paramList2.get(j)))
        paramList1.remove(k);
      l = k - 1;
      --j;
    }
  }

  public static boolean a()
  {
    return (d != null);
  }

  static String[] a(String paramString)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, c.F);
    ArrayList localArrayList = new ArrayList();
    while (localStringTokenizer.hasMoreTokens())
      localArrayList.add(localStringTokenizer.nextToken());
    return ((String[])localArrayList.toArray(new String[localArrayList.size()]));
  }

  private static Class b(String paramString)
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

  // ERROR //
  private static Throwable b(Throwable paramThrowable, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 88	java/lang/Object:getClass	()Ljava/lang/Class;
    //   4: aload_1
    //   5: invokevirtual 197	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   8: astore 9
    //   10: aload 9
    //   12: astore_3
    //   13: aload_3
    //   14: ifnull +69 -> 83
    //   17: getstatic 52	a/a/a/b/b/a:a	Ljava/lang/Class;
    //   20: ifnonnull +53 -> 73
    //   23: ldc 54
    //   25: invokestatic 57	a/a/a/b/b/a:b	(Ljava/lang/String;)Ljava/lang/Class;
    //   28: astore 4
    //   30: aload 4
    //   32: putstatic 52	a/a/a/b/b/a:a	Ljava/lang/Class;
    //   35: aload 4
    //   37: aload_3
    //   38: invokevirtual 202	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   41: invokevirtual 97	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   44: ifeq +39 -> 83
    //   47: aload_3
    //   48: aload_0
    //   49: invokevirtual 205	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   52: checkcast 108	java/lang/Throwable
    //   55: astore 7
    //   57: aload 7
    //   59: areturn
    //   60: astore 8
    //   62: aconst_null
    //   63: astore_3
    //   64: goto -51 -> 13
    //   67: astore_2
    //   68: aconst_null
    //   69: astore_3
    //   70: goto -57 -> 13
    //   73: getstatic 52	a/a/a/b/b/a:a	Ljava/lang/Class;
    //   76: astore 4
    //   78: goto -43 -> 35
    //   81: astore 6
    //   83: aconst_null
    //   84: areturn
    //   85: astore 5
    //   87: goto -4 -> 83
    //
    // Exception table:
    //   from	to	target	type
    //   0	10	60	java/lang/NoSuchFieldException
    //   0	10	67	java/lang/SecurityException
    //   47	57	81	java/lang/IllegalArgumentException
    //   47	57	85	java/lang/IllegalAccessException
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.b.b.a
 * JD-Core Version:    0.5.3
 */