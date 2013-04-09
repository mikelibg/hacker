package com.pad.android.iappad;

import android.app.Activity;
import android.content.Context;
import com.pad.android.listener.AdOptinListener;
import com.pad.android.util.AdLog;
import java.lang.reflect.Method;

final class a
  implements AdOptinListener
{
  public final void onAdOptin()
  {
    this.a.loadAd();
    Context localContext = AdController.n(this.a).getApplicationContext();
    try
    {
      ClassLoader localClassLoader = AdController.class.getClassLoader();
      Thread.currentThread().setContextClassLoader(localClassLoader);
      Class localClass = localClassLoader.loadClass("com.pad.android.xappad.AdController");
      Object localObject1 = localClass.newInstance();
      Method localMethod1 = localClass.getMethod("setSectionId", new Class[] { String.class });
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.b;
      localMethod1.invoke(localObject1, arrayOfObject1);
      localClass.getMethod("setContext", new Class[] { Context.class }).invoke(localObject1, new Object[] { localContext });
      localClass.getMethod("loadNotification", new Class[0]).invoke(localObject1, new Object[0]);
      Object localObject2 = localClass.newInstance();
      Method localMethod2 = localClass.getMethod("setSectionId", new Class[] { String.class });
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.c;
      localMethod2.invoke(localObject2, arrayOfObject2);
      localClass.getMethod("setContext", new Class[] { Context.class }).invoke(localObject2, new Object[] { localContext });
      localClass.getMethod("loadIcon", new Class[0]).invoke(localObject2, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      AdLog.e("LBAdController", "Error when loading StartAd - " + localException.getMessage());
      AdLog.printStackTrace("LBAdController", localException);
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.iappad.a
 * JD-Core Version:    0.5.3
 */