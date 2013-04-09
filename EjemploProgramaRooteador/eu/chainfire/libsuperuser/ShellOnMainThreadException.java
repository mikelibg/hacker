package eu.chainfire.libsuperuser;

public class ShellOnMainThreadException extends RuntimeException
{
  public ShellOnMainThreadException()
  {
    super("Application attempted to run a shell command from the main thread");
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     eu.chainfire.libsuperuser.ShellOnMainThreadException
 * JD-Core Version:    0.5.3
 */