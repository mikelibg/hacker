package com.eMVeQv.NFmMPJ121641;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Handler;
import android.util.Log;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

public class DialogAd
  implements DialogInterface.OnClickListener
{
  private static AlertDialog dialog;
  private Activity activity;
  private String adtype;
  AsyncTaskCompleteListener<String> asyncTaskCompleteListener = new AsyncTaskCompleteListener()
  {
    public void lauchNewHttpTask()
    {
      List localList = SetPreferences.setValues(DialogAd.this.activity);
      localList.add(new BasicNameValuePair("creativeid", DialogAd.this.creativeId));
      localList.add(new BasicNameValuePair("campaignid", DialogAd.this.campid));
      localList.add(new BasicNameValuePair("event", DialogAd.this.event));
      new HttpPostDataTask(DialogAd.this.activity, localList, "https://api.airpush.com/dialogad/adclick.php", this).execute(new Void[0]);
    }

    public void onTaskComplete(String paramString)
    {
      Log.i("AirpushSDK", "Dialog Click: " + paramString);
    }
  };
  private String buttontxt;
  private String campid;
  private String creativeId;
  private String event = "0";
  private String number;
  Runnable runnable = new Runnable()
  {
    public void run()
    {
      if (DialogAd.this.event.equalsIgnoreCase("1"))
      {
        DialogAd.this.asyncTaskCompleteListener.lauchNewHttpTask();
        DialogAd.this.handleClicks();
        return;
      }
      DialogAd.this.asyncTaskCompleteListener.lauchNewHttpTask();
      DialogAd.this.activity.finish();
    }
  };
  private String sms;
  private String title;
  private String url;

  DialogAd(Intent paramIntent, Activity paramActivity)
  {
    try
    {
      this.activity = paramActivity;
      this.title = paramIntent.getStringExtra("title");
      this.buttontxt = paramIntent.getStringExtra("buttontxt");
      this.url = paramIntent.getStringExtra("url");
      this.creativeId = paramIntent.getStringExtra("creativeid");
      this.campid = paramIntent.getStringExtra("campaignid");
      this.adtype = paramIntent.getStringExtra("adtype");
      this.sms = paramIntent.getStringExtra("sms");
      this.number = paramIntent.getStringExtra("number");
      dialog = showDialog();
      return;
    }
    catch (Exception localException)
    {
      Util.printDebugLog("Error occured in DialogAd: " + localException.getMessage());
    }
  }

  public static AlertDialog getDialog()
  {
    return dialog;
  }

  // ERROR //
  void handleClicks()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 76	com/eMVeQv/NFmMPJ121641/DialogAd:adtype	Ljava/lang/String;
    //   4: ldc 122
    //   6: invokevirtual 128	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   9: ifeq +86 -> 95
    //   12: ldc 130
    //   14: ldc 132
    //   16: invokestatic 138	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   19: pop
    //   20: new 53	android/content/Intent
    //   23: dup
    //   24: ldc 140
    //   26: aload_0
    //   27: getfield 65	com/eMVeQv/NFmMPJ121641/DialogAd:url	Ljava/lang/String;
    //   30: invokestatic 146	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   33: invokespecial 149	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   36: astore 18
    //   38: aload 18
    //   40: ldc 150
    //   42: invokevirtual 154	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   45: pop
    //   46: aload_0
    //   47: getfield 50	com/eMVeQv/NFmMPJ121641/DialogAd:activity	Landroid/app/Activity;
    //   50: aload 18
    //   52: invokevirtual 160	android/app/Activity:startActivity	(Landroid/content/Intent;)V
    //   55: getstatic 88	com/eMVeQv/NFmMPJ121641/DialogAd:dialog	Landroid/app/AlertDialog;
    //   58: invokevirtual 165	android/app/AlertDialog:dismiss	()V
    //   61: aload_0
    //   62: getfield 50	com/eMVeQv/NFmMPJ121641/DialogAd:activity	Landroid/app/Activity;
    //   65: invokevirtual 168	android/app/Activity:finish	()V
    //   68: return
    //   69: astore 19
    //   71: aload 19
    //   73: invokevirtual 171	java/lang/Exception:printStackTrace	()V
    //   76: goto -21 -> 55
    //   79: astore_1
    //   80: getstatic 88	com/eMVeQv/NFmMPJ121641/DialogAd:dialog	Landroid/app/AlertDialog;
    //   83: invokevirtual 165	android/app/AlertDialog:dismiss	()V
    //   86: aload_0
    //   87: getfield 50	com/eMVeQv/NFmMPJ121641/DialogAd:activity	Landroid/app/Activity;
    //   90: invokevirtual 168	android/app/Activity:finish	()V
    //   93: aload_1
    //   94: athrow
    //   95: aload_0
    //   96: getfield 76	com/eMVeQv/NFmMPJ121641/DialogAd:adtype	Ljava/lang/String;
    //   99: ldc 173
    //   101: invokevirtual 128	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   104: ifeq +77 -> 181
    //   107: ldc 130
    //   109: ldc 175
    //   111: invokestatic 138	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   114: pop
    //   115: new 53	android/content/Intent
    //   118: dup
    //   119: ldc 177
    //   121: new 90	java/lang/StringBuilder
    //   124: dup
    //   125: invokespecial 91	java/lang/StringBuilder:<init>	()V
    //   128: ldc 179
    //   130: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: aload_0
    //   134: getfield 82	com/eMVeQv/NFmMPJ121641/DialogAd:number	Ljava/lang/String;
    //   137: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: invokestatic 146	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   146: invokespecial 149	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   149: astore 13
    //   151: aload 13
    //   153: ldc 150
    //   155: invokevirtual 154	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   158: pop
    //   159: aload_0
    //   160: getfield 50	com/eMVeQv/NFmMPJ121641/DialogAd:activity	Landroid/app/Activity;
    //   163: aload 13
    //   165: invokevirtual 160	android/app/Activity:startActivity	(Landroid/content/Intent;)V
    //   168: goto -113 -> 55
    //   171: astore 15
    //   173: aload 15
    //   175: invokevirtual 180	android/content/ActivityNotFoundException:printStackTrace	()V
    //   178: goto -123 -> 55
    //   181: aload_0
    //   182: getfield 76	com/eMVeQv/NFmMPJ121641/DialogAd:adtype	Ljava/lang/String;
    //   185: ldc 182
    //   187: invokevirtual 128	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   190: istore_3
    //   191: iload_3
    //   192: ifeq +84 -> 276
    //   195: ldc 130
    //   197: ldc 184
    //   199: invokestatic 138	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   202: pop
    //   203: new 53	android/content/Intent
    //   206: dup
    //   207: ldc 140
    //   209: invokespecial 186	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   212: astore 7
    //   214: aload 7
    //   216: ldc 150
    //   218: invokevirtual 154	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   221: pop
    //   222: aload 7
    //   224: ldc 188
    //   226: invokevirtual 192	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   229: pop
    //   230: aload 7
    //   232: ldc 194
    //   234: aload_0
    //   235: getfield 82	com/eMVeQv/NFmMPJ121641/DialogAd:number	Ljava/lang/String;
    //   238: invokevirtual 198	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   241: pop
    //   242: aload 7
    //   244: ldc 200
    //   246: aload_0
    //   247: getfield 79	com/eMVeQv/NFmMPJ121641/DialogAd:sms	Ljava/lang/String;
    //   250: invokevirtual 198	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   253: pop
    //   254: aload_0
    //   255: getfield 50	com/eMVeQv/NFmMPJ121641/DialogAd:activity	Landroid/app/Activity;
    //   258: aload 7
    //   260: invokevirtual 160	android/app/Activity:startActivity	(Landroid/content/Intent;)V
    //   263: goto -208 -> 55
    //   266: astore 5
    //   268: aload 5
    //   270: invokevirtual 171	java/lang/Exception:printStackTrace	()V
    //   273: goto -218 -> 55
    //   276: new 90	java/lang/StringBuilder
    //   279: dup
    //   280: invokespecial 91	java/lang/StringBuilder:<init>	()V
    //   283: ldc 202
    //   285: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: aload_0
    //   289: getfield 76	com/eMVeQv/NFmMPJ121641/DialogAd:adtype	Ljava/lang/String;
    //   292: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   295: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   298: invokestatic 205	com/eMVeQv/NFmMPJ121641/Util:printLog	(Ljava/lang/String;)V
    //   301: goto -246 -> 55
    //   304: astore_2
    //   305: goto -212 -> 93
    //   308: astore 4
    //   310: return
    //   311: astore 14
    //   313: goto -258 -> 55
    //
    // Exception table:
    //   from	to	target	type
    //   20	55	69	java/lang/Exception
    //   0	20	79	finally
    //   20	55	79	finally
    //   71	76	79	finally
    //   95	115	79	finally
    //   115	168	79	finally
    //   173	178	79	finally
    //   181	191	79	finally
    //   195	263	79	finally
    //   268	273	79	finally
    //   276	301	79	finally
    //   115	168	171	android/content/ActivityNotFoundException
    //   195	263	266	java/lang/Exception
    //   80	93	304	java/lang/Exception
    //   55	68	308	java/lang/Exception
    //   115	168	311	java/lang/Exception
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case -2:
    case -1:
    }
    try
    {
      this.event = "1";
      paramDialogInterface.dismiss();
      new Handler().post(this.runnable);
      return;
      this.event = "0";
      paramDialogInterface.dismiss();
      new Handler().post(this.runnable);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  protected AlertDialog showDialog()
  {
    while (true)
    {
      AlertDialog.Builder localBuilder;
      try
      {
        localBuilder = new AlertDialog.Builder(this.activity);
        if ((this.title != null) && (!(this.title.equalsIgnoreCase(""))))
        {
          localBuilder.setMessage(this.title);
          localBuilder.setPositiveButton("No Thanks.", this);
          if ((this.buttontxt == null) || (this.buttontxt.equalsIgnoreCase("")))
            break label134;
          localBuilder.setNegativeButton(this.buttontxt, this);
          localBuilder.setCancelable(false);
          localBuilder.create();
          return localBuilder.show();
        }
        localBuilder.setMessage("Click for new offers");
      }
      catch (Exception localException)
      {
        Log.e("AirpushSDK", "Error : " + localException.toString());
        return null;
      }
      label134: localBuilder.setNegativeButton("Yes!", this);
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.DialogAd
 * JD-Core Version:    0.5.3
 */