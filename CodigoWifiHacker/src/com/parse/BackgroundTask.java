package com.parse;

import android.os.AsyncTask;

abstract class BackgroundTask<T> extends AsyncTask<Void, Void, Void>
{
  private ParseCallback<T> callback;
  private ParseException exception = null;
  private T result = null;

  BackgroundTask(ParseCallback<T> paramParseCallback)
  {
    this.callback = paramParseCallback;
  }

  static int executeTask(BackgroundTask<?> paramBackgroundTask)
  {
    paramBackgroundTask.execute(new Void[0]);
    return 0;
  }

  protected Void doInBackground(Void[] paramArrayOfVoid)
  {
    try
    {
      this.result = run();
      return null;
    }
    catch (ParseException localParseException)
    {
      this.exception = localParseException;
    }
  }

  void executeInThisThread()
  {
    doInBackground(new Void[0]);
    onPostExecute(null);
  }

  protected void onPostExecute(Void paramVoid)
  {
    if (this.callback == null)
      return;
    this.callback.internalDone(this.result, this.exception);
  }

  public abstract T run()
    throws ParseException;
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.BackgroundTask
 * JD-Core Version:    0.5.3
 */