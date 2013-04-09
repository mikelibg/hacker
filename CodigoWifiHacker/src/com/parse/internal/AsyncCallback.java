package com.parse.internal;

public abstract interface AsyncCallback
{
  public abstract void onCancel();

  public abstract void onFailure(Throwable paramThrowable);

  public abstract void onSuccess(Object paramObject);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.internal.AsyncCallback
 * JD-Core Version:    0.5.3
 */