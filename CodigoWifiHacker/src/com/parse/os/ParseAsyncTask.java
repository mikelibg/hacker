package com.parse.os;

import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import com.parse.Parse;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class ParseAsyncTask<Params, Progress, Result>
{
  private static final int CORE_POOL_SIZE = 5;
  private static final int KEEP_ALIVE = 1;
  private static final String LOG_TAG = "com.parse.os.ParseAsyncTask";
  private static final int MAXIMUM_POOL_SIZE = 128;
  private static final int MESSAGE_POST_CANCEL = 3;
  private static final int MESSAGE_POST_PROGRESS = 2;
  private static final int MESSAGE_POST_RESULT = 1;
  private static final ThreadPoolExecutor sExecutor;
  private static final InternalHandler sHandler;
  private static final ThreadFactory sThreadFactory;
  private static final BlockingQueue<Runnable> sWorkQueue = new LinkedBlockingQueue(10);
  private final FutureTask<Result> mFuture = new FutureTask(???.mWorker)
  {
    protected void done()
    {
      Object localObject1;
      try
      {
        Object localObject2 = get();
        localObject1 = localObject2;
        ParseAsyncTask.sHandler.obtainMessage(1, new ParseAsyncTask.ParseAsyncTaskResult(ParseAsyncTask.this, new Object[] { localObject1 })).sendToTarget();
        label40: return;
      }
      catch (InterruptedException localInterruptedException)
      {
        int i = Parse.getLogLevel();
        localObject1 = null;
        if (5 > i);
        Log.w("com.parse.os.ParseAsyncTask", localInterruptedException);
        localObject1 = null;
      }
      catch (ExecutionException localExecutionException)
      {
        throw new RuntimeException("An error occured while executing doInBackground()", localExecutionException.getCause());
      }
      catch (CancellationException localCancellationException)
      {
        ParseAsyncTask.sHandler.obtainMessage(3, new ParseAsyncTask.ParseAsyncTaskResult(ParseAsyncTask.this, (Object[])null)).sendToTarget();
        break label40:
      }
      catch (Throwable localThrowable)
      {
        throw new RuntimeException("An error occured while executing doInBackground()", localThrowable);
      }
    }
  };
  private volatile Status mStatus = Status.PENDING;
  private final WorkerRunnable<Params, Result> mWorker = new WorkerRunnable()
  {
    public Result call()
      throws Exception
    {
      Process.setThreadPriority(10);
      return ParseAsyncTask.this.doInBackground(this.mParams);
    }
  };

  static
  {
    sThreadFactory = new ThreadFactory()
    {
      private final AtomicInteger mCount = new AtomicInteger(1);

      public Thread newThread(Runnable paramRunnable)
      {
        return new Thread(paramRunnable, "ParseAsyncTask #" + this.mCount.getAndIncrement());
      }
    };
    sExecutor = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, sWorkQueue, sThreadFactory);
    sHandler = new InternalHandler(null);
  }

  private void finish(Result paramResult)
  {
    if (isCancelled())
      paramResult = null;
    onPostExecute(paramResult);
    this.mStatus = Status.FINISHED;
  }

  public final boolean cancel(boolean paramBoolean)
  {
    return this.mFuture.cancel(paramBoolean);
  }

  protected abstract Result doInBackground(Params[] paramArrayOfParams);

  public final ParseAsyncTask<Params, Progress, Result> execute(Params[] paramArrayOfParams)
  {
    switch (4.$SwitchMap$com$parse$os$ParseAsyncTask$Status[this.mStatus.ordinal()])
    {
    default:
      this.mStatus = Status.RUNNING;
      onPreExecute();
      this.mWorker.mParams = paramArrayOfParams;
      sExecutor.execute(this.mFuture);
      return this;
    case 1:
      throw new IllegalStateException("Cannot execute task: the task is already running.");
    case 2:
    }
    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
  }

  public final Result get()
    throws InterruptedException, ExecutionException
  {
    return this.mFuture.get();
  }

  public final Result get(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    return this.mFuture.get(paramLong, paramTimeUnit);
  }

  public final Status getStatus()
  {
    return this.mStatus;
  }

  public final boolean isCancelled()
  {
    return this.mFuture.isCancelled();
  }

  protected void onCancelled()
  {
  }

  protected void onPostExecute(Result paramResult)
  {
  }

  protected void onPreExecute()
  {
  }

  protected void onProgressUpdate(Progress[] paramArrayOfProgress)
  {
  }

  protected final void publishProgress(Progress[] paramArrayOfProgress)
  {
    sHandler.obtainMessage(2, new ParseAsyncTaskResult(this, paramArrayOfProgress)).sendToTarget();
  }

  private static class InternalHandler extends Handler
  {
    public void handleMessage(Message paramMessage)
    {
      ParseAsyncTask.ParseAsyncTaskResult localParseAsyncTaskResult = (ParseAsyncTask.ParseAsyncTaskResult)paramMessage.obj;
      switch (paramMessage.what)
      {
      default:
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        return;
        localParseAsyncTaskResult.mTask.finish(localParseAsyncTaskResult.mData[0]);
        continue;
        localParseAsyncTaskResult.mTask.onProgressUpdate(localParseAsyncTaskResult.mData);
        continue;
        localParseAsyncTaskResult.mTask.onCancelled();
      }
    }
  }

  private static class ParseAsyncTaskResult<Data>
  {
    final Data[] mData;
    final ParseAsyncTask mTask;

    ParseAsyncTaskResult(ParseAsyncTask paramParseAsyncTask, Data[] paramArrayOfData)
    {
      this.mTask = paramParseAsyncTask;
      this.mData = paramArrayOfData;
    }
  }

  public static enum Status
  {
    static
    {
      FINISHED = new Status("FINISHED", 2);
      Status[] arrayOfStatus = new Status[3];
      arrayOfStatus[0] = PENDING;
      arrayOfStatus[1] = RUNNING;
      arrayOfStatus[2] = FINISHED;
      $VALUES = arrayOfStatus;
    }
  }

  private static abstract class WorkerRunnable<Params, Result>
    implements Callable<Result>
  {
    Params[] mParams;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.os.ParseAsyncTask
 * JD-Core Version:    0.5.3
 */