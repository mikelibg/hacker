package com.google.ads;

import android.webkit.WebView;
import com.google.ads.internal.d;
import com.google.ads.util.b;
import java.util.HashMap;

public class o
  implements n
{
  public void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    String str = (String)paramHashMap.get("name");
    if (str == null)
    {
      b.b("Error: App event with no name parameter.");
      return;
    }
    paramd.a(str, (String)paramHashMap.get("info"));
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.google.ads.o
 * JD-Core Version:    0.5.3
 */