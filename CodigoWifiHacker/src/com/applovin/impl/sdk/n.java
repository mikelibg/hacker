package com.applovin.impl.sdk;

import com.applovin.sdk.Logger;
import java.io.InputStream;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

class n extends Thread
{
  n(l paraml, String paramString, AtomicReference paramAtomicReference, CountDownLatch paramCountDownLatch)
  {
    super(paramString);
  }

  public void run()
  {
    try
    {
      String str = "";
      InputStream localInputStream = new ProcessBuilder(new String[] { "/system/bin/cat", "/proc/cpuinfo" }).start().getInputStream();
      byte[] arrayOfByte = new byte[1024];
      for (int i = localInputStream.read(arrayOfByte); i > 0; i = localInputStream.read(arrayOfByte))
        str = str + new String(arrayOfByte, 0, i);
      localInputStream.close();
      this.a.set(str);
      return;
    }
    catch (Exception localException)
    {
      this.c.d.e("DataCollector", "Unable to collect CPU into", localException);
    }
    finally
    {
      this.b.countDown();
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.n
 * JD-Core Version:    0.5.3
 */