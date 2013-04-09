package a.a.a.b;

import a.a.a.b.b.c;
import java.io.PrintStream;
import java.io.PrintWriter;

public final class b extends UnsupportedOperationException
  implements a.a.a.b.b.b
{
  private c a = new c(this);
  private Throwable b;

  public b()
  {
    super("Code is not implemented");
  }

  public b(String paramString)
  {
    super(paramString);
  }

  public final void a(PrintWriter paramPrintWriter)
  {
    super.printStackTrace(paramPrintWriter);
  }

  public final Throwable getCause()
  {
    return this.b;
  }

  public final String getMessage()
  {
    if (super.getMessage() != null)
      return super.getMessage();
    if (this.b != null)
      return this.b.toString();
    return null;
  }

  public final void printStackTrace()
  {
    this.a.a();
  }

  public final void printStackTrace(PrintStream paramPrintStream)
  {
    this.a.a(paramPrintStream);
  }

  public final void printStackTrace(PrintWriter paramPrintWriter)
  {
    this.a.a(paramPrintWriter);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.b.b
 * JD-Core Version:    0.5.3
 */