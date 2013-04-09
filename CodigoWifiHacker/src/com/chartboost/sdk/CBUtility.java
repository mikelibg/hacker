package com.chartboost.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;

public class CBUtility
{
  private static String ANDROID_AUID = null;
  public static final int ANDROID_AUID_COOKIE_FLAG = 1;
  public static final String ANDROID_AUID_COOKIE_KEY = "cb_auid";
  public static final String ANDROID_AUID_COOKIE_PREFIX = "android-";
  public static final String AUID_STATIC_EMULATOR = "ffff";
  public static final String AUID_STATIC_ERROR = "unknown";
  public static final String PREFERENCES_FILE = "ChartBoost.cb";
  public static final String PREFERENCES_SDCARD_PATH = "/Android/data/com.chartboost.sdk/files";

  public static String getAUID(Context paramContext)
  {
    if (ANDROID_AUID != null)
    {
      localObject = ANDROID_AUID;
      label11: return localObject;
    }
    int i = 1;
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("ChartBoost.cb", 1);
    String str1 = localSharedPreferences.getString("cb_auid", null);
    Object localObject = null;
    if (str1 != null)
      localObject = str1;
    File localFile = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/com.chartboost.sdk/files" + "/" + "ChartBoost.cb");
    if (localObject == null);
    label174: UUID localUUID;
    try
    {
      StringBuffer localStringBuffer;
      int j;
      if ((Environment.getExternalStorageState().equals("mounted")) && (localFile.isFile()))
      {
        localStringBuffer = new StringBuffer("");
        FileInputStream localFileInputStream = new FileInputStream(localFile);
        j = localFileInputStream.read();
        if (j != -1)
          break label196;
        localFileInputStream.close();
        if (localStringBuffer.length() == 40)
        {
          String str3 = localStringBuffer.toString();
          localObject = str3;
          i = 0;
        }
      }
      if (localObject != null)
        break label250;
      localUUID = UUID.randomUUID();
      if (localUUID != null)
        break label217;
      localObject = "unknown";
      break label11:
      label196: char c = (char)j;
      label323: label217: label250: localStringBuffer.append(c);
    }
    catch (Exception localException)
    {
      break label174:
      String str2 = localUUID.toString();
      localObject = "android-" + str2.replace("-", "");
      if ((!(localSharedPreferences.edit().putString("cb_auid", (String)localObject).commit())) || (i != 0));
      while (true)
        try
        {
          if (localFile.exists())
          {
            localFile.delete();
            if (localFile.createNewFile())
            {
              FileWriter localFileWriter = new FileWriter(localFile, false);
              localFileWriter.write((String)localObject);
              localFileWriter.close();
            }
            ANDROID_AUID = (String)localObject;
            break label11:
            localObject = "unknown";
          }
          localFile.mkdirs();
        }
        catch (IOException localIOException)
        {
          break label323:
        }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.chartboost.sdk.CBUtility
 * JD-Core Version:    0.5.3
 */