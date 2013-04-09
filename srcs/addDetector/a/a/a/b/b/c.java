package a.a.a.b.b;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class c
  implements Serializable
{
  public static boolean a = true;
  public static boolean b = true;
  public static boolean c = true;
  private Throwable d = null;

  public c(b paramb)
  {
    if (paramb instanceof Throwable)
    {
      this.d = ((Throwable)paramb);
      return;
    }
    throw new IllegalArgumentException("The Nestable implementation passed to the NestableDelegate(Nestable) constructor must extend java.lang.Throwable");
  }

  private static void a(List paramList)
  {
    for (int i = -1 + paramList.size(); i > 0; --i)
    {
      String[] arrayOfString1 = (String[])paramList.get(i);
      String[] arrayOfString2 = (String[])paramList.get(i - 1);
      ArrayList localArrayList = new ArrayList(Arrays.asList(arrayOfString1));
      a.a(localArrayList, new ArrayList(Arrays.asList(arrayOfString2)));
      int j = arrayOfString1.length - localArrayList.size();
      if (j <= 0)
        continue;
      localArrayList.add("\t... " + j + " more");
      paramList.set(i, localArrayList.toArray(new String[localArrayList.size()]));
    }
  }

  public final void a()
  {
    a(System.err);
  }

  public final void a(PrintStream paramPrintStream)
  {
    monitorenter;
    try
    {
      PrintWriter localPrintWriter = new PrintWriter(paramPrintStream, false);
      a(localPrintWriter);
      localPrintWriter.flush();
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

  public final void a(PrintWriter paramPrintWriter)
  {
    Throwable localThrowable1 = this.d;
    if (a.a())
    {
      if (localThrowable1 instanceof b)
      {
        ((b)localThrowable1).a(paramPrintWriter);
        return;
      }
      localThrowable1.printStackTrace(paramPrintWriter);
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Throwable localThrowable2 = localThrowable1;
    if (localThrowable2 != null)
    {
      label46: StringWriter localStringWriter = new StringWriter();
      PrintWriter localPrintWriter = new PrintWriter(localStringWriter, true);
      if (localThrowable2 instanceof b)
        ((b)localThrowable2).a(localPrintWriter);
      while (true)
      {
        localArrayList.add(a.a(localStringWriter.getBuffer().toString()));
        localThrowable2 = a.a(localThrowable2);
        break label46:
        localThrowable2.printStackTrace(localPrintWriter);
      }
    }
    String str1 = "Caused by: ";
    if (!(a))
    {
      str1 = "Rethrown as: ";
      Collections.reverse(localArrayList);
    }
    String str2 = str1;
    if (b)
      a(localArrayList);
    monitorenter;
    try
    {
      Iterator localIterator = localArrayList.iterator();
      do
      {
        if (!(localIterator.hasNext()))
          break label250;
        String[] arrayOfString = (String[])localIterator.next();
        int i = 0;
        int j = arrayOfString.length;
        while (i < j)
        {
          paramPrintWriter.println(arrayOfString[i]);
          ++i;
        }
      }
      while (!(localIterator.hasNext()));
    }
    finally
    {
      monitorexit;
    }
    label250: monitorexit;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.b.b.c
 * JD-Core Version:    0.5.3
 */