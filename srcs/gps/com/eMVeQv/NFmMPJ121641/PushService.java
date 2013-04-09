package com.eMVeQv.NFmMPJ121641;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

public class PushService extends Service
  implements IConstants
{
  private Context context;

  private void getPushMessage()
  {
    monitorenter;
    while (true)
    {
      try
      {
        if (this.context == null)
          this.context = getApplicationContext();
        label48: Log.i("AirpushSDK", "Receiving.......");
      }
      finally
      {
        try
        {
          new AsyncTaskCompleteListener()
          {
            public void lauchNewHttpTask()
            {
              List localList = SetPreferences.setValues(PushService.this.context);
              localList.add(new BasicNameValuePair("model", "message"));
              localList.add(new BasicNameValuePair("action", "getmessage"));
              Util.printDebugLog("Get Push Values: " + localList);
              String str = "https://api.airpush.com/v2/api.php";
              if (Util.isTestmode())
                str = "https://api.airpush.com/testmsg2.php";
              new HttpPostDataTask(PushService.this, localList, str, this).execute(new Void[0]);
            }

            public void onTaskComplete(String paramString)
            {
              Util.printLog("Push Message: " + paramString);
              if ((paramString != null) && (!(paramString.equals(""))))
              {
                new FormatAds(PushService.this.getApplicationContext()).parseJson(paramString);
                return;
              }
              Util.printDebugLog("Push message response is null.");
              PushNotification.reStartSDK(PushService.this.context, false);
            }
          }
          .lauchNewHttpTask();
          monitorexit;
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          Log.i("Activitymanager", "Message Fetching Failed.....");
          Log.i("Activitymanager", localException.toString());
          PushNotification.reStartSDK(this.context, false);
          break label48:
          localObject = finally;
          monitorexit;
          throw localObject;
        }
      }
      Log.i("AirpushSDK", "Airpush is disabled, please enable to receive ads.");
    }
  }

  private void postAdValues(Intent paramIntent)
  {
    monitorenter;
    try
    {
      if (!(Util.isTestmode()))
        new AsyncTaskCompleteListener()
        {
          public void lauchNewHttpTask()
          {
            List localList = SetPreferences.setValues(PushService.this.context);
            if ((localList == null) || (localList.isEmpty()))
            {
              new UserDetails(PushService.this.getApplicationContext()).setImeiInMd5();
              new SetPreferences(PushService.this.getApplicationContext()).setPreferencesData();
              localList = SetPreferences.setValues(PushService.this.getApplicationContext());
            }
            localList.add(new BasicNameValuePair("model", "log"));
            localList.add(new BasicNameValuePair("action", "settexttracking"));
            localList.add(new BasicNameValuePair("event", "TrayClicked"));
            localList.add(new BasicNameValuePair("campId", Util.getCampId()));
            localList.add(new BasicNameValuePair("creativeId", Util.getCreativeId()));
            Util.printDebugLog("Posting values: " + localList.toString());
            new HttpPostDataTask(PushService.this, localList, "https://api.airpush.com/v2/api.php", this).execute(new Void[0]);
          }

          public void onTaskComplete(String paramString)
          {
            Log.i("AirpushSDK", "Click : " + paramString);
          }
        }
        .lauchNewHttpTask();
      return;
    }
    catch (Exception localException)
    {
    }
    finally
    {
      monitorexit;
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onDestroy()
  {
    super.onDestroy();
    Log.i("AirpushSDK", "Service Finished");
  }

  public void onLowMemory()
  {
    super.onLowMemory();
    Log.e("AirpushSDK", "Low On Memory");
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    this.context = getApplicationContext();
    Integer localInteger = Integer.valueOf(paramInt);
    while (true)
    {
      try
      {
        String str = paramIntent.getAction();
        if (str.equals("SetMessageReceiver"))
        {
          Log.i("AirpushSDK", "Receiving Message.....");
          if (!(SetPreferences.getDataSharedPrefrences(this.context)))
            Util.printDebugLog("Preference is null");
          getPushMessage();
        }
        do
          return;
        while (!(str.equals("PostAdValues")));
        if (SetPreferences.getNotificationData(getApplicationContext()))
          break label175;
        Util.printDebugLog("Unable to retrive notification preference data");
        if ((!(Util.getAdType().equals("CC"))) && (!(Util.getAdType().equals("BPCC"))))
          break label130;
        postAdValues(paramIntent);
        label130: label175: new HandleClicks(this).callNumber();
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        Util.printDebugLog("Error in push Service: " + localException.getMessage());
        return;
        Util.setApiKey(paramIntent.getStringExtra("APIKEY"));
        Util.setAppID(paramIntent.getStringExtra("appId"));
        Util.setAdType(paramIntent.getStringExtra("adtype"));
        Util.setNotificationUrl(paramIntent.getStringExtra("url"));
        Util.setHeader(paramIntent.getStringExtra("header"));
        Util.setSms(paramIntent.getStringExtra("sms"));
        Util.setPhoneNumber(paramIntent.getStringExtra("number"));
        Util.setCreativeId(paramIntent.getStringExtra("creativeId"));
        Util.setCampId(paramIntent.getStringExtra("campId"));
        Util.setTestmode(paramIntent.getBooleanExtra("testMode", false));
      }
      finally
      {
        if (localInteger != null)
          stopSelf(paramInt);
      }
      postAdValues(paramIntent);
      new HandleClicks(this).sendSms();
      continue;
      if ((Util.getAdType().equals("W")) || (Util.getAdType().equals("A")))
      {
        postAdValues(paramIntent);
        new HandleClicks(this).displayUrl();
      }
      if ((!(Util.getAdType().equals("BPW"))) && (!(Util.getAdType().equals("BPA"))))
        continue;
      postAdValues(paramIntent);
      new HandleClicks(this).displayUrl();
    }
  }

  public boolean onUnbind(Intent paramIntent)
  {
    return super.onUnbind(paramIntent);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.PushService
 * JD-Core Version:    0.5.3
 */