package com.parse;

import android.app.Activity;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.IBinder;
import com.parse.os.ParseAsyncTask;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Semaphore;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class PushService extends Service
{
  private static final String TAG = "com.parse.PushService";
  static int consecutiveFailures;
  private static int defaultPushPort;
  private static int delaySeconds;
  private static String pushServer = "push.parse.com";
  static Semaphore sleepSemaphore;
  static Socket socket;
  private Timer keepAliveTimer = null;
  private int pushPort;
  private ServiceState state = ServiceState.STOPPED;
  private ParseAsyncTask<Void, Void, String> task;

  static
  {
    defaultPushPort = 8253;
  }

  public static Set<String> getSubscriptions(Context paramContext)
  {
    monitorenter;
    try
    {
      Set localSet = ParsePushRouter.getSubscriptions(paramContext);
      monitorexit;
      return localSet;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  private void increaseDelay()
  {
    consecutiveFailures = 1 + consecutiveFailures;
    delaySeconds = (int)(delaySeconds * (1.5D + Math.random() / 2.0D));
    delaySeconds = Math.max(15, delaySeconds);
    delaySeconds = Math.min(delaySeconds, 300);
  }

  private void readInBackground(BufferedReader paramBufferedReader)
  {
    if (this.state == ServiceState.DESTRUCTING);
    while (true)
    {
      return;
      this.task = new ParseAsyncTask(paramBufferedReader, this)
      {
        private BufferedReader reader;

        // ERROR //
        protected String doInBackground(Void[] paramArrayOfVoid)
        {
        }

        protected void onPostExecute(String paramString)
        {
          if (PushService.this.state == PushService.ServiceState.DESTRUCTING)
            PushService.access$202(PushService.this, PushService.ServiceState.STOPPED);
          while (true)
          {
            return;
            if (paramString == null)
              PushService.this.readInBackground(null);
            JSONTokener localJSONTokener = new JSONTokener(paramString);
            try
            {
              JSONObject localJSONObject = new JSONObject(localJSONTokener);
              ParsePushRouter.routePush(this.val$finalService, localJSONObject);
              PushService.this.readInBackground(this.reader);
            }
            catch (JSONException localJSONException)
            {
              Parse.logE("com.parse.PushService", "bad json: " + paramString, localJSONException);
              PushService.this.readInBackground(this.reader);
            }
          }
        }
      };
      this.task.execute(new Void[0]);
    }
  }

  static void resetDelay()
  {
    delaySeconds = 0;
    consecutiveFailures = 0;
  }

  private void sendKeepAlive()
  {
    sendMessage("{}");
  }

  static boolean sendMessage(String paramString)
  {
    Socket localSocket = socket;
    int i = 0;
    if (localSocket == null);
    while (true)
    {
      return i;
      try
      {
        BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream(), "UTF-8"), 8192);
        Parse.logD("com.parse.PushService", "subscribing with " + paramString + " @ " + socket.getPort());
        localBufferedWriter.write(paramString + "\n");
        localBufferedWriter.flush();
        i = 1;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        Parse.logE("com.parse.PushService", "unsupported encoding", localUnsupportedEncodingException);
        i = 0;
      }
      catch (IOException localIOException)
      {
        Parse.logE("com.parse.PushService", "could not construct writer", localIOException);
        i = 0;
      }
    }
  }

  private static boolean sendSubscriptionInformation(Context paramContext)
  {
    monitorenter;
    try
    {
      boolean bool = sendMessage(ParsePushRouter.getPushRequestJSON(paramContext).toString());
      monitorexit;
      return bool;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  public static void setDefaultPushCallback(Context paramContext, Class<? extends Activity> paramClass)
  {
    String str = paramContext.getPackageName();
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(str, 0);
      setDefaultPushCallback(paramContext, paramClass, localApplicationInfo.icon);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Parse.logE("com.parse.PushService", "missing package " + str, localNameNotFoundException);
    }
  }

  public static void setDefaultPushCallback(Context paramContext, Class<? extends Activity> paramClass, int paramInt)
  {
    ParsePushRouter.setDefaultRoute(paramContext, paramClass, paramInt);
    if (paramClass != null)
      startService(paramContext);
    while (true)
    {
      return;
      if (ParsePushRouter.hasRoutes(paramContext))
        continue;
      Parse.logD("com.parse.PushService", "Shutting down push service. No remaining channels");
      paramContext.stopService(new Intent(paramContext, PushService.class));
    }
  }

  static void sleep(int paramInt)
    throws InterruptedException
  {
    Parse.logV("com.parse.PushService", "Sleeping " + paramInt + " ms");
    Semaphore localSemaphore = sleepSemaphore;
    if (localSemaphore == null)
      Thread.sleep(paramInt);
    while (true)
    {
      return;
      while (paramInt > 100)
      {
        localSemaphore.acquire(100);
        paramInt -= 100;
      }
      localSemaphore.acquire(paramInt);
    }
  }

  private static void startService(Context paramContext)
  {
    monitorenter;
    try
    {
      Parse.logD("com.parse.PushService", "ensuring push service is started");
      if (paramContext.startService(new Intent(paramContext, PushService.class)) == null)
        Parse.logE("com.parse.PushService", "Could not start the push service. Make sure that the XML tag <service android:name=\"com.parse.PushService\" /> is in your AndroidManifest.xml as a child of the <application> element.");
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  public static void startServiceIfRequired(Context paramContext)
  {
    if (!(ParsePushRouter.hasRoutes(paramContext)))
      Parse.logW("com.parse.PushService", "No known push routes; will not start push service");
    while (true)
    {
      return;
      startService(paramContext);
    }
  }

  //Recibe el objeto MyApplication,""  y MainActivity.class
  public static void subscribe(Context paramContext,String paramString, Class<? extends Activity> paramClass)
  {
    String str = paramContext.getPackageName();
    //Class for retrieving various kinds of information related to the application packages that are currently installed on the device. You can find this class through getPackageManager().
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
//Information you can retrieve about a particular application. This corresponds to information collected from the AndroidManifest.xml's <application> tag.
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(str, 0);
      subscribe(paramContext, paramString, paramClass, localApplicationInfo.icon);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Parse.logE("com.parse.PushService", "missing package " + str, localNameNotFoundException);
    }
  }

  public static void subscribe(Context paramContext, String paramString, Class<? extends Activity> paramClass, int paramInt)
  {
    monitorenter;
    try
    {//startService solo escribe en el log
      startService(paramContext);
      ParsePushRouter.addChannelRoute(paramContext, paramString, paramClass, paramInt);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  public static void unsubscribe(Context paramContext, String paramString)
  {
    monitorenter;
    try
    {
      ParsePushRouter.removeChannelRoute(paramContext, paramString);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  static void usePort(int paramInt)
  {
    defaultPushPort = paramInt;
  }

  static void useServer(String paramString)
  {
    pushServer = paramString;
  }

  public IBinder onBind(Intent paramIntent)
  {
    throw new IllegalArgumentException("You cannot bind directly to the PushService. Use PushService.subscribe instead.");
  }

  public void onCreate()
  {
    super.onCreate();
    if (Parse.applicationContext == null)
    {
      Parse.logE("com.parse.PushService", "The Parse push service cannot start because Parse.initialize has not yet been called. If you call Parse.initialize from an Activity's onCreate, that call should instead be in the Application.onCreate. Be sure your Application class is registered in your AndroidManifest.xml with the android:name property of your <application> tag.");
      this.state = ServiceState.ABORTING;
      stopSelf();
    }
    while (true)
    {
      return;
      this.state = ServiceState.RUNNING;
      Parse.logD("com.parse.PushService", "creating push service");
      this.pushPort = defaultPushPort;
      this.keepAliveTimer = new Timer("com.parse.PushService.keepAliveTimer", true);
      this.keepAliveTimer.schedule(new TimerTask()
      {
        public void run()
        {
          PushService.this.sendKeepAlive();
        }
      }
      , 1200000L, 1200000L);
      resetDelay();
      readInBackground(null);
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    Parse.logD("com.parse.PushService", "destroying push service");
    if (this.state == ServiceState.ABORTING)
      this.state = ServiceState.STOPPED;
    while (true)
    {
      return;
      this.task.cancel(true);
      this.keepAliveTimer.cancel();
      monitorenter;
      Socket localSocket;
      try
      {
        this.state = ServiceState.DESTRUCTING;
        localSocket = socket;
        socket = null;
        monitorexit;
        if (localSocket == null);
      }
      finally
      {
        monitorexit;
      }
    }
  }

  static enum ServiceState
  {
    static
    {
      ABORTING = new ServiceState("ABORTING", 1);
      DESTRUCTING = new ServiceState("DESTRUCTING", 2);
      RUNNING = new ServiceState("RUNNING", 3);
      ServiceState[] arrayOfServiceState = new ServiceState[4];
      arrayOfServiceState[0] = STOPPED;
      arrayOfServiceState[1] = ABORTING;
      arrayOfServiceState[2] = DESTRUCTING;
      arrayOfServiceState[3] = RUNNING;
      $VALUES = arrayOfServiceState;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.PushService
 * JD-Core Version:    0.5.3
 */