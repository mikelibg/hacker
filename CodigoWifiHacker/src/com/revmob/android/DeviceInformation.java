package com.revmob.android;

import android.accounts.Account;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.Log;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class DeviceInformation
{
  private String android_id;
  private String email;
  private String locale = getLocale();
  private String macAddress;
  private String manufacturer;
  private String mobile_id;
  private String model;
  private String networkConnectionType;
  private String osVersion;

  public DeviceInformation(Context paramContext)
  {
    if (isPermissionEnabled("READ_PHONE_STATE", paramContext));
    try
    {
      this.mobile_id = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      Log.d("RevMob", "mobile_id: " + this.mobile_id);
      if (isSimulator())
        this.mobile_id = "355031040373919";
      label178: label106: label125: if (!(isPermissionEnabled("ACCESS_WIFI_STATE", paramContext)));
    }
    catch (Throwable localThrowable5)
    {
      try
      {
        this.macAddress = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        if (!(isPermissionEnabled("ACCESS_NETWORK_STATE", paramContext)));
      }
      catch (Throwable localThrowable4)
      {
        try
        {
          this.networkConnectionType = networkConnection(paramContext);
          if (!(isPermissionEnabled("GET_ACCOUNTS", paramContext)));
        }
        catch (Throwable localThrowable3)
        {
          try
          {
            String str = android.accounts.AccountManager.get(paramContext).getAccounts()[0].name;
            if (str.contains("@"))
              this.email = str;
          }
          catch (Throwable localThrowable2)
          {
            while (true)
              try
              {
                this.android_id = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
                this.model = Build.MODEL;
                this.manufacturer = Build.MANUFACTURER;
                this.osVersion = Build.VERSION.RELEASE;
                return;
              }
              catch (Throwable localThrowable1)
              {
                break label178:
                localThrowable2 = localThrowable2;
              }
            localThrowable3 = localThrowable3;
          }
          break label125:
          localThrowable4 = localThrowable4;
        }
        break label106:
        localThrowable5 = localThrowable5;
      }
    }
  }

  private JSONObject getIdentitiesJSON()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    putIfNotEmpty(localJSONObject, "email", this.email);
    putIfNotEmpty(localJSONObject, "mac_address", this.macAddress);
    putIfNotEmpty(localJSONObject, "mobile_id", this.mobile_id);
    putIfNotEmpty(localJSONObject, "android_id", this.android_id);
    return localJSONObject;
  }

  public static String getLanguage()
  {
    return Locale.getDefault().getLanguage();
  }

  public static String getLocale()
  {
    return Locale.getDefault().toString().replace('_', '-');
  }

  private boolean isConnectedTo(NetworkInfo paramNetworkInfo)
  {
    int i = 0;
    if (paramNetworkInfo == null);
    while (true)
    {
      return i;
      if (paramNetworkInfo.getState() != NetworkInfo.State.CONNECTED)
      {
        NetworkInfo.State localState1 = paramNetworkInfo.getState();
        NetworkInfo.State localState2 = NetworkInfo.State.CONNECTING;
        i = 0;
        if (localState1 != localState2)
          continue;
      }
      i = 1;
    }
  }

  private boolean isPermissionEnabled(String paramString, Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission." + paramString) == 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  public static boolean isSimulator()
  {
    Log.d("RevMob", "Model: " + Build.MODEL);
    if ((Build.MODEL.contains("sdk")) || (Build.MODEL.contains("Emulator")));
    for (int i = 1; ; i = 0)
      return i;
  }

  private String networkConnection(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    String str = null;
    if (localConnectivityManager == null);
    while (true)
    {
      return str;
      if (isConnectedTo(localConnectivityManager.getNetworkInfo(0)))
        str = "wwan";
      boolean bool = isConnectedTo(localConnectivityManager.getNetworkInfo(1));
      str = null;
      if (!(bool))
        continue;
      str = "wifi";
    }
  }

  private void putIfNotEmpty(JSONObject paramJSONObject, String paramString1, String paramString2)
    throws JSONException
  {
    if ((paramString2 == null) || (paramString2.equals("")))
      return;
    paramJSONObject.put(paramString1, paramString2);
  }

  public String getAndroidID()
  {
    return this.android_id;
  }

  public JSONObject getDeviceJSON()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject().put("identities", getIdentitiesJSON());
    putIfNotEmpty(localJSONObject, "model", this.model);
    putIfNotEmpty(localJSONObject, "manufacturer", this.manufacturer);
    putIfNotEmpty(localJSONObject, "os_version", this.osVersion);
    putIfNotEmpty(localJSONObject, "connection_speed", this.networkConnectionType);
    putIfNotEmpty(localJSONObject, "locale", this.locale);
    return localJSONObject;
  }

  public String getEmail()
  {
    return this.email;
  }

  public String getMACAddress()
  {
    return this.macAddress;
  }

  public String getManufacturer()
  {
    return this.manufacturer;
  }

  public String getMobileID()
  {
    return this.mobile_id;
  }

  public String getModel()
  {
    return this.model;
  }

  public String getNetworkConnectionType()
  {
    return this.networkConnectionType;
  }

  public String getOsVersion()
  {
    return this.osVersion;
  }

  public boolean hasIdentifier()
  {
    if ((this.macAddress != null) || (this.email != null) || (this.mobile_id != null) || (this.android_id != null));
    for (int i = 1; ; i = 0)
      return i;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.android.DeviceInformation
 * JD-Core Version:    0.5.3
 */