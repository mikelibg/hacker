package a.a.b;

class c
{
  static Class c;
  String a;
  int b;

  c(String paramString)
  {
    this.a = paramString;
    this.b = paramString.hashCode();
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

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject)
      return true;
    if (paramObject != null)
    {
      Class localClass;
      if (c == null)
      {
        localClass = a("a.a.b.c");
        c = localClass;
      }
      while (localClass == paramObject.getClass())
      {
        return this.a.equals(((c)paramObject).a);
        localClass = c;
      }
    }
    return false;
  }

  public final int hashCode()
  {
    return this.b;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.c
 * JD-Core Version:    0.5.3
 */