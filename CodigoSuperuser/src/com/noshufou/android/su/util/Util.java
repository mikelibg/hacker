package com.noshufou.android.su.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.preference.PreferenceManager;
import android.util.Log;
import com.noshufou.android.su.HomeActivity;
import com.noshufou.android.su.preferences.PreferencesActivity;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Util
{
  public static final int MALICIOUS_NOT = 0;
  public static final int MALICIOUS_PROVIDER_WRITE = 3;
  public static final int MALICIOUS_RESPOND = 2;
  public static final int MALICIOUS_UID = 1;
  private static final String TAG = "Su.Util";

  public static boolean checkPin(Context paramContext, String paramString)
  {
    String str = PreferenceManager.getDefaultSharedPreferences(paramContext).getString("pin", "");
    return getHash(paramString).equals(str);
  }

  public static boolean elitePresent(Context paramContext, boolean paramBoolean, int paramInt)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    if (localPackageManager.checkSignatures("com.noshufou.android.su", "com.noshufou.android.su.elite") != 0)
      return false;
    if (paramBoolean)
      try
      {
        int i = localPackageManager.getPackageInfo("com.noshufou.android.su.elite", 0).versionCode;
        return (i >= paramInt);
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        return false;
      }
    return true;
  }

  public static List<String> findMaliciousPackages(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramContext.getPackageManager().getInstalledPackages(4096).iterator();
    while (true)
    {
      if (!(localIterator.hasNext()))
        return localArrayList;
      PackageInfo localPackageInfo = (PackageInfo)localIterator.next();
      int i = isPackageMalicious(paramContext, localPackageInfo);
      if (i == 0)
        continue;
      localArrayList.add(localPackageInfo.packageName + ":" + i);
    }
  }

  public static String formatDate(Context paramContext, long paramLong)
  {
    String str = PreferenceManager.getDefaultSharedPreferences(paramContext).getString("pref_date_format", "default");
    if (str.equals("default"))
      return android.text.format.DateFormat.getDateFormat(paramContext).format(Long.valueOf(paramLong));
    return ((String)android.text.format.DateFormat.format(str, paramLong));
  }

  public static String formatDateTime(Context paramContext, long paramLong)
  {
    return formatDate(paramContext, paramLong) + " " + formatTime(paramContext, paramLong);
  }

  public static String formatTime(Context paramContext, long paramLong)
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramContext);
    boolean bool1 = localSharedPreferences.getBoolean("pref_24_hour_format", true);
    boolean bool2 = localSharedPreferences.getBoolean("pref_show_seconds", false);
    String str1 = "";
    String str2;
    if (bool1)
    {
      str2 = "kk";
      label40: if (!(bool2))
        break label97;
    }
    for (String str3 = ":ss"; ; str3 = "")
    {
      return ((String)android.text.format.DateFormat.format(String.format("%s:%s%s%s", new Object[] { str2, "mm", str3, str1 }), paramLong));
      str2 = "hh";
      str1 = "aa";
      label97: break label40:
    }
  }

  public static Drawable getAppIcon(Context paramContext, int paramInt)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    Drawable localDrawable1 = paramContext.getResources().getDrawable(2130837554);
    String[] arrayOfString = localPackageManager.getPackagesForUid(paramInt);
    if (arrayOfString != null)
      try
      {
        Drawable localDrawable2 = localPackageManager.getApplicationIcon(localPackageManager.getApplicationInfo(arrayOfString[0], 0));
        return localDrawable2;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Log.e("Su.Util", "No package found matching with the uid " + paramInt);
        return localDrawable1;
      }
    Log.e("Su.Util", "Package not found for uid " + paramInt);
    return localDrawable1;
  }

  public static String getAppName(Context paramContext, int paramInt, boolean paramBoolean)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    Object localObject = "Unknown";
    String[] arrayOfString = localPackageManager.getPackagesForUid(paramInt);
    if (arrayOfString != null);
    try
    {
      if (arrayOfString.length == 1)
      {
        String str2 = localPackageManager.getApplicationLabel(localPackageManager.getApplicationInfo(arrayOfString[0], 0)).toString();
        localObject = str2;
      }
      label52: int i;
      do
      {
        do
        {
          if (paramBoolean)
            localObject = localObject + " (" + paramInt + ")";
          return localObject;
        }
        while (arrayOfString.length <= 1);
        localObject = "";
        i = 0;
      }
      while (i >= arrayOfString.length);
      localObject = localObject + arrayOfString[i];
      if (i < arrayOfString.length - 1)
      {
        String str1 = localObject + ", ";
        localObject = str1;
      }
      ++i;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.e("Su.Util", "Package name not found", localNameNotFoundException);
      break label52:
      Log.e("Su.Util", "Package not found for uid " + paramInt);
      break label52:
    }
  }

  public static String getAppPackage(Context paramContext, int paramInt)
  {
    String[] arrayOfString = paramContext.getPackageManager().getPackagesForUid(paramInt);
    String str = "unknown";
    if (arrayOfString != null)
    {
      if (arrayOfString.length == 1)
        str = arrayOfString[0];
      do
        return str;
      while (arrayOfString.length <= 1);
      str = "";
      for (int i = 0; ; ++i)
      {
        if (i < arrayOfString.length);
        str = str + arrayOfString[i];
        if (i >= arrayOfString.length - 1)
          continue;
        str = str + ", ";
      }
    }
    Log.e("Su.Util", "Package not found");
    return str;
  }

  // ERROR //
  public static String getHash(String paramString)
  {
    // Byte code:
    //   0: ldc_w 259
    //   3: invokestatic 265	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   6: astore_3
    //   7: aload_3
    //   8: invokevirtual 268	java/security/MessageDigest:reset	()V
    //   11: aload_3
    //   12: aload_0
    //   13: ldc_w 270
    //   16: invokevirtual 274	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   19: invokevirtual 278	java/security/MessageDigest:digest	([B)[B
    //   22: invokestatic 284	com/noshufou/android/su/util/Base64:encode	([B)Ljava/lang/String;
    //   25: astore 6
    //   27: aload 6
    //   29: areturn
    //   30: astore_1
    //   31: ldc_w 286
    //   34: ldc_w 288
    //   37: aload_1
    //   38: invokestatic 247	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   41: pop
    //   42: aload_0
    //   43: areturn
    //   44: astore 4
    //   46: ldc_w 286
    //   49: ldc_w 290
    //   52: aload 4
    //   54: invokestatic 247	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   57: pop
    //   58: aload_0
    //   59: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	7	30	java/security/NoSuchAlgorithmException
    //   11	27	44	java/io/UnsupportedEncodingException
  }

  public static Drawable getStatusIconDrawable(Context paramContext, int paramInt)
  {
    int[][] arrayOfInt = { { 2130837548, 2130837546 }, { 2130837549, 2130837547 } };
    String str = PreferenceManager.getDefaultSharedPreferences(paramContext).getString("pref_status_icon_type", "emote");
    int i = 1;
    if (str.equals("dot"));
    for (i = 0; (paramInt < 0) || (paramInt > 1); i = 1)
      do
      {
        Log.e("Su.Util", "Bad value given to getStatusButtonDrawable(int). Expecting 0 or 1, got " + paramInt);
        return null;
      }
      while (!(str.equals("emote")));
    return paramContext.getResources().getDrawable(arrayOfInt[i][paramInt]);
  }

  public static String getSuVersion()
  {
    Process localProcess = null;
    while (true)
    {
      DataOutputStream localDataOutputStream;
      int i;
      try
      {
        localProcess = Runtime.getRuntime().exec("sh");
        localDataOutputStream = new DataOutputStream(localProcess.getOutputStream());
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(new DataInputStream(localProcess.getInputStream())), 64);
        localDataOutputStream.writeBytes("su -v\n");
        i = 0;
        break label187:
        String str;
        boolean bool;
        do
        {
          if (!(localBufferedReader.ready()))
            break label158;
          str = localBufferedReader.readLine();
          if (str == null)
            break label166;
          if (localProcess == null)
            continue;
          label158: label166: label117: localProcess.destroy();
        }
        while (bool);
      }
      catch (IOException localIOException)
      {
        localDataOutputStream.writeBytes("exit\n");
        return null;
      }
      finally
      {
        if (localProcess != null)
          localProcess.destroy();
      }
      label187: if (i < 400)
        continue;
    }
  }

  public static int getSuVersionCode()
  {
    Process localProcess = null;
    while (true)
    {
      DataOutputStream localDataOutputStream;
      int i;
      try
      {
        localProcess = Runtime.getRuntime().exec("sh");
        localDataOutputStream = new DataOutputStream(localProcess.getOutputStream());
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(new DataInputStream(localProcess.getInputStream())), 64);
        localDataOutputStream.writeBytes("su -v\n");
        i = 0;
        break label238:
        int j;
        boolean bool;
        do
        {
          if (!(localBufferedReader.ready()))
            break label209;
          String str1 = localBufferedReader.readLine();
          if ((str1 == null) || (Integer.parseInt(str1.substring(0, 1)) <= 2))
            break label199;
          localDataOutputStream.writeBytes("su -V\n");
          String str2 = localBufferedReader.readLine();
          if (str2 == null)
            break label217;
          j = Integer.parseInt(str2);
          if (localProcess == null)
            continue;
          label158: label199: label209: label217: localProcess.destroy();
        }
        while (bool);
      }
      catch (IOException localIOException)
      {
        return 0;
        localDataOutputStream.writeBytes("exit\n");
        return 0;
      }
      finally
      {
        if (localProcess != null)
          localProcess.destroy();
      }
      label238: if (i < 400)
        continue;
    }
  }

  public static String getUidName(Context paramContext, int paramInt, boolean paramBoolean)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    String str = "";
    if (paramInt == 0)
      str = "root";
    while (true)
    {
      if (paramBoolean)
        str = str + " (" + paramInt + ")";
      return str;
      localPackageManager.getNameForUid(paramInt);
    }
  }

  public static void goHome(Context paramContext)
  {
    Intent localIntent;
    if (PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("pref_ghost_mode", false))
      localIntent = new Intent(paramContext, HomeActivity.class);
    while (true)
    {
      localIntent.setFlags(67108864);
      paramContext.startActivity(localIntent);
      return;
      localIntent = new Intent();
      localIntent.setComponent(new ComponentName("com.noshufou.android.su", "com.noshufou.android.su.Su"));
    }
  }

  public static int isPackageMalicious(Context paramContext, PackageInfo paramPackageInfo)
  {
    if (paramPackageInfo.packageName.equals(paramContext.getPackageName()))
      return 0;
    if (paramPackageInfo.applicationInfo.uid == paramContext.getApplicationInfo().uid)
      return 1;
    String[] arrayOfString1;
    String[] arrayOfString2;
    int j;
    if (paramPackageInfo.requestedPermissions != null)
    {
      arrayOfString1 = new String[] { "com.noshufou.android.su.RESPOND", "com.noshufou.android.su.provider.WRITE" };
      arrayOfString2 = paramPackageInfo.requestedPermissions;
      int i = arrayOfString2.length;
      j = 0;
      if (j < i)
        break label80;
    }
    return 0;
    label80: String str = arrayOfString2[j];
    for (int k = 0; ; ++k)
    {
      if (k >= 2)
        ++j;
      if ((str.equals(arrayOfString1[k])) && (paramContext.getPackageManager().checkPermission(arrayOfString1[k], paramPackageInfo.packageName) == 0))
        return (k + 2);
    }
  }

  public static boolean isSuCurrent()
  {
    return (getSuVersionCode() >= 10);
  }

  public static void launchPreferences(Context paramContext)
  {
    paramContext.startActivity(new Intent(paramContext, PreferencesActivity.class));
  }

  public static void toggleAppIcon(Context paramContext, boolean paramBoolean)
  {
    ComponentName localComponentName = new ComponentName("com.noshufou.android.su", "com.noshufou.android.su.Su");
    PackageManager localPackageManager = paramContext.getPackageManager();
    if (paramBoolean);
    for (int i = 1; ; i = 2)
    {
      localPackageManager.setComponentEnabledSetting(localComponentName, i, 1);
      return;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.util.Util
 * JD-Core Version:    0.5.3
 */