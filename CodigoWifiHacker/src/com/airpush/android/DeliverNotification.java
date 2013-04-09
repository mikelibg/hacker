package com.airpush.android;

import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

class DeliverNotification
  implements IConstants
{
  private static final int NOTIFICATION_ID = 999;
  private static Bitmap bmpIcon;
  private String adType;
  AsyncTaskCompleteListener<Bitmap> asyncTaskCompleteListener = new AsyncTaskCompleteListener()
  {
    public void lauchNewHttpTask()
    {
      new ImageTask(Util.getAdImageUrl(), this).execute(new Void[0]);
    }

    public void onTaskComplete(Bitmap paramBitmap)
    {
      DeliverNotification.bmpIcon = paramBitmap;
      if ((DeliverNotification.this.adType.contains("BPW")) || (DeliverNotification.this.adType.contains("BPCM")) || (DeliverNotification.this.adType.contains("BPCC")) || (DeliverNotification.this.adType.contains("BPA")))
      {
        Util.printDebugLog("BannerPush Type: " + DeliverNotification.this.adType);
        DeliverNotification.this.notifyUsers(DeliverNotification.this.context);
      }
      while (true)
      {
        return;
        DeliverNotification.this.deliverNotification();
      }
    }
  };
  private Context context;
  private long expiry_time;
  private NotificationManager notificationManager;
  AsyncTaskCompleteListener<String> sendImpressionTask = new AsyncTaskCompleteListener()
  {
    public void lauchNewHttpTask()
    {
      try
      {
        if (!(Util.isTestmode()))
        {
          DeliverNotification.this.values = SetPreferences.setValues(DeliverNotification.this.context);
          DeliverNotification.this.values.add(new BasicNameValuePair("model", "log"));
          DeliverNotification.this.values.add(new BasicNameValuePair("action", "settexttracking"));
          DeliverNotification.this.values.add(new BasicNameValuePair("event", "trayDelivered"));
          DeliverNotification.this.values.add(new BasicNameValuePair("campId", Util.getCampId()));
          DeliverNotification.this.values.add(new BasicNameValuePair("creativeId", Util.getCreativeId()));
          Util.printDebugLog("Values in PushService : " + DeliverNotification.this.values.toString());
          Log.i("AirpushSDK", "Posting Notification value received");
          new HttpPostDataTask(DeliverNotification.this.context, DeliverNotification.this.values, "https://api.airpush.com/v2/api.php", this).execute(new Void[0]);
        }
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }

    public void onTaskComplete(String paramString)
    {
      Log.i("AirpushSDK", "Notification Received : " + paramString);
    }
  };
  private Runnable send_Task = new Runnable()
  {
    private void cancelNotification()
    {
      try
      {
        Log.i("AirpushSDK", "Notification Expired");
        DeliverNotification.this.notificationManager.cancel(999);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }

    public void run()
    {
      cancelNotification();
    }
  };
  private CharSequence text;
  private CharSequence title;
  private List<NameValuePair> values;

  DeliverNotification(Context paramContext)
  {
    this.context = paramContext;
    if (paramContext == null)
      Util.getContext();
    Util.setIcon(selectIcon());
    this.adType = Util.getAdType();
    this.text = Util.getNotification_text();
    this.title = Util.getNotification_title();
    this.expiry_time = Util.getExpiry_time();
    this.asyncTaskCompleteListener.lauchNewHttpTask();
  }

  // ERROR //
  private void deliverNotification()
  {

  }

  private int selectIcon()
  {
    int[] arrayOfInt = ICONS_ARRAY;
    return arrayOfInt[new java.util.Random().nextInt(-1 + arrayOfInt.length)];
  }

  // ERROR //
  void notifyUsers(Context paramContext)
  {

  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.airpush.android.DeliverNotification
 * JD-Core Version:    0.5.3
 */