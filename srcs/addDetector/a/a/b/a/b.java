package a.a.b.a;

public final class b extends Exception
{
  protected Throwable a;

  public b(String paramString)
  {
    super(paramString);
  }

  public b(Throwable paramThrowable)
  {
    this.a = paramThrowable;
  }

  public final String getMessage()
  {
    String str = super.getMessage();
    if ((str == null) && (this.a != null))
      str = this.a.getMessage();
    return str;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.a.b
 * JD-Core Version:    0.5.3
 */