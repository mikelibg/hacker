package com.google.ads;

import android.webkit.WebView;
import com.google.ads.internal.d;
import com.google.ads.internal.e;
import com.google.ads.util.b;
import java.util.HashMap;

public class y
  implements n
{
  private AdActivity.StaticMethodWrapper a;

  public y()
  {
    this(new AdActivity.StaticMethodWrapper());
  }

  public y(AdActivity.StaticMethodWrapper paramStaticMethodWrapper)
  {
    this.a = paramStaticMethodWrapper;
  }

  public void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    String str = (String)paramHashMap.get("a");
    if (str == null)
    {
      b.a("Could not get the action parameter for open GMSG.");
      return;
    }
    if (str.equals("webapp"))
    {
      this.a.launchAdActivity(paramd, new e("webapp", paramHashMap));
      return;
    }
    if (str.equals("expand"))
    {
      this.a.launchAdActivity(paramd, new e("expand", paramHashMap));
      return;
    }
    this.a.launchAdActivity(paramd, new e("intent", paramHashMap));
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.google.ads.y
 * JD-Core Version:    0.5.3
 */