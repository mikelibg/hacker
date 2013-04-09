package com.applovin.impl.sdk;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

final class k extends Thread
{
  k(String paramString, Context paramContext, AtomicBoolean paramAtomicBoolean, CountDownLatch paramCountDownLatch)
  {
    super(paramString);
  }

  public void run()
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)this.a.getSystemService("connectivity");
    if (localConnectivityManager != null)
    {
      NetworkInfo localNetworkInfo1 = localConnectivityManager.getNetworkInfo(0);
      if ((localNetworkInfo1 == null) || (!(localNetworkInfo1.isConnected())))
        break label50;
      this.b.set(true);
    }
    while (true)
    {
      this.c.countDown();
      return;
      label50: NetworkInfo localNetworkInfo2 = localConnectivityManager.getNetworkInfo(1);
      if ((localNetworkInfo2 == null) || (!(localNetworkInfo2.isConnected())))
        continue;
      this.b.set(true);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.k
 * JD-Core Version:    0.5.3
 */