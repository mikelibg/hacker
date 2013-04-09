package com.revmob.ads.internal;

public enum LoadError
{
  static
  {
    INVALID_ACTIVITY = new LoadError("INVALID_ACTIVITY", 3);
    NOT_STARTED_SESSION = new LoadError("NOT_STARTED_SESSION", 4);
    LoadError[] arrayOfLoadError = new LoadError[5];
    arrayOfLoadError[0] = DEVICE_NOT_IDENTIFIED;
    arrayOfLoadError[1] = DOWNLOAD_ERROR;
    arrayOfLoadError[2] = PARSE_FAILED;
    arrayOfLoadError[3] = INVALID_ACTIVITY;
    arrayOfLoadError[4] = NOT_STARTED_SESSION;
    $VALUES = arrayOfLoadError;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.internal.LoadError
 * JD-Core Version:    0.5.3
 */