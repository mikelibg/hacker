package eu.chainfire.libsuperuser;

import android.content.Context;
import android.os.Handler;
import android.widget.Toast;

public class Application extends android.app.Application
{
  private static Handler mApplicationHandler = new Handler();

  public static void toast(Context paramContext, String paramString)
  {
    if (paramContext == null);
    do
    {
      return;
      if (paramContext instanceof Application)
        continue;
      paramContext = paramContext.getApplicationContext();
    }
    while (!(paramContext instanceof Application));
    Context localContext = paramContext;
    ((Application)paramContext).runInApplicationThread(new Runnable(localContext, paramString)
    {
      public void run()
      {
        Toast.makeText(Application.this, this.val$m, 1).show();
      }
    });
  }

  public void onCreate()
  {
    super.onCreate();
    try
    {
      Class.forName("android.os.AsyncTask");
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
  }

  public void runInApplicationThread(Runnable paramRunnable)
  {
    mApplicationHandler.post(paramRunnable);
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     eu.chainfire.libsuperuser.Application
 * JD-Core Version:    0.5.3
 */