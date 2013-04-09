package com.applovin.impl.sdk;

import android.util.Log;
import com.applovin.sdk.Logger;
import java.io.IOException;
import java.net.BindException;
import java.net.ServerSocket;
import java.net.Socket;

class ae extends Thread
{
  private final AppLovinSdkImpl a;
  private final Logger b;
  private ServerSocket c = null;
  private volatile boolean d = false;

  ae(AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    this.a = paramAppLovinSdkImpl;
    this.b = paramAppLovinSdkImpl.getLogger();
    setName("AppLovinSdk:WebServer");
  }

  public void run()
  {
    this.b.d("AdWebServer", "Staring applovin web server...");
    int i = ((Integer)this.a.a(w.A)).intValue();
    try
    {
      this.c = new ServerSocket(i);
      do
        while (true)
        {
          if ((this.c == null) || (this.d))
            return;
          try
          {
            this.b.d("AdWebServer", "Waiting for a client on " + i + "...");
            Socket localSocket = this.c.accept();
            this.b.d("AdWebServer", "Client accepted, rendering request...");
            this.a.a().a(new H(localSocket, this.a), N.a);
          }
          catch (IOException localIOException2)
          {
          }
        }
      while (this.d);
      this.b.e("AdWebServer", "Web server caught IO error", localIOException2);
    }
    catch (BindException localBindException)
    {
      Log.w("AdWebServer", "Unable to bind to port " + i + ", a server must be already running");
    }
    catch (IOException localIOException1)
    {
      Log.w("AdWebServer", "Unable to create server socket", localIOException1);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.ae
 * JD-Core Version:    0.5.3
 */