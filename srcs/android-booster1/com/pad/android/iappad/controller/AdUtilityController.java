package com.pad.android.iappad.controller;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import android.widget.SimpleAdapter;
import android.widget.Toast;
import com.pad.android.iappad.AdController;
import com.pad.android.richmedia.view.AdView;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AdUtilityController extends AdController
{
  private AdAssetController c;
  private AdDisplayController d;
  private AdLocationController e;
  private AdNetworkController f;
  private AdSensorController g;

  public AdUtilityController(AdView paramAdView, Context paramContext)
  {
    super(paramAdView, paramContext);
    this.c = new AdAssetController(paramAdView, paramContext);
    this.d = new AdDisplayController(paramAdView, paramContext);
    this.e = new AdLocationController(paramAdView, paramContext);
    this.f = new AdNetworkController(paramAdView, paramContext);
    this.g = new AdSensorController(paramAdView, paramContext);
    paramAdView.addJavascriptInterface(this.c, "ORMMAAssetsControllerBridge");
    paramAdView.addJavascriptInterface(this.d, "ORMMADisplayControllerBridge");
    paramAdView.addJavascriptInterface(this.e, "ORMMALocationControllerBridge");
    paramAdView.addJavascriptInterface(this.f, "ORMMANetworkControllerBridge");
    paramAdView.addJavascriptInterface(this.g, "ORMMASensorControllerBridge");
  }

  private void a(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    ContentResolver localContentResolver = this.a.getContentResolver();
    long l1 = Long.parseLong(paramString1);
    long l2 = 3600000L + l1;
    ContentValues localContentValues1 = new ContentValues();
    localContentValues1.put("calendar_id", Integer.valueOf(paramInt));
    localContentValues1.put("title", paramString2);
    localContentValues1.put("description", paramString3);
    localContentValues1.put("dtstart", Long.valueOf(l1));
    localContentValues1.put("hasAlarm", Integer.valueOf(1));
    localContentValues1.put("dtend", Long.valueOf(l2));
    Uri localUri;
    label120: ContentValues localContentValues2;
    if (Integer.parseInt(Build.VERSION.SDK) == 8)
    {
      localUri = localContentResolver.insert(Uri.parse("content://com.android.calendar/events"), localContentValues1);
      if (localUri != null)
      {
        long l3 = Long.parseLong(localUri.getLastPathSegment());
        localContentValues2 = new ContentValues();
        localContentValues2.put("event_id", Long.valueOf(l3));
        localContentValues2.put("method", Integer.valueOf(1));
        localContentValues2.put("minutes", Integer.valueOf(15));
        if (Integer.parseInt(Build.VERSION.SDK) != 8)
          break label234;
        localContentResolver.insert(Uri.parse("content://com.android.calendar/reminders"), localContentValues2);
      }
    }
    while (true)
    {
      Toast.makeText(this.a, "Event added to calendar", 0).show();
      return;
      localUri = localContentResolver.insert(Uri.parse("content://calendar/events"), localContentValues1);
      break label120:
      label234: localContentResolver.insert(Uri.parse("content://calendar/reminders"), localContentValues2);
    }
  }

  public void activate(String paramString)
  {
    Log.d("AdUtilityController", "activate: " + paramString);
    if (paramString.equalsIgnoreCase("networkChange"))
      this.f.startNetworkListener();
    while (true)
    {
      if (paramString.equals("ready"))
        this.b.injectJavaScript("broadcastEvent(\"ready\");");
      return;
      if ((this.e.allowLocationServices()) && (paramString.equalsIgnoreCase("locationChange")))
        this.e.startLocationListener();
      if (paramString.equalsIgnoreCase("shake"))
        this.g.startShakeListener();
      if (paramString.equalsIgnoreCase("tiltChange"))
        this.g.startTiltListener();
      if (paramString.equalsIgnoreCase("headingChange"))
        this.g.startHeadingListener();
      if (!(paramString.equalsIgnoreCase("orientationChange")))
        continue;
      this.d.startConfigurationListener();
    }
  }

  public String copyTextFromJarIntoAssetDir(String paramString1, String paramString2)
  {
    return this.c.copyTextFromJarIntoAssetDir(paramString1, paramString2);
  }

  public void createEvent(String paramString1, String paramString2, String paramString3)
  {
    Log.d("AdUtilityController", "createEvent: date: " + paramString1 + " title: " + paramString2 + " body: " + paramString3);
    ContentResolver localContentResolver = this.a.getContentResolver();
    String[] arrayOfString = { "_id", "displayName", "_sync_account" };
    if (Integer.parseInt(Build.VERSION.SDK) == 8);
    for (Cursor localCursor = localContentResolver.query(Uri.parse("content://com.android.calendar/calendars"), arrayOfString, null, null, null); (localCursor == null) || ((localCursor != null) && (!(localCursor.moveToFirst()))); localCursor = localContentResolver.query(Uri.parse("content://calendar/calendars"), arrayOfString, null, null, null))
    {
      Toast.makeText(this.a, "No calendar account found", 1).show();
      if (localCursor != null)
        localCursor.close();
      return;
    }
    if (localCursor.getCount() == 1)
    {
      a(localCursor.getInt(0), paramString1, paramString2, paramString3);
      localCursor.close();
      return;
    }
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; ; ++i)
    {
      if (i >= localCursor.getCount())
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
        localBuilder.setTitle("Choose Calendar to save event to");
        localBuilder.setSingleChoiceItems(new SimpleAdapter(this.a, localArrayList, 17367053, new String[] { "NAME", "EMAILID" }, new int[] { 16908308, 16908309 }), -1, new b(this, localArrayList, paramString1, paramString2, paramString3));
        localBuilder.create().show();
      }
      HashMap localHashMap = new HashMap();
      localHashMap.put("ID", localCursor.getString(0));
      localHashMap.put("NAME", localCursor.getString(1));
      localHashMap.put("EMAILID", localCursor.getString(2));
      localArrayList.add(localHashMap);
      localCursor.moveToNext();
    }
  }

  public void deactivate(String paramString)
  {
    Log.d("AdUtilityController", "deactivate: " + paramString);
    if (paramString.equalsIgnoreCase("networkChange"))
      this.f.stopNetworkListener();
    do
    {
      return;
      if (paramString.equalsIgnoreCase("locationChange"))
      {
        this.e.stopAllListeners();
        return;
      }
      if (paramString.equalsIgnoreCase("shake"))
      {
        this.g.stopShakeListener();
        return;
      }
      if (paramString.equalsIgnoreCase("tiltChange"))
      {
        this.g.stopTiltListener();
        return;
      }
      if (!(paramString.equalsIgnoreCase("headingChange")))
        continue;
      this.g.stopHeadingListener();
      return;
    }
    while (!(paramString.equalsIgnoreCase("orientationChange")));
    this.d.stopConfigurationListener();
  }

  public void deleteOldAds()
  {
    this.c.deleteOldAds();
  }

  public void init(float paramFloat)
  {
    int i = 1;
    StringBuilder localStringBuilder = new StringBuilder("window.ormmaview.fireChangeEvent({ state: 'default', network: '").append(this.f.getNetwork()).append("', size: ").append(this.d.getSize()).append(", maxSize: ").append(this.d.getMaxSize()).append(", screenSize: ").append(this.d.getScreenSize()).append(", defaultPosition: { x:").append((int)(this.b.getLeft() / paramFloat)).append(", y: ").append((int)(this.b.getTop() / paramFloat)).append(", width: ").append((int)(this.b.getWidth() / paramFloat)).append(", height: ").append((int)(this.b.getHeight() / paramFloat)).append(" }, orientation:").append(this.d.getOrientation()).append(",");
    String str1 = "supports: [ 'level-1', 'level-2', 'screen', 'orientation', 'network'";
    int j;
    label217: int k;
    label261: int l;
    if ((this.e.allowLocationServices()) && (((this.a.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) || (this.a.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0))))
    {
      j = i;
      if (j != 0)
        str1 = str1 + ", 'location'";
      if (this.a.checkCallingOrSelfPermission("android.permission.SEND_SMS") != 0)
        break label551;
      k = i;
      if (k != 0)
        str1 = str1 + ", 'sms'";
      if (this.a.checkCallingOrSelfPermission("android.permission.CALL_PHONE") != 0)
        break label557;
      l = i;
      if (l != 0)
        label305: str1 = str1 + ", 'phone'";
      if ((this.a.checkCallingOrSelfPermission("android.permission.WRITE_CALENDAR") != 0) || (this.a.checkCallingOrSelfPermission("android.permission.READ_CALENDAR") != 0))
        break label563;
    }
    while (true)
    {
      if (i != 0)
        str1 = str1 + ", 'calendar'";
      String str2 = new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(str1)).append(", 'video'").toString())).append(", 'audio'").toString())).append(", 'map'").toString() + ", 'email' ]";
      Log.d("AdUtilityController", "getSupports: " + str2);
      String str3 = str2 + " });";
      Log.d("AdUtilityController", "init: injection: " + str3);
      this.b.injectJavaScript(str3);
      ready();
      return;
      j = 0;
      break label217:
      label551: k = 0;
      break label261:
      label557: l = 0;
      break label305:
      label563: i = 0;
    }
  }

  public void makeCall(String paramString)
  {
    Log.d("AdUtilityController", "makeCall: number: " + paramString);
    if (TextUtils.isEmpty(paramString));
    StringBuilder localStringBuilder;
    for (String str = null; str == null; str = localStringBuilder.toString())
    {
      this.b.raiseError("Bad Phone Number", "makeCall");
      return;
      localStringBuilder = new StringBuilder("tel:");
      localStringBuilder.append(paramString);
    }
    Intent localIntent = new Intent("android.intent.action.CALL", Uri.parse(str.toString()));
    localIntent.addFlags(268435456);
    this.a.startActivity(localIntent);
  }

  public void ready()
  {
    this.b.injectJavaScript("broadcastEvent(EVENTS.READY, 'ready');");
    Log.d("AdUtilityController", "ready()");
  }

  public void sendMail(String paramString1, String paramString2, String paramString3)
  {
    Log.d("AdUtilityController", "sendMail: recipient: " + paramString1 + " subject: " + paramString2 + " body: " + paramString3);
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("plain/text");
    localIntent.putExtra("android.intent.extra.EMAIL", new String[] { paramString1 });
    localIntent.putExtra("android.intent.extra.SUBJECT", paramString2);
    localIntent.putExtra("android.intent.extra.TEXT", paramString3);
    localIntent.addFlags(268435456);
    this.a.startActivity(localIntent);
  }

  public void sendSMS(String paramString1, String paramString2)
  {
    Log.d("AdUtilityController", "sendSMS: recipient: " + paramString1 + " body: " + paramString2);
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.putExtra("address", paramString1);
    localIntent.putExtra("sms_body", paramString2);
    localIntent.setType("vnd.android-dir/mms-sms");
    localIntent.addFlags(268435456);
    this.a.startActivity(localIntent);
  }

  public void setMaxSize(int paramInt1, int paramInt2)
  {
    this.d.setMaxSize(paramInt1, paramInt2);
  }

  public void showAlert(String paramString)
  {
    Log.e("AdUtilityController", paramString);
  }

  public void stopAllListeners()
  {
    try
    {
      this.c.stopAllListeners();
      this.d.stopAllListeners();
      this.e.stopAllListeners();
      this.f.stopAllListeners();
      this.g.stopAllListeners();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public String writeHTMLToDiskWrap(String paramString1, String paramString2, boolean paramBoolean, String paramString3, String paramString4, String paramString5)
  {
    return this.c.writeHTMLToDiskWrap(paramString1, paramString2, paramBoolean, paramString3, paramString4, paramString5);
  }

  public String writeToDiskWrap(InputStream paramInputStream, String paramString1, boolean paramBoolean, String paramString2, String paramString3, String paramString4)
  {
    return this.c.writeToDiskWrap(paramInputStream, paramString1, paramBoolean, paramString2, paramString3, paramString4);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.pad.android.iappad.controller.AdUtilityController
 * JD-Core Version:    0.5.3
 */