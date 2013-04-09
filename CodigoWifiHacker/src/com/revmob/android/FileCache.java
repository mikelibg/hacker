package com.revmob.android;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class FileCache
{
  private static final String CACHE_DIR = "RevMob";
  private File cacheDir;

  public FileCache(Context paramContext)
  {
    if (Environment.getExternalStorageState().equals("mounted"));
    for (this.cacheDir = new File(Environment.getExternalStorageDirectory(), "RevMob"); ; this.cacheDir = paramContext.getCacheDir())
    {
      if (!(this.cacheDir.exists()))
        this.cacheDir.mkdirs();
      return;
    }
  }

  public static void copyStream(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    try
    {
      byte[] arrayOfByte = new byte[1024];
      int i = paramInputStream.read(arrayOfByte, 0, 1024);
      if (i == -1)
        return;
      paramOutputStream.write(arrayOfByte, 0, i);
    }
    catch (Exception localException)
    {
    }
  }

  public File getFile(String paramString)
  {
    return new File(this.cacheDir, paramString);
  }

  public void write(File paramFile, InputStream paramInputStream)
  {
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
      copyStream(paramInputStream, localFileOutputStream);
      localFileOutputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.android.FileCache
 * JD-Core Version:    0.5.3
 */