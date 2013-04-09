package com.pad.android.util;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Enumeration;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public class AdRefValues
{
  private static final String LB_LOG = "LBAdConroller";
  private static final String SDK_LEVEL = "06b";
  private static final String SDK_VERSION = "3";
  private static boolean dataretrieve = true;

  public static String adRefValues(Context paramContext, TelephonyManager paramTelephonyManager, String paramString, List<NameValuePair> paramList, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    ArrayList localArrayList = new ArrayList(2);
    if (paramString != null)
    {
      BasicNameValuePair localBasicNameValuePair1 = new BasicNameValuePair("subid", paramString);
      localArrayList.add(localBasicNameValuePair1);
    }
    if (paramList != null);
    Object localObject2;
    int i1;
    try
    {
      localObject2 = "";
      i1 = 0;
      if (i1 >= paramList.size())
      {
        label47: BasicNameValuePair localBasicNameValuePair8 = new BasicNameValuePair("tokens", (String)localObject2);
        localArrayList.add(localBasicNameValuePair8);
        label1054: label1187: label553: label1194: label429: label1204: label1210: label1216: label103: label502: label1272: AdLog.i("LBAdConroller", "Token Str = " + ((String)localObject2));
      }
    }
    catch (Exception localException1)
    {
      try
      {
        String str2 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
        Calendar localCalendar = Calendar.getInstance();
        BasicNameValuePair localBasicNameValuePair2 = new BasicNameValuePair("ref1", str2);
        localArrayList.add(localBasicNameValuePair2);
        localArrayList.add(new BasicNameValuePair("ref2", Build.VERSION.RELEASE));
        localArrayList.add(new BasicNameValuePair("ref3", "Android"));
        localArrayList.add(new BasicNameValuePair("ref4", getLocalIpAddress()));
        localArrayList.add(new BasicNameValuePair("ref5", localCalendar.get(15)));
        localArrayList.add(new BasicNameValuePair("ref6", (int)(localCalendar.getTimeInMillis() / 1000L)));
        localArrayList.add(new BasicNameValuePair("ref7", paramInt1));
        localArrayList.add(new BasicNameValuePair("ref8", paramInt2));
        if (!(paramBoolean));
      }
      catch (Exception localException1)
      {
        try
        {
          Location localLocation = ((LocationManager)paramContext.getSystemService("location")).getLastKnownLocation("gps");
          String str10 = String.valueOf(localLocation.getLongitude());
          String str11 = String.valueOf(localLocation.getLatitude());
          BasicNameValuePair localBasicNameValuePair6 = new BasicNameValuePair("ref9", str11);
          localArrayList.add(localBasicNameValuePair6);
          BasicNameValuePair localBasicNameValuePair7 = new BasicNameValuePair("ref10", str10);
          localArrayList.add(localBasicNameValuePair7);
          boolean bool = dataretrieve;
          if (!(bool));
        }
        catch (Exception localException1)
        {
          while (true)
          {
            try
            {
              localArrayList.add(new BasicNameValuePair("ref11", paramTelephonyManager.getNetworkCountryIso()));
              localArrayList.add(new BasicNameValuePair("ref12", paramTelephonyManager.getNetworkOperator()));
              localArrayList.add(new BasicNameValuePair("ref13", paramTelephonyManager.getNetworkOperatorName()));
              localArrayList.add(new BasicNameValuePair("ref15", "3"));
              localArrayList.add(new BasicNameValuePair("ref16", "06b"));
              String str3;
              int i;
              if (paramTelephonyManager.getDeviceId() != null)
              {
                str3 = paramTelephonyManager.getDeviceId();
                BasicNameValuePair localBasicNameValuePair3 = new BasicNameValuePair("ref17", str3);
                localArrayList.add(localBasicNameValuePair3);
                localArrayList.add(new BasicNameValuePair("ref18", Build.MANUFACTURER));
                localArrayList.add(new BasicNameValuePair("ref19", Build.MODEL));
                ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
                NetworkInfo localNetworkInfo1 = localConnectivityManager.getNetworkInfo(0);
                NetworkInfo localNetworkInfo2 = localConnectivityManager.getNetworkInfo(1);
                if (localNetworkInfo1 == null)
                  break label1204;
                localState1 = localNetworkInfo1.getState();
                if (localNetworkInfo2 == null)
                  break label1210;
                localState2 = localNetworkInfo2.getState();
                str4 = "";
                NetworkInfo.State localState3 = NetworkInfo.State.CONNECTED;
                if (localState2 == localState3)
                  break label1187;
                NetworkInfo.State localState4 = NetworkInfo.State.CONNECTING;
                if (localState2 != localState4)
                  break label1054;
                break label1187:
                BasicNameValuePair localBasicNameValuePair4 = new BasicNameValuePair("ref20", str4);
                localArrayList.add(localBasicNameValuePair4);
                i = paramTelephonyManager.getSimState();
                str5 = "";
              }
              switch (i)
              {
              default:
                BasicNameValuePair localBasicNameValuePair5 = new BasicNameValuePair("ref21", str5);
                localArrayList.add(localBasicNameValuePair5);
                StringBuilder localStringBuilder = new StringBuilder("r20 - ");
                if (!(str4.equals("wifi")))
                  break label1272;
                str6 = "w";
                AdLog.d("LBAdConroller", str6 + ", r21 - " + str5);
                if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") != 0)
                  break label1194;
                localArrayList.add(new BasicNameValuePair("ref22", ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress()));
                break label1194:
                while (true)
                {
                  int k = localArrayList.size();
                  if (j >= k)
                  {
                    int l = -1 + ((String)localObject1).length();
                    String str9 = AdEncryption.encrypt(((String)localObject1).substring(0, l));
                    str1 = str9;
                    return str1;
                    BasicNameValuePair localBasicNameValuePair9 = (BasicNameValuePair)paramList.get(i1);
                    String str12 = localObject2 + AdEncryption.base64encode(localBasicNameValuePair9.getName().getBytes()) + ":" + AdEncryption.base64encode(localBasicNameValuePair9.getValue().getBytes()) + ",";
                    localObject2 = str12;
                    ++i1;
                    break label47:
                    localException4 = localException4;
                    AdLog.e("LBAdConroller", "Error while adding tokens - " + localException4.getMessage());
                    break label103:
                    str3 = "0";
                    break label553:
                    if (localState1 == NetworkInfo.State.CONNECTED)
                      break label1216;
                    if (localState1 == NetworkInfo.State.CONNECTING);
                    break label1216:
                  }
                  NameValuePair localNameValuePair = (NameValuePair)localArrayList.get(j);
                  String str7 = localNameValuePair.getValue();
                  if (str7 != null)
                  {
                    String str8 = localObject1 + localNameValuePair.getName() + "=" + URLEncoder.encode(str7, "UTF-8") + "&";
                    localObject1 = str8;
                  }
                  ++j;
                }
                localException1 = localException1;
                AdLog.printStackTrace("LBAdConroller", localException1);
                String str1 = "";
              case 1:
              case 4:
              case 2:
              case 3:
              case 5:
              case 0:
              }
            }
            catch (Exception localException2)
            {
              break label502:
              localException3 = localException3;
            }
            break label429:
            String str4 = "wifi";
            continue;
            Object localObject1 = "";
            int j = 0;
            continue;
            NetworkInfo.State localState1 = null;
            continue;
            NetworkInfo.State localState2 = null;
            continue;
            str4 = "carrier";
            continue;
            String str5 = "no_sim";
            continue;
            str5 = "sim_carrier_locked";
            continue;
            str5 = "sim_user_locked";
            continue;
            str5 = "sim_puk_locked";
            continue;
            str5 = "sim_ok";
            continue;
            str5 = "sim_unknown";
          }
          String str6 = "c";
        }
      }
    }
  }

  private static String getLocalIpAddress()
  {
    String str1;
    try
    {
      Enumeration localEnumeration1 = NetworkInterface.getNetworkInterfaces();
      if (!(localEnumeration1.hasMoreElements()))
        break label80;
      Enumeration localEnumeration2 = ((NetworkInterface)localEnumeration1.nextElement()).getInetAddresses();
      InetAddress localInetAddress;
      do
      {
        if (localEnumeration2.hasMoreElements());
        localInetAddress = (InetAddress)localEnumeration2.nextElement();
      }
      while (localInetAddress.isLoopbackAddress());
      String str2 = localInetAddress.getHostAddress().toString();
      label80: str1 = str2;
    }
    catch (SocketException localSocketException)
    {
      AdLog.printStackTrace("LBAdConroller", localSocketException);
      str1 = null;
    }
    return str1;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.pad.android.util.AdRefValues
 * JD-Core Version:    0.5.3
 */