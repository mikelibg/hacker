package com.revmob.ads;

import android.content.Context;
import com.revmob.android.DeviceInformation;
import org.json.JSONException;
import org.json.JSONObject;

public class EnvironmentConfig
{
  private static final String PRODUCTION_SERVER_ADDRESS = "android.bcfads.com";
  private static String desiredResponse;
  private static String sdkName;
  private static String sdkVersion = "4.2.7";
  private static boolean testingMode;

  static
  {
    sdkName = "android";
    testingMode = false;
    desiredResponse = "with_ads";
  }

  public static JSONObject defaultJsonPayload(Context paramContext)
  {
    JSONObject localJSONObject1;
    try
    {
      DeviceInformation localDeviceInformation = new DeviceInformation(paramContext);
      localJSONObject1 = new JSONObject();
      localJSONObject1.put("device", localDeviceInformation.getDeviceJSON());
      JSONObject localJSONObject2 = new JSONObject();
      localJSONObject2.put("version", sdkVersion);
      localJSONObject2.put("name", sdkName);
      localJSONObject1.put("sdk", localJSONObject2);
      if (testingMode)
      {
        JSONObject localJSONObject3 = new JSONObject();
        localJSONObject3.put("response", desiredResponse);
        localJSONObject1.put("testing", localJSONObject3);
      }
      return localJSONObject1;
    }
    catch (JSONException localJSONException)
    {
      localJSONObject1 = null;
    }
  }

  public static String getFullServerUrl(String paramString1, String paramString2)
  {
    return paramString1 + "://" + "android.bcfads.com" + "/" + paramString2;
  }

  public static String getSdkName()
  {
    return sdkName;
  }

  public static String getSdkVersion()
  {
    return sdkVersion;
  }

  public static void setSdkName(String paramString)
  {
    if (paramString == null)
      return;
    sdkName = paramString;
  }

  public static void setSdkVersion(String paramString)
  {
    if (paramString == null)
      return;
    sdkVersion = paramString;
  }

  public static void setTestingMode(boolean paramBoolean)
  {
    testingMode = paramBoolean;
    desiredResponse = "with_ads";
  }

  public static void setTestingWithoutAds(boolean paramBoolean)
  {
    testingMode = paramBoolean;
    desiredResponse = "without_ads";
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.EnvironmentConfig
 * JD-Core Version:    0.5.3
 */