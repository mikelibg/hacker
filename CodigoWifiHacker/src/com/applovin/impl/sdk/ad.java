package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinSdkUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ad extends AppLovinSdkUtils
{
  private static final char[] a = "0123456789abcdef".toCharArray();
  private static final char[] b = "-'".toCharArray();

  public static String a(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 4));
    for (String str = paramString.substring(-4 + paramString.length()); ; str = "NOKEY")
      return str;
  }

  public static String a(String paramString, AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    return a(paramString, Integer.valueOf(-1), (String)paramAppLovinSdkImpl.a(w.u));
  }

  private static String a(String paramString1, Integer paramInteger, String paramString2)
  {
    if (paramString2 == null)
      throw new IllegalArgumentException("No algorithm specified");
    if ((paramString1 == null) || (paramString1.length() < 1))
      paramString1 = "";
    while (true)
    {
      return paramString1;
      if ((paramString2.length() < 1) || ("none".equals(paramString2)))
        continue;
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance(paramString2);
        localMessageDigest.update(paramString1.getBytes("UTF-8"));
        paramString1 = a(localMessageDigest.digest());
        if ((paramString1 != null) && (paramInteger.intValue() > 0));
        String str = paramString1.substring(0, Math.min(paramInteger.intValue(), paramString1.length()));
        paramString1 = str;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        throw new RuntimeException("Unknown algorithm \"" + paramString2 + "\"", localNoSuchAlgorithmException);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new RuntimeException("Programming error: UTF-8 is not know encoding", localUnsupportedEncodingException);
      }
    }
  }

  static String a(Collection paramCollection, int paramInt)
  {
    return a(paramCollection, ",", paramInt);
  }

  static String a(Collection paramCollection, String paramString, int paramInt)
  {
    if (paramString == null)
      throw new IllegalArgumentException("No glue specified");
    String str1;
    if ((paramCollection == null) || (paramCollection.size() < 1))
    {
      str1 = "";
      label31: return str1;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = paramCollection.iterator();
    int i = 0;
    while (true)
    {
      String str2;
      if (localIterator.hasNext())
      {
        str2 = (String)localIterator.next();
        if (i < paramInt)
          break label117;
      }
      if (localStringBuffer.length() > paramString.length())
        localStringBuffer.setLength(localStringBuffer.length() - paramString.length());
      str1 = localStringBuffer.toString();
      break label31:
      label117: ++i;
      localStringBuffer.append(str2).append(paramString);
    }
  }

  static String a(Map paramMap)
  {
    if ((paramMap == null) || (paramMap.isEmpty()));
    StringBuilder localStringBuilder;
    for (String str = ""; ; str = localStringBuilder.toString())
    {
      return str;
      localStringBuilder = new StringBuilder();
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (localStringBuilder.length() > 0)
          localStringBuilder.append("&");
        localStringBuilder.append(localEntry.getKey()).append('=').append(localEntry.getValue());
      }
    }
  }

  public static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      throw new IllegalArgumentException("No data specified");
    char[] arrayOfChar = new char[2 * paramArrayOfByte.length];
    for (int i = 0; i < paramArrayOfByte.length; ++i)
    {
      arrayOfChar[(i * 2)] = a[((0xF0 & paramArrayOfByte[i]) >>> 4)];
      arrayOfChar[(1 + i * 2)] = a[(0xF & paramArrayOfByte[i])];
    }
    return new String(arrayOfChar);
  }

  private static boolean a(char paramChar)
  {
    for (int i = 0; ; ++i)
    {
      int j = b.length;
      int k = 0;
      if (i < j)
      {
        if (paramChar != b[i])
          continue;
        k = 1;
      }
      return k;
    }
  }

  public static boolean a(y paramy, AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    return a(paramy, paramAppLovinSdkImpl.getSettingsManager());
  }

  public static boolean a(y paramy, z paramz)
  {
    if (System.currentTimeMillis() > 1000L * ((Long)paramz.a(paramy)).longValue());
    for (int i = 1; ; i = 0)
      return i;
  }

  public static String b(String paramString)
  {
    if ((paramString == null) || (paramString.length() < 2))
      label12: return paramString;
    int i = paramString.length();
    int j = 0;
    if (j < paramString.length())
    {
      label21: char c = paramString.charAt(j);
      if ((Character.isLetterOrDigit(c)) || (a(c)));
    }
    while (true)
    {
      paramString = paramString.substring(0, j);
      break label12:
      ++j;
      break label21:
      j = i;
    }
  }

  public static String b(String paramString, AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    return a(paramString, (Integer)paramAppLovinSdkImpl.a(w.v), (String)paramAppLovinSdkImpl.a(w.u));
  }

  public static String c(String paramString)
  {
    if ((paramString == null) || (paramString.length() < 1));
    for (String str = ""; ; str = paramString.trim().toLowerCase())
      return str;
  }

  static String d(String paramString)
  {
    try
    {
      String str = URLEncoder.encode(paramString, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new UnsupportedOperationException(localUnsupportedEncodingException);
    }
  }

  static boolean e(String paramString)
  {
    int i = 1;
    if ((paramString != null) && (paramString.length() > i));
    while (true)
    {
      return i;
      i = 0;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.ad
 * JD-Core Version:    0.5.3
 */