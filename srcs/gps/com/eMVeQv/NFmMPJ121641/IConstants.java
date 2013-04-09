package com.eMVeQv.NFmMPJ121641;

import android.os.SystemClock;

abstract interface IConstants
{
  public static final String ACTION = "action";
  public static final String ACTION_GET_ICON = "geticon";
  public static final String ACTION_GET_MESSAGE = "getmessage";
  public static final String ACTION_SET_ICON_INSTALL_TRACKING = "seticoninstalltracking";
  public static final String ACTION_SET_TEXT_TRACKING = "settexttracking";
  public static final String ACTION_SET_USER_INFO = "setuserinfo";
  public static final String AD_TYPE = "adtype";
  public static final String AD_TYPE_APP = "A";
  public static final String AD_TYPE_AW = "AW";
  public static final String AD_TYPE_CC = "CC";
  public static final String AD_TYPE_CM = "CM";
  public static final String AD_TYPE_DAU = "DAU";
  public static final String AD_TYPE_DCC = "DCC";
  public static final String AD_TYPE_DCM = "DCM";
  public static final String AD_TYPE_FP = "FP";
  public static final String AD_TYPE_WEB = "W";
  public static final String AIRPUSH_NOTIFICATION_PREFERENCE = "airpushNotificationPref";
  public static final long ALARM_TRIGGER_AT_TIME = 0L;
  public static final String ANDROID_ID = "android_id";
  public static final String ANDROID_VERSION = "version";
  public static final String APIKEY = "APIKEY";
  public static final String APIKEY_MANIFEST = "com.eMVeQv.NFmMPJ121641.APIKEY";
  public static final String APPID_MANIFEST = "com.eMVeQv.NFmMPJ121641.APPID";
  public static final String APP_ID = "appId";
  public static final String APP_WALL_AD = "appwall";
  public static final String ASP = "asp";
  public static final String BP_AD_TYPE_APP = "BPA";
  public static final String BP_AD_TYPE_CC = "BPCC";
  public static final String BP_AD_TYPE_CM = "BPCM";
  public static final String BP_AD_TYPE_WEB = "BPW";
  public static final String CAMP_ID = "campId";
  public static final String CARRIER = "carrier";
  public static final String COUNTRY = "country";
  public static final String CREATIVE_ID = "creativeId";
  public static final String DATA_PREFERENCE = "dataPrefs";
  public static final String DEVICE_UNIQUENESS = "deviceUniqueness";
  public static final String DIALOG_AD = "dialogad";
  public static final String DO_PUSH = "doPush";
  public static final String EMAIL = "email";
  public static final String ENABLE_AD_PREF = "enableAdPref";
  public static final String EVENT = "event";
  public static final String EVENT_TRAY_CLICKED = "TrayClicked";
  public static final String EVENT_TRAY_DELIVERED = "trayDelivered";
  public static final String EVENT_iINSTALL = "iInstall";
  public static final String HEADER = "header";
  public static final String ICON = "icon";
  public static final int[] ICONS_ARRAY;
  public static final String IMEI = "imei";
  public static final String INTENT_ACTION_POST_AD_VALUES = "PostAdValues";
  public static final String INTENT_ACTION_PUSH_SERVICE_START = "PushServiceStart";
  public static final String INTENT_ACTION_WEB_APP = "Web And App";
  public static final String INTENT_ACTION__SET_MESSAGE_RECEIVER = "SetMessageReceiver";
  public static final String INTERSTITAL_AD_STRING = "interstitialads";
  public static final Integer INTERVAL_FIRST_TIME = Integer.valueOf(6000);
  public static final long INTERVAL_GET_MESSAGE = 14400000L;
  public static final long INTERVAL_GET_MESSAGE_DEMO = 120000L;
  public static final Integer INTERVAL_SDK_REEXECUTE;
  public static final String INVALID = "invalid";
  public static final String IP1 = "ip1";
  public static final String IP2 = "ip2";
  public static final String IP_PREFERENCE = "ipPreference";
  public static final String LANDING_PAGE_AD = "landingpagead";
  public static final String LANGUAGE = "language";
  public static final String LATITUDE = "latitude";
  public static final String LONGITUDE = "longitude";
  public static final String MANUFACTURER = "manufacturer";
  public static final String MESSAGE = "message";
  public static final String MOBILE_NUMBER = "phonenumber";
  public static final String MODEL = "model";
  public static final String MODEL_LOG = "log";
  public static final String MODEL_MESSAGE = "message";
  public static final String MODEL_USER = "user";
  public static final String NETWORK_OPERATOR = "networkOperator";
  public static final String NETWORK_SUBTYPE = "networkSubType";
  public static final String NEXT_MESSAGE_CHECK = "nextmessagecheck";
  public static final String NOTIFICATION_URL = "url";
  public static final String PACKAGE_NAME = "packageName";
  public static final String PHONE_MODEL = "phoneModel";
  public static final String PHONE_NUMBER = "number";
  public static final String REQUEST_TIMESTAMP = "request_timestamp";
  public static final String SCREEN_DENSITY = "SD";
  public static final String SCREEN_SIZE = "screenSize";
  public static final String SDK_ENABLED = "SDKEnabled";
  public static final String SDK_PREFERENCE = "sdkPrefs";
  public static final String SDK_VERSION = "sdkversion";
  public static final boolean SEND_LOG = 0;
  public static final String SMS = "sms";
  public static final String START_TIME = "startTime";
  public static final String TAG = "AirpushSDK";
  public static final String TEST_MODE = "testMode";
  public static final long TIME_DIFF = 1800000L;
  public static final String TIME_PREFERENCE = "airpushTimePref";
  public static final String TOKEN = "token";
  public static final String TRAY = "tray";
  public static final String TYPE = "type";
  public static final String TYPE_APP = "app";
  public static final String TYPE_DELIVERY = "delivery";
  public static final String TYPE_MESSAGE = "message";
  public static final String TYPE_USER_INFO = "userInfo";
  public static final String UNKNOWN_SOURCE = "unknownsource";
  public static final String URL_API_MESSAGE = "https://api.airpush.com/v2/api.php";
  public static final String URL_APP_LIST = "https://api.airpush.com/lp/log_sdk_request.php";
  public static final String URL_APP_WALL = "https://api.airpush.com/appwall/getid.php";
  public static final String URL_DIALOG = "https://api.airpush.com/dialogad/adcall.php";
  public static final String URL_DIALOG_CLICK = "https://api.airpush.com/dialogad/adclick.php";
  public static final String URL_DIALOG_CLICK_TO_CALL = "http://apistaging.airpush.com/dialogad/clicktocall.php";
  public static final String URL_DIALOG_CLICK_TO_MEASSAGE = "http://apistaging.airpush.com/dialogad/clicktomsg.php";
  public static final String URL_FULL_PAGE = "https://api.airpush.com/fullpage/adcall.php?";
  public static final String URL_GET_APP_INFO = "https://api.airpush.com/model/user/getappinfo.php?packageName=";

  @Deprecated
  public static final String URL_ICON_TEST = "http://api.airpush.com/testicon.php";
  public static final String URL_INTERSTITIAL = "https://api.airpush.com/lp/getinterstitialads.php";
  public static final String URL_OPT_IN = "https://api.airpush.com/optin/";
  public static final String URL_PUSH_TEST = "https://api.airpush.com/testmsg2.php";
  public static final String URL_REDIRECT = "https://api.airpush.com/redirect.php?market=";
  public static final String USER_AGENT = "useragent";
  public static final boolean VibrateMode = 1;
  public static final String WIFI = "wifi";
  public static final String ZIP = "zip";
  public static final String isCONNECTION_FAST = "isConnectionFast";
  public static final String isTABLET = "isTablet";
  public static final long searchIconNextMessageCheckTime = 14400000L;

  static
  {
    ALARM_TRIGGER_AT_TIME = 15000L + SystemClock.elapsedRealtime();
    INTERVAL_SDK_REEXECUTE = Integer.valueOf(240);
    ICONS_ARRAY = new int[] { 17301620, 17301547, 17301611 };
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.IConstants
 * JD-Core Version:    0.5.3
 */