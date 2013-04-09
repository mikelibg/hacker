package com.noshufou.android.su.service;

import android.app.IntentService;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.util.Log;
import android.widget.Toast;
import com.noshufou.android.su.HomeActivity;
import com.noshufou.android.su.provider.PermissionsProvider.Apps;
import com.noshufou.android.su.provider.PermissionsProvider.Logs;
import com.noshufou.android.su.util.Util;

public class ResultService extends IntentService
{
  public static final int ACTION_RECYCLE = 2;
  public static final int ACTION_RESULT = 1;
  private static final int COLUMN_ALLOW = 1;
  private static final int COLUMN_ID = 0;
  private static final int COLUMN_LOGGING = 3;
  private static final int COLUMN_NOTIFICATIONS = 2;
  public static final String EXTRA_ACTION = "action";
  public static final String[] PROJECTION = { "_id", "allow", "notifications", "logging" };
  private static final String TAG = "Su.ResultService";
  final String LAST_NOTIFICATION_TIME = "last_notification_time";
  final String LAST_NOTIFICATION_UID = "last_notification_uid";
  private Handler mHandler;
  private boolean mLog = true;
  private boolean mNotify = true;
  private String mNotifyType = "toast";
  private SharedPreferences mPrefs = null;

  public ResultService()
  {
    super("Su.ResultService");
  }

  private void addLog(long paramLong1, int paramInt1, int paramInt2, String paramString1, int paramInt3, long paramLong2, String paramString2)
  {
    if (((paramString2 == null) && (!(this.mLog))) || ((paramString2 != null) && (paramString2.equals("0"))))
      return;
    ContentValues localContentValues = new ContentValues();
    if (paramLong1 == -1L)
    {
      localContentValues.put("uid", Integer.valueOf(paramInt1));
      localContentValues.put("package", Util.getAppPackage(this, paramInt1));
      localContentValues.put("name", Util.getAppName(this, paramInt1, false));
      localContentValues.put("exec_uid", Integer.valueOf(paramInt2));
      localContentValues.put("exec_cmd", paramString1);
      localContentValues.put("allow", Integer.valueOf(-1));
      paramLong1 = Long.parseLong(getContentResolver().insert(PermissionsProvider.Apps.CONTENT_URI, localContentValues).getLastPathSegment());
    }
    localContentValues.clear();
    localContentValues.put("date", Long.valueOf(paramLong2));
    localContentValues.put("type", Integer.valueOf(paramInt3));
    getContentResolver().insert(Uri.withAppendedPath(PermissionsProvider.Logs.CONTENT_URI, String.valueOf(paramLong1)), localContentValues);
  }

  private void ensurePrefs()
  {
    Log.d("Su.ResultService", "ensurePrefs()");
    if (this.mPrefs != null)
      return;
    Log.d("Su.ResultService", "loading prefs");
    this.mPrefs = PreferenceManager.getDefaultSharedPreferences(this);
    this.mNotify = this.mPrefs.getBoolean("pref_notifications", true);
    this.mNotifyType = this.mPrefs.getString("pref_notification_type", "toast");
    this.mLog = this.mPrefs.getBoolean("pref_logging", true);
  }

  private void recycle()
  {
    Log.d("Su.ResultService", "recycle()");
    ensurePrefs();
    if (!(this.mPrefs.getBoolean("pref_delete_old_logs", true)));
    int i;
    int j;
    do
    {
      return;
      i = this.mPrefs.getInt("pref_log_entry_limit", 200);
      Cursor localCursor1 = getContentResolver().query(PermissionsProvider.Logs.CONTENT_URI, new String[] { "COUNT() as rows" }, null, null, null);
      localCursor1.moveToFirst();
      j = localCursor1.getInt(0);
      localCursor1.close();
    }
    while (j <= i);
    Cursor localCursor2 = getContentResolver().query(PermissionsProvider.Logs.CONTENT_URI, new String[] { "_id" }, null, null, "date ASC");
    while (true)
    {
      if ((j > i) && (localCursor2.moveToNext()));
      long l = localCursor2.getLong(0);
      ContentResolver localContentResolver = getContentResolver();
      Uri localUri = PermissionsProvider.Logs.CONTENT_URI;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(l);
      j -= localContentResolver.delete(localUri, "_id=?", arrayOfString);
    }
  }

