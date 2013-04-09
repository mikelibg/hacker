package com.applovin.impl.sdk;

import android.util.Log;
import com.applovin.sdk.Logger;

class t
  implements Logger
{
  private q a;
  private z b;
  private u c;

  void a(q paramq)
  {
    this.a = paramq;
  }

  void a(u paramu)
  {
    this.c = paramu;
  }

  void a(z paramz)
  {
    this.b = paramz;
  }

  protected boolean a()
  {
    if (this.b != null);
    for (boolean bool = ((Boolean)this.b.a(w.l)).booleanValue(); ; bool = false)
      return bool;
  }

  public void d(String paramString1, String paramString2)
  {
    if (a())
      Log.d("AppLovinSdk", "[" + paramString1 + "] " + paramString2);
    if (this.c == null)
      return;
    this.c.a("DEBUG  [" + paramString1 + "] " + paramString2);
  }

  public void e(String paramString1, String paramString2)
  {
    e(paramString1, paramString2, null);
  }

  public void e(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a())
      Log.e("AppLovinSdk", "[" + paramString1 + "] " + paramString2, paramThrowable);
    if (this.a != null)
      this.a.a(paramString1, paramString2, paramThrowable);
    u localu;
    StringBuilder localStringBuilder;
    if (this.c != null)
    {
      localu = this.c;
      localStringBuilder = new StringBuilder().append("ERROR  [").append(paramString1).append("] ").append(paramString2);
      if (paramThrowable == null)
        break label145;
    }
    for (String str = ": " + paramThrowable.getMessage(); ; str = "")
    {
      localu.a(str);
      label145: return;
    }
  }

  public void i(String paramString1, String paramString2)
  {
    if (a())
      Log.i("AppLovinSdk", "[" + paramString1 + "] " + paramString2);
    if (this.c == null)
      return;
    this.c.a("INFO  [" + paramString1 + "] " + paramString2);
  }

  public void userError(String paramString1, String paramString2)
  {
    userError(paramString1, paramString2, null);
  }

  public void userError(String paramString1, String paramString2, Throwable paramThrowable)
  {
    Log.e("AppLovinSdk", "[" + paramString1 + "] " + paramString2, paramThrowable);
    if (this.a != null)
      this.a.b(paramString1, paramString2, paramThrowable);
    u localu;
    StringBuilder localStringBuilder;
    if (this.c != null)
    {
      localu = this.c;
      localStringBuilder = new StringBuilder().append("USER  [").append(paramString1).append("] ").append(paramString2);
      if (paramThrowable == null)
        break label138;
    }
    for (String str = ": " + paramThrowable.getMessage(); ; str = "")
    {
      localu.a(str);
      label138: return;
    }
  }

  public void w(String paramString1, String paramString2)
  {
    w(paramString1, paramString2, null);
  }

  public void w(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a())
      Log.w("AppLovinSdk", "[" + paramString1 + "] " + paramString2, paramThrowable);
    if (this.c == null)
      return;
    this.c.a("WARN  [" + paramString1 + "] " + paramString2);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.t
 * JD-Core Version:    0.5.3
 */