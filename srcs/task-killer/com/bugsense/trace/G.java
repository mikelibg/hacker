package com.bugsense.trace;

public class G
{
  public static String ANDROID_VERSION;
  public static String API_KEY;
  public static String APPID;
  public static String APP_PACKAGE;
  public static String APP_VERSION;
  public static String FILES_PATH = "null";
  public static boolean HAS_ROOT;
  public static String PHONE_BRAND;
  public static String PHONE_MODEL;
  public static String TAG;
  public static String TraceVersion;
  public static String URL;

  static
  {
    APP_VERSION = "unknown";
    APP_PACKAGE = "unknown";
    URL = "https://bugsense.appspot.com/api/errors/airpush";
    TAG = "BugSenseHandler";
    ANDROID_VERSION = null;
    PHONE_MODEL = null;
    PHONE_BRAND = null;
    API_KEY = null;
    TraceVersion = "1.1.1";
    APPID = "";
    HAS_ROOT = false;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.bugsense.trace.G
 * JD-Core Version:    0.5.3
 */