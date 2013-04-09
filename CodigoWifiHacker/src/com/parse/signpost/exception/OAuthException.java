package com.parse.signpost.exception;

public abstract class OAuthException extends Exception
{
  public OAuthException(String paramString)
  {
    super(paramString);
  }

  public OAuthException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public OAuthException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.signpost.exception.OAuthException
 * JD-Core Version:    0.5.3
 */