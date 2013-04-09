package com.parse;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import org.json.JSONException;
import org.json.JSONObject;

class ParseCommandCache
{
  private static final String TAG = "com.parse.ParseCommandCache";
  private static int filenameCounter = 0;
  private static Object lock = new Object();
  private File cachePath;
  private HashMap<ParseCommand, ParseCallback<Void>> callbacksForCommands = new HashMap();
  private HashMap<File, ParseCommand> commandsInCache = new HashMap();
  private boolean connected = false;
  private Logger log;
  private int maxCacheSizeBytes = 10485760;
  private boolean running = false;
  private Object runningLock;
  private boolean shouldStop = false;
  private TestHelper testHelper = null;
  private int timeoutMaxRetries = 5;
  private double timeoutRetryWaitSeconds = 600.0D;

  public ParseCommandCache(Context paramContext)
  {
    lock = new Object();
    this.runningLock = new Object();
    this.log = Logger.getLogger("com.parse.ParseCommandCache");
    this.cachePath = new File(Parse.getParseDir(), "CommandCache");
    this.cachePath.mkdirs();
    if (!(Parse.hasPermission("android.permission.ACCESS_NETWORK_STATE")));
    while (true)
    {
      return;
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager != null)
      {
        NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
        boolean bool1 = false;
        if (localNetworkInfo != null)
        {
          boolean bool2 = localNetworkInfo.isConnected();
          bool1 = false;
          if (bool2)
            bool1 = true;
        }
        //
        setConnected(bool1);
        paramContext.registerReceiver(new BroadcastReceiver(localConnectivityManager)
        {
          public void onReceive(Context paramContext, Intent paramIntent)
          {
            if (paramIntent.getBooleanExtra("noConnectivity", false))
              ParseCommandCache.this.setConnected(false);
            while (true)
            {
              return;
              NetworkInfo localNetworkInfo = this.val$connectivityManager.getActiveNetworkInfo();
              ParseCommandCache localParseCommandCache = ParseCommandCache.this;
              boolean bool1 = false;
              if (localNetworkInfo != null)
              {
                boolean bool2 = localNetworkInfo.isConnected();
                bool1 = false;
                if (bool2)
                  bool1 = true;
              }
              localParseCommandCache.setConnected(bool1);
            }
          }
        }
        , new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
      }
      resume();
    }
  }

  // ERROR //
  private void maybeRunAllCommandsNow(int paramInt)
  {
  }

  // ERROR //
  private void removeFile(File paramFile)
  {
  }

  // ERROR //
  private void runEventuallyInternal(ParseCommand paramParseCommand, ParseCallback<Void> paramParseCallback, boolean paramBoolean, ParseObject paramParseObject)
  {
  }

  // ERROR //
  private void runLoop()
  {
  }

  public void clear()
  {
    synchronized (lock)
    {
      File[] arrayOfFile = this.cachePath.listFiles();
      if (arrayOfFile == null)
        return;
      int i = arrayOfFile.length;
      for (int j = 0; j < i; ++j)
        removeFile(arrayOfFile[j]);
      this.commandsInCache.clear();
    }
  }

  public TestHelper getTestHelper()
  {
    if (this.testHelper == null)
      this.testHelper = new TestHelper(null);
    return this.testHelper;
  }

  public void pause()
  {
    synchronized (this.runningLock)
    {
      if (this.running);
      synchronized (lock)
      {
        this.shouldStop = true;
        lock.notify();
        while (true)
        {
          boolean bool = this.running;
          if (!(bool))
            break label73;
          try
          {
            this.runningLock.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
          }
        }
      }
    }
    label73: monitorexit;
  }

  public int pendingCount()
  {
    synchronized (lock)
    {
      String[] arrayOfString = this.cachePath.list();
      if (arrayOfString == null)
      {
        i = 0;
        return i;
      }
      int i = arrayOfString.length;
    }
  }

  public void resume()
  {
    synchronized (this.runningLock)
    {
      if (!(this.running))
        new Thread("ParseCommandCache.runLoop()")
        {
          public void run()
          {
            ParseCommandCache.this.runLoop();
          }
        }
        .start();
    }
  }

  public void runEventually(ParseCommand paramParseCommand, ParseCallback<Void> paramParseCallback, ParseObject paramParseObject)
  {
    Parse.requirePermission("android.permission.ACCESS_NETWORK_STATE");
    runEventuallyInternal(paramParseCommand, paramParseCallback, false, paramParseObject);
  }

  public void setConnected(boolean paramBoolean)
  {
    synchronized (lock)
    {
      if (this.connected != paramBoolean)
      {
        this.connected = paramBoolean;
        if (paramBoolean)
          lock.notify();
      }
      return;
    }
  }

  public void setMaxCacheSizeBytes(int paramInt)
  {
    synchronized (lock)
    {
      this.maxCacheSizeBytes = paramInt;
      return;
    }
  }

  public void setTimeoutMaxRetries(int paramInt)
  {
    synchronized (lock)
    {
      this.timeoutMaxRetries = paramInt;
      return;
    }
  }

  public void setTimeoutRetryWaitSeconds(double paramDouble)
  {
    synchronized (lock)
    {
      this.timeoutRetryWaitSeconds = paramDouble;
      return;
    }
  }

  void simulateReboot()
  {
    synchronized (lock)
    {
      this.commandsInCache.clear();
      this.callbacksForCommands.clear();
      return;
    }
  }

  public class TestHelper
  {
    public static final int COMMAND_ENQUEUED = 3;
    public static final int COMMAND_FAILED = 2;
    public static final int COMMAND_NOT_ENQUEUED = 4;
    public static final int COMMAND_SUCCESSFUL = 1;
    private static final int MAX_EVENTS = 1000;

    @SuppressLint({"UseSparseArrays"})
    private HashMap<Integer, Semaphore> events = new HashMap();

    private TestHelper()
    {
      clear();
    }

    public void clear()
    {
      this.events.clear();
      this.events.put(Integer.valueOf(1), new Semaphore(1000));
      this.events.put(Integer.valueOf(2), new Semaphore(1000));
      this.events.put(Integer.valueOf(3), new Semaphore(1000));
      this.events.put(Integer.valueOf(4), new Semaphore(1000));
      Iterator localIterator = this.events.keySet().iterator();
      while (localIterator.hasNext())
      {
        int i = ((Integer)localIterator.next()).intValue();
        ((Semaphore)this.events.get(Integer.valueOf(i))).acquireUninterruptibly(1000);
      }
    }

    public void notify(int paramInt)
    {
      ((Semaphore)this.events.get(Integer.valueOf(paramInt))).release();
    }

    public int unexpectedEvents()
    {
      int i = 0;
      Iterator localIterator = this.events.keySet().iterator();
      while (localIterator.hasNext())
      {
        int j = ((Integer)localIterator.next()).intValue();
        i += ((Semaphore)this.events.get(Integer.valueOf(j))).availablePermits();
      }
      return i;
    }

    public boolean waitFor(int paramInt)
    {
      boolean bool1;
      try
      {
        boolean bool2 = ((Semaphore)this.events.get(Integer.valueOf(paramInt))).tryAcquire(5000L, TimeUnit.MILLISECONDS);
        bool1 = bool2;
        return bool1;
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
        bool1 = false;
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ParseCommandCache
 * JD-Core Version:    0.5.3
 */