package com.google.mygson.stream;

import java.io.IOException;

public final class MalformedJsonException extends IOException
{
  private static final long serialVersionUID = 1L;

  public MalformedJsonException(String paramString)
  {
    super(paramString);
  }

  public MalformedJsonException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    initCause(paramThrowable);
  }

  public MalformedJsonException(Throwable paramThrowable)
  {
    initCause(paramThrowable);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.stream.MalformedJsonException
 * JD-Core Version:    0.5.3
 */