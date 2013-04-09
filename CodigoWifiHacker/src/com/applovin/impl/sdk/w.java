package com.applovin.impl.sdk;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

class w
{
  public static final y A;
  public static final y B;
  public static final y C;
  public static final y D;
  public static final y E;
  public static final y F;
  public static final y G;
  public static final y H;
  private static final List I = Arrays.asList(new Class[] { Boolean.class, Float.class, Integer.class, Long.class, String.class });
  private static final List J = new ArrayList();
  public static final y a = a("is_disabled", Boolean.valueOf(false));
  public static final y b = a("should_load_user_settings", Boolean.valueOf(true));
  public static final y c = a("device_id", "");
  public static final y d = a("publisher_id", "");
  public static final y e = a("app_id", "");
  public static final y f = a("device_token", "");
  public static final y g = a("init_retry_count", Integer.valueOf(1));
  public static final y h = a("submit_data_retry_count", Integer.valueOf(1));
  public static final y i = a("fetch_ad_retry_count", Integer.valueOf(1));
  public static final y j = a("conversion_retry_count", Integer.valueOf(1));
  public static final y k = a("track_click_retry_count", Integer.valueOf(1));
  public static final y l = a("is_verbose_logging", Boolean.valueOf(true));
  public static final y m = a("api_endpoint", "http://d.applovin.com/");
  public static final y n = a("adserver_endpoint", "http://a.applovin.com/");
  public static final y o = a("next_device_init", Long.valueOf(0L));
  public static final y p = a("get_retry_dealy", Long.valueOf(10000L));
  public static final y q = a("max_apps_to_send", Integer.valueOf(100));
  public static final y r = a("max_emails_to_send", Integer.valueOf(20));
  public static final y s = a("is_app_list_shared", Boolean.valueOf(true));
  public static final y t = a("next_app_list_update", Long.valueOf(0L));
  public static final y u = a("hash_algorithm", "SHA-1");
  public static final y v = a("short_hash_size", Integer.valueOf(16));
  public static final y w = a("http_connection_timeout", Integer.valueOf(20000));
  public static final y x = a("http_socket_timeout", Integer.valueOf(20000));
  public static final y y = a("error_save_count", Integer.valueOf(15));
  public static final y z = a("is_app_icon_requested", Boolean.valueOf(false));

  static
  {
    A = a("local_server_port", Integer.valueOf(7145));
    B = a("local_server_enabled", Boolean.valueOf(true));
    C = a("sdk_update_check_interval", Long.valueOf(1440L));
    D = a("ad_session_minutes", Integer.valueOf(60));
    E = a("ad_request_parameters", "");
    F = a("ad_refresh_enabled", Boolean.valueOf(true));
    G = a("ad_refresh_seconds", Long.valueOf(120L));
    H = a("plugin_version", "");
  }

  private static y a(String paramString, Object paramObject)
  {
    if (paramObject == null)
      throw new IllegalArgumentException("No default value specified");
    if (!(I.contains(paramObject.getClass())))
      throw new IllegalArgumentException("Unsupported value type: " + paramObject.getClass());
    y localy = new y(paramString, paramObject, null);
    J.add(localy);
    return localy;
  }

  public static Collection a()
  {
    return Collections.unmodifiableList(J);
  }

  public static int b()
  {
    return J.size();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.w
 * JD-Core Version:    0.5.3
 */