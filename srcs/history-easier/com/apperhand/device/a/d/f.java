package com.apperhand.device.a.d;

public final class f extends Exception
{
  private a a;
  private boolean b;

  public f()
  {
    this.b = true;
  }

  public f(a parama, String paramString)
  {
    this(parama, paramString, null);
  }

  public f(a parama, String paramString, Throwable paramThrowable)
  {
    this(parama, paramString, paramThrowable, true);
  }

  public f(a parama, String paramString, Throwable paramThrowable, boolean paramBoolean)
  {
    super(paramString, paramThrowable);
    this.b = true;
    this.a = parama;
    this.b = paramBoolean;
  }

  public final boolean a()
  {
    return this.b;
  }

  public static enum a
  {
    private long f;
    private String g;

    static
    {
      a[] arrayOfa = new a[5];
      arrayOfa[0] = a;
      arrayOfa[1] = b;
      arrayOfa[2] = c;
      arrayOfa[3] = d;
      arrayOfa[4] = e;
      h = arrayOfa;
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.device.a.d.f
 * JD-Core Version:    0.5.3
 */