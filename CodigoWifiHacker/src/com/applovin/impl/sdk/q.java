package com.applovin.impl.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONObject;

class q
{
  private final AppLovinSdkImpl a;
  private final r[] b;
  private int c = 0;

  q(AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    if (paramAppLovinSdkImpl == null)
      throw new IllegalArgumentException("No sdk specified");
    this.b = new r[((Integer)paramAppLovinSdkImpl.a(w.y)).intValue()];
    this.a = paramAppLovinSdkImpl;
  }

  private void a(r paramr)
  {
    synchronized (this.b)
    {
      this.c = ((1 + this.c) % this.b.length);
      this.b[this.c] = paramr;
      d();
      return;
    }
  }

  private void d()
  {
    if (this.a.getApplicationContext() == null)
      return;
    SharedPreferences.Editor localEditor = this.a.getSettingsManager().a().edit();
    localEditor.putString("errors", c().toString());
    localEditor.commit();
  }

  void a()
  {
    Context localContext = this.a.getApplicationContext();
    String str1;
    if (localContext != null)
      str1 = this.a.getSettingsManager().a().getString("errors", "[]");
    try
    {
      JSONArray localJSONArray = new JSONArray(str1);
      r[] arrayOfr = this.b;
      monitorenter;
      int i = 0;
      try
      {
        while (i < localJSONArray.length())
        {
          a(r.a((JSONObject)localJSONArray.get(i)));
          ++i;
        }
        monitorexit;
        SharedPreferences localSharedPreferences = localContext.getSharedPreferences("applovin.sdk.boostrap", 0);
        String str2 = localSharedPreferences.getString("LastBoostrapError", "");
        SharedPreferences.Editor localEditor;
        if ((str2 != null) && (str2.length() > 0))
        {
          a(new r("BoostrapError", str2));
          localEditor = localSharedPreferences.edit();
          localEditor.putString("LastBoostrapError", "");
        }
        return;
      }
      finally
      {
        monitorexit;
      }
    }
    catch (Throwable localThrowable)
    {
    }
  }

  void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    StackTraceElement[] arrayOfStackTraceElement;
    if (paramThrowable != null)
      if (paramThrowable instanceof NullPointerException)
      {
        arrayOfStackTraceElement = ((NullPointerException)paramThrowable).getStackTrace();
        if ((arrayOfStackTraceElement == null) || (arrayOfStackTraceElement.length <= 2))
          break label190;
      }
    label190: for (String str = arrayOfStackTraceElement[0] + ", " + arrayOfStackTraceElement[1] + ", " + arrayOfStackTraceElement[2]; ; str = "")
      for (r localr = new r(paramThrowable.getClass().getSimpleName(), paramString1 + ": " + paramString2 + str); ; localr = new r("ReportedError", paramString1 + ":" + paramString2))
      {
        label75: a(localr);
        return;
        str = ": " + paramThrowable.getMessage();
        break label75:
      }
  }

  JSONArray b()
  {
    JSONArray localJSONArray = c();
    synchronized (this.b)
    {
      Arrays.fill(this.b, null);
      this.c = 0;
      d();
      return localJSONArray;
    }
  }

  void b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (paramThrowable != null)
      paramString2 = paramString2 + ": " + paramThrowable.getMessage();
    a(new r("UserError", paramString1 + ": " + paramString2));
  }

  // ERROR //
  JSONArray c()
  {
    // Byte code:
    //   0: new 77	org/json/JSONArray
    //   3: dup
    //   4: invokespecial 183	org/json/JSONArray:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 45	com/applovin/impl/sdk/q:b	[Lcom/applovin/impl/sdk/r;
    //   12: astore_2
    //   13: aload_2
    //   14: monitorenter
    //   15: iconst_0
    //   16: istore_3
    //   17: iload_3
    //   18: aload_0
    //   19: getfield 45	com/applovin/impl/sdk/q:b	[Lcom/applovin/impl/sdk/r;
    //   22: arraylength
    //   23: if_icmpge +36 -> 59
    //   26: aload_0
    //   27: getfield 45	com/applovin/impl/sdk/q:b	[Lcom/applovin/impl/sdk/r;
    //   30: iload_3
    //   31: aaload
    //   32: astore 5
    //   34: aload 5
    //   36: ifnull +17 -> 53
    //   39: aload_1
    //   40: aload_0
    //   41: getfield 45	com/applovin/impl/sdk/q:b	[Lcom/applovin/impl/sdk/r;
    //   44: iload_3
    //   45: aaload
    //   46: invokevirtual 186	com/applovin/impl/sdk/r:a	()Lorg/json/JSONObject;
    //   49: invokevirtual 190	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   52: pop
    //   53: iinc 3 1
    //   56: goto -39 -> 17
    //   59: aload_2
    //   60: monitorexit
    //   61: aload_1
    //   62: areturn
    //   63: astore 4
    //   65: aload_2
    //   66: monitorexit
    //   67: aload 4
    //   69: athrow
    //   70: astore 6
    //   72: goto -19 -> 53
    //
    // Exception table:
    //   from	to	target	type
    //   17	34	63	finally
    //   39	53	63	finally
    //   59	67	63	finally
    //   39	53	70	org/json/JSONException
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.q
 * JD-Core Version:    0.5.3
 */