package a.a.b.d;

import a.a.b.b.c;
import a.a.b.g;
import a.a.b.i;

public final class o extends i
{
  public o(g paramg)
  {
    super("root");
    a(paramg);
  }

  public final void a(g paramg)
  {
    if (paramg == null)
    {
      c.b("You have tried to set a null level to root.", new Throwable());
      return;
    }
    this.b = paramg;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.d.o
 * JD-Core Version:    0.5.3
 */