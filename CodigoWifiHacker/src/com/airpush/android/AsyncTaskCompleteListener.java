package com.airpush.android;

abstract interface AsyncTaskCompleteListener<T>
{
  public abstract void lauchNewHttpTask();

  public abstract void onTaskComplete(T paramT);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.airpush.android.AsyncTaskCompleteListener
 * JD-Core Version:    0.5.3
 */