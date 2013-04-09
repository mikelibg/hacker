package com.airpush.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
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
      }
      while (true)
      {
        return;
        DialogAd.this.asyncTaskCompleteListener.lauchNewHttpTask();
        DialogAd.this.activity.finish();
      }
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

  void handleClicks()
  {
    try
    {
      Log.i("AirpushSDK", "Pushing dialog DAU Ads.....");
    }
    finally
    {
      try
      {
        Intent localIntent3 = new Intent("android.intent.action.VIEW", Uri.parse(this.url));
        localIntent3.addFlags(268435456);
        label273: label55: label68: label93: this.activity.startActivity(localIntent3);
      }
      catch ( localObject)
      {
        try
        {
          while (true)
          {
            dialog.dismiss();
            this.activity.finish();
            return;
            localException5 = localException5;
            localException5.printStackTrace();
          }
          localObject = finally;
        }
        catch (Exception localException1)
        {
          try
          {
            dialog.dismiss();
            this.activity.finish();
            throw localObject;
            if (this.adtype.equalsIgnoreCase("DCC"))
              Log.i("AirpushSDK", "Pushing dialog CC Ads.....");
          }
          catch (Exception localException1)
          {
            try
            {
              Intent localIntent2 = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + this.number));
              localIntent2.addFlags(268435456);
              this.activity.startActivity(localIntent2);
            }
            catch (ActivityNotFoundException localActivityNotFoundException)
            {
              while (true)
              {
                localActivityNotFoundException.printStackTrace();
                break label55:
                boolean bool = this.adtype.equalsIgnoreCase("DCM");
                if (!(bool))
                  break label273;
                try
                {
                  Log.i("AirpushSDK", "Pushing dialog CM Ads.....");
                  Intent localIntent1 = new Intent("android.intent.action.VIEW");
                  localIntent1.addFlags(268435456);
                  localIntent1.setType("vnd.android-dir/mms-sms");
                  localIntent1.putExtra("address", this.number);
                  localIntent1.putExtra("sms_body", this.sms);
                  this.activity.startActivity(localIntent1);
                }
                catch (Exception localException3)
                {
                  localException3.printStackTrace();
                }
              }
              break label55:
              Util.printLog("Invalid ad type for dialog ad." + this.adtype);
              break label55:
              localException2 = localException2;
              break label68:
              localException1 = localException1;
              break label93:
            }
            catch (Exception localException4)
            {
            }
          }
        }
      }
    }
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default:
    case -2:
    case -1:
    }
    while (true)
    {
      label24: return;
      try
      {
        this.event = "1";
        paramDialogInterface.dismiss();
        new Handler().post(this.runnable);
        break label24:
        this.event = "0";
        paramDialogInterface.dismiss();
        new Handler().post(this.runnable);
      }
      catch (Exception localException)
      {
      }
    }
  }

  protected AlertDialog showDialog()
  {
    AlertDialog.Builder localBuilder;
    label77: AlertDialog localAlertDialog;
    try
    {
      localBuilder = new AlertDialog.Builder(this.activity);
      if ((this.title != null) && (!(this.title.equalsIgnoreCase(""))))
      {
        localBuilder.setMessage(this.title);
        localBuilder.setPositiveButton("No Thanks.", this);
        if ((this.buttontxt == null) || (this.buttontxt.equalsIgnoreCase("")))
          break label139;
        localBuilder.setNegativeButton(this.buttontxt, this);
        localBuilder.setCancelable(false);
        localBuilder.create();
        localAlertDialog = localBuilder.show();
        break label151:
      }
      label139: localBuilder.setMessage("Click for new offers");
    }
    catch (Exception localException)
    {
      Log.e("AirpushSDK", "Error : " + localException.toString());
      localAlertDialog = null;
      break label151:
      localBuilder.setNegativeButton("Yes!", this);
      break label77:
    }
    label151: return localAlertDialog;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.airpush.android.DialogAd
 * JD-Core Version:    0.5.3
 */