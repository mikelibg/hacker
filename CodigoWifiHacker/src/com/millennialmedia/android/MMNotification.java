package com.millennialmedia.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.PackageManager;
import android.os.Vibrator;
import java.lang.ref.WeakReference;
import java.util.HashMap;

class MMNotification extends MMJSObject
  implements DialogInterface.OnClickListener
{
  private int index;

  public MMJSResponse alert(HashMap<String, String> paramHashMap)
  {
    monitorenter;
    try
    {
      Context localContext = (Context)this.contextRef.get();
      label69: ((Activity)localContext).runOnUiThread(new Runnable(localContext, paramHashMap)
      {
        public void run()
        {
          AlertDialog localAlertDialog = new AlertDialog.Builder(this.val$context).create();
          if (this.val$finalArguments.containsKey("title"))
            localAlertDialog.setTitle((CharSequence)this.val$finalArguments.get("title"));
          if (this.val$finalArguments.containsKey("message"))
            localAlertDialog.setMessage((CharSequence)this.val$finalArguments.get("message"));
          if (this.val$finalArguments.containsKey("cancelButton"))
            localAlertDialog.setButton(-2, (CharSequence)this.val$finalArguments.get("cancelButton"), MMNotification.this);
          if (this.val$finalArguments.containsKey("buttons"))
          {
            String[] arrayOfString = ((String)this.val$finalArguments.get("buttons")).split(",");
            if (arrayOfString.length > 0)
              localAlertDialog.setButton(-3, arrayOfString[0], MMNotification.this);
            if (arrayOfString.length > 1)
              localAlertDialog.setButton(-1, arrayOfString[1], MMNotification.this);
          }
          localAlertDialog.show();
        }
      });
    }
    finally
    {
      MMJSResponse localMMJSResponse;
      try
      {
        super.wait();
        localMMJSResponse = new MMJSResponse();
        localMMJSResponse.result = 1;
        localMMJSResponse.response = new Integer(this.index);
        monitorexit;
        return localMMJSResponse;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        localMMJSResponse = null;
        break label69:
        localObject = finally;
        monitorexit;
        throw localObject;
      }
    }
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    monitorenter;
    if (paramInt == -2);
    try
    {
      this.index = 0;
      if (paramInt == -3)
        this.index = 1;
      if (paramInt == -1)
        this.index = 2;
      paramDialogInterface.cancel();
      super.notify();
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

  public MMJSResponse vibrate(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)this.contextRef.get();
    long l = 0L;
    if (paramHashMap.containsKey("duration"))
      l = ()(1000.0D * Float.parseFloat((String)paramHashMap.get("duration")));
    if ((localContext != null) && (l > 0L))
      if (localContext.getPackageManager().checkPermission("android.permission.VIBRATE", localContext.getPackageName()) == 0)
        ((Vibrator)localContext.getSystemService("vibrator")).vibrate(l);
    for (MMJSResponse localMMJSResponse = MMJSResponse.responseWithSuccess(); ; localMMJSResponse = null)
      while (true)
      {
        return localMMJSResponse;
        localMMJSResponse = MMJSResponse.responseWithError("The required permissions to vibrate are not set.");
      }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMNotification
 * JD-Core Version:    0.5.3
 */