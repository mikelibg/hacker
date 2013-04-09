package com.applovin.sdk.bootstrap;

import android.util.Log;
import dalvik.system.DexClassLoader;
import java.io.File;

public class SdkClassLoader extends DexClassLoader
{
  public SdkClassLoader(File paramFile1, File paramFile2, ClassLoader paramClassLoader)
  {
    super(paramFile1.getAbsolutePath(), paramFile2.getAbsolutePath(), null, paramClassLoader);
  }

  private boolean a(String paramString)
  {
    return paramString.startsWith("com.applovin.impl.");
  }

  protected Class loadClass(String paramString, boolean paramBoolean)
  {
    if (a(paramString))
      Log.d("AppLovinSdk", "Loading SDK implementation class: " + paramString);
    Class localClass1;
    try
    {
      Class localClass2 = findClass(paramString);
      localClass1 = localClass2;
      return localClass1;
    }
    catch (Exception localException)
    {
      Log.w("AppLovinSdk", "Unable to load SDK implementation class: " + paramString, localException);
      localClass1 = getParent().loadClass(paramString);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.sdk.bootstrap.SdkClassLoader
 * JD-Core Version:    0.5.3
 */