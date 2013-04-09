package a.a.a.a.a.e;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipException;

public final class c
{
  static Class a;
  static Class b;
  static Class c;
  static Class d;
  private static final Map e = new HashMap();

  static
  {
    Class localClass1;
    label26: Class localClass2;
    label46: Class localClass3;
    label66: Class localClass4;
    if (a == null)
    {
      localClass1 = a("a.a.a.a.a.e.b");
      a = localClass1;
      a(localClass1);
      if (b != null)
        break label98;
      localClass2 = a("a.a.a.a.a.e.g");
      b = localClass2;
      a(localClass2);
      if (c != null)
        break label105;
      localClass3 = a("a.a.a.a.a.e.l");
      c = localClass3;
      a(localClass3);
      if (d != null)
        break label112;
      localClass4 = a("a.a.a.a.a.e.k");
      d = localClass4;
    }
    while (true)
    {
      a(localClass4);
      return;
      localClass1 = a;
      break label26:
      label98: localClass2 = b;
      break label46:
      label105: localClass3 = c;
      break label66:
      label112: localClass4 = d;
    }
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
      throw new NoClassDefFoundError().initCause(localClassNotFoundException);
    }
  }

  private static void a(Class paramClass)
  {
    try
    {
      w localw = (w)paramClass.newInstance();
      e.put(localw.a(), paramClass);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new RuntimeException(paramClass + " doesn't implement ZipExtraField");
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new RuntimeException(paramClass + " is not a concrete class");
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new RuntimeException(paramClass + "'s no-arg constructor is not public");
    }
  }

  public static byte[] a(w[] paramArrayOfw)
  {
    int i;
    if ((paramArrayOfw.length > 0) && (paramArrayOfw[(-1 + paramArrayOfw.length)] instanceof m))
    {
      i = 1;
      label19: if (i == 0)
        break label68;
    }
    int k;
    for (int j = -1 + paramArrayOfw.length; ; j = paramArrayOfw.length)
    {
      k = j * 4;
      for (int l = 0; ; ++l)
      {
        if (l >= paramArrayOfw.length)
          break label74;
        k += paramArrayOfw[l].f().b();
      }
      i = 0;
      label68: break label19:
    }
    label74: byte[] arrayOfByte1 = new byte[k];
    int i1 = 0;
    int i2 = 0;
    while (i1 < j)
    {
      System.arraycopy(paramArrayOfw[i1].a().a(), 0, arrayOfByte1, i2, 2);
      System.arraycopy(paramArrayOfw[i1].f().a(), 0, arrayOfByte1, i2 + 2, 2);
      byte[] arrayOfByte3 = paramArrayOfw[i1].e();
      System.arraycopy(arrayOfByte3, 0, arrayOfByte1, i2 + 4, arrayOfByte3.length);
      i2 += 4 + arrayOfByte3.length;
      ++i1;
    }
    if (i != 0)
    {
      byte[] arrayOfByte2 = paramArrayOfw[(-1 + paramArrayOfw.length)].e();
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, i2, arrayOfByte2.length);
    }
    return arrayOfByte1;
  }

  public static w[] a(byte[] paramArrayOfByte, d paramd)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    y localy;
    int j;
    if (i <= -4 + paramArrayOfByte.length)
    {
      localy = new y(paramArrayOfByte, i);
      j = new y(paramArrayOfByte, i + 2).b();
      if (j + i + 4 <= paramArrayOfByte.length)
        break label217;
      switch (paramd.a())
      {
      default:
        throw new ZipException("unknown UnparseableExtraField key: " + paramd.a());
      case 0:
        throw new ZipException("bad extra field starting at " + i + ".  Block length of " + j + " bytes exceeds remaining data of " + (-4 + paramArrayOfByte.length - i) + " bytes.");
      case 2:
        m localm = new m();
        localm.a(paramArrayOfByte, i, paramArrayOfByte.length - i);
        localArrayList.add(localm);
      case 1:
      }
    }
    return ((w[])localArrayList.toArray(new w[localArrayList.size()]));
    try
    {
      label217: Class localClass = (Class)e.get(localy);
      if (localClass != null)
      {
        localObject = (w)localClass.newInstance();
        ((w)localObject).a(paramArrayOfByte, i + 4, j);
        localArrayList.add(localObject);
        i += j + 4;
      }
      Object localObject = new n();
      ((n)localObject).a(localy);
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new ZipException(localInstantiationException.getMessage());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new ZipException(localIllegalAccessException.getMessage());
    }
  }

  public static byte[] b(w[] paramArrayOfw)
  {
    int i;
    if ((paramArrayOfw.length > 0) && (paramArrayOfw[(-1 + paramArrayOfw.length)] instanceof m))
    {
      i = 1;
      label19: if (i == 0)
        break label68;
    }
    int k;
    for (int j = -1 + paramArrayOfw.length; ; j = paramArrayOfw.length)
    {
      k = j * 4;
      for (int l = 0; ; ++l)
      {
        if (l >= paramArrayOfw.length)
          break label74;
        k += paramArrayOfw[l].d().b();
      }
      i = 0;
      label68: break label19:
    }
    label74: byte[] arrayOfByte1 = new byte[k];
    int i1 = 0;
    int i2 = 0;
    while (i1 < j)
    {
      System.arraycopy(paramArrayOfw[i1].a().a(), 0, arrayOfByte1, i2, 2);
      System.arraycopy(paramArrayOfw[i1].d().a(), 0, arrayOfByte1, i2 + 2, 2);
      byte[] arrayOfByte3 = paramArrayOfw[i1].c();
      System.arraycopy(arrayOfByte3, 0, arrayOfByte1, i2 + 4, arrayOfByte3.length);
      i2 += 4 + arrayOfByte3.length;
      ++i1;
    }
    if (i != 0)
    {
      byte[] arrayOfByte2 = paramArrayOfw[(-1 + paramArrayOfw.length)].c();
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, i2, arrayOfByte2.length);
    }
    return arrayOfByte1;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.c
 * JD-Core Version:    0.5.3
 */