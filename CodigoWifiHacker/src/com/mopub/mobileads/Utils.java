package com.mopub.mobileads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Utils
{
  public static String sha1(String paramString)
  {
    String str1;
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
      localMessageDigest.update(paramString.getBytes());
      byte[] arrayOfByte = localMessageDigest.digest();
      StringBuffer localStringBuffer = new StringBuffer();
      for (int i = 0; i < arrayOfByte.length; ++i)
        localStringBuffer.append(Integer.toHexString(0x100 | 0xFF & arrayOfByte[i]).substring(1));
      String str2 = localStringBuffer.toString();
      str1 = str2;
      return str1;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      str1 = "";
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.Utils
 * JD-Core Version:    0.5.3
 */