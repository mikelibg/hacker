package com.lookout.addetector;

import java.util.ArrayList;
import java.util.List;

public final class k extends m
{
  private String a;
  private List b = new ArrayList();

  public final List a()
  {
    return this.b;
  }

  public final void a(String paramString)
  {
    if ((paramString.startsWith("L")) && (paramString.contains("/")))
    {
      b(paramString);
      this.a = paramString.substring(1).replaceAll("/", ".");
      return;
    }
    this.a = paramString;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramString.replace('.', '/');
    b(String.format("L%s", arrayOfObject));
  }

  public final String b()
  {
    return this.a;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.k
 * JD-Core Version:    0.5.3
 */