  private void sendNotification(long paramLong1, int paramInt1, int paramInt2, int paramInt3, long paramLong2, String paramString)
  {
    if (((paramString == null) && (!(this.mNotify))) || ((paramString != null) && (paramString.equals("0"))));
    String str;
    do
    {
      return;
      if (paramInt3 == 1);
      for (int i = 2131165344; ; i = 2131165345)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Util.getAppName(this, paramInt2, false);
        str = getString(i, arrayOfObject);
        if (!(this.mNotifyType.equals("toast")))
          break;
        ensurePrefs();
        int j = this.mPrefs.getInt("last_notification_uid", 0);
        long l = this.mPrefs.getLong("last_notification_time", 0L);
        int k = Integer.parseInt(this.mPrefs.getString("pref_toast_location", "0"));
        if ((j != paramInt2) || (5000L + l < paramLong2));
        Handler localHandler = this.mHandler;
        1 local1 = new Runnable(str, k)
        {
          public void run()
          {
            Toast localToast = Toast.makeText(ResultService.this.getApplicationContext(), this.val$notificationMessage, 0);
            if (this.val$gravity > 0)
              localToast.setGravity(this.val$gravity, 0, 0);
            localToast.show();
          }
        };
        localHandler.post(local1);
        SharedPreferences.Editor localEditor = this.mPrefs.edit();
        localEditor.putInt("last_notification_uid", paramInt2);
        localEditor.putLong("last_notification_time", paramLong2);
        localEditor.commit();
        return;
      }
    }
    while (!(this.mNotifyType.equals("status")));
    NotificationManager localNotificationManager = (NotificationManager)getSystemService("notification");
    Intent localIntent = new Intent(this, HomeActivity.class);
    PendingIntent localPendingIntent = PendingIntent.getActivity(this, 0, localIntent, 0);
    Notification localNotification = new Notification(2130837553, str, paramLong2);
    localNotification.setLatestEventInfo(this, getString(2131165185), str, localPendingIntent);
    localNotification.flags = (0x18 | localNotification.flags);
    localNotificationManager.notify(paramInt2, localNotification);
  }

  public void onCreate()
  {
    super.onCreate();
    this.mHandler = new Handler();
  }

  public void onDestroy()
  {
    Log.d("Su.ResultService", "onDestroy()");
    super.onDestroy();
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    Log.d("Su.ResultService", "onHandleIntent()");
    int i;
    int j;
    long l1;
    Cursor localCursor;
    long l2;
    String str1;
    String str2;
    int k;
    switch (paramIntent.getIntExtra("action", 0))
    {
    default:
      throw new IllegalArgumentException();
    case 1:
      ensurePrefs();
      i = paramIntent.getIntExtra("caller_uid", 0);
      j = paramIntent.getIntExtra("allow", 0);
      l1 = System.currentTimeMillis();
      localCursor = getContentResolver().query(Uri.withAppendedPath(PermissionsProvider.Apps.CONTENT_URI, "uid/" + i), PROJECTION, null, null, null);
      if (!(localCursor.moveToFirst()))
        break label259;
      Log.d("Su.ResultService", "Found in database");
      l2 = localCursor.getLong(0);
      str1 = localCursor.getString(2);
      str2 = localCursor.getString(3);
      k = localCursor.getInt(1);
      Log.d("Su.ResultService", "appId = " + l2);
    case 2:
    }
    while (true)
    {
      localCursor.close();
      sendNotification(l2, k, i, j, l1, str1);
      int l = paramIntent.getIntExtra("desired_uid", 0);
      String str3 = paramIntent.getStringExtra("desired_cmd");
      addLog(l2, i, l, str3, j, l1, str2);
      recycle();
      return;
      label259: k = -1;
      l2 = -1L;
      str1 = null;
      str2 = null;
    }
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    Log.d("Su.ResultService", "onStart()");
    super.onStart(paramIntent, paramInt);
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    Log.d("Su.ResultService", "onStartCommand()");
    return super.onStartCommand(paramIntent, paramInt1, paramInt2);
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.service.ResultService
 * JD-Core Version:    0.5.3
 */