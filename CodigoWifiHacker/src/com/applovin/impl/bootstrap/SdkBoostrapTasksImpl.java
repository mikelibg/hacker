package com.applovin.impl.bootstrap;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.applovin.impl.sdk.ad;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.bootstrap.SdkBoostrapTasks;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SdkBoostrapTasksImpl
  implements SdkBoostrapTasks
{
  private boolean a = true;

  private void a(String paramString)
  {
    a(paramString, null);
  }

  private void a(String paramString, Throwable paramThrowable)
  {
    if (!(this.a))
      return;
    Log.i("AppLovinSdk", "[Boostrap] " + paramString, paramThrowable);
  }

  private static String b(InputStream paramInputStream, File paramFile)
  {
    MessageDigest localMessageDigest;
    FileOutputStream localFileOutputStream;
    try
    {
      localMessageDigest = MessageDigest.getInstance("SHA1");
      try
      {
        localFileOutputStream = new FileOutputStream(paramFile);
      }
      finally
      {
        try
        {
          byte[] arrayOfByte = new byte[51200];
          int i = paramInputStream.read(arrayOfByte, 0, arrayOfByte.length);
          if (i < 0)
            break label91;
          localFileOutputStream.write(arrayOfByte, 0, i);
          localMessageDigest.update(arrayOfByte, 0, i);
        }
        finally
        {
          localFileOutputStream.close();
        }
        paramInputStream.close();
      }
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new RuntimeException("Programming error: unsupported algorithm: SHA1");
    }
    label91: localFileOutputStream.close();
    paramInputStream.close();
    String str = ad.a(localMessageDigest.digest());
    return str;
  }

  public void startUpdateDownload(Context paramContext)
  {
    this.a = AppLovinSdkUtils.isVerboseLoggingEnabled(paramContext);
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("applovin.sdk.boostrap", 0);
    long l1 = System.currentTimeMillis();
    long l2 = localSharedPreferences.getLong("NextAutoupdateTime", 0L);
    if ((l2 != 0L) && (l1 <= l2))
      return;
    new b(this, paramContext).start();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.bootstrap.SdkBoostrapTasksImpl
 * JD-Core Version:    0.5.3
 */