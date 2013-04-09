package com.parse.codec.net;

import com.parse.codec.DecoderException;
import com.parse.codec.EncoderException;
import com.parse.codec.binary.StringUtils;
import java.io.UnsupportedEncodingException;

abstract class RFC1522Codec
{
  protected static final String POSTFIX = "?=";
  protected static final String PREFIX = "=?";
  protected static final char SEP = 63;

  protected String decodeText(String paramString)
    throws DecoderException, UnsupportedEncodingException
  {
    if (paramString == null);
    String str1;
    int i1;
    for (String str3 = null; ; str3 = new String(doDecoding(StringUtils.getBytesUsAscii(paramString.substring(i1, paramString.indexOf(63, i1)))), str1))
    {
      return str3;
      if ((!(paramString.startsWith("=?"))) || (!(paramString.endsWith("?="))))
        throw new DecoderException("RFC 1522 violation: malformed encoded content");
      int i = -2 + paramString.length();
      int j = paramString.indexOf(63, 2);
      if (j == i)
        throw new DecoderException("RFC 1522 violation: charset token not found");
      str1 = paramString.substring(2, j);
      if (str1.equals(""))
        throw new DecoderException("RFC 1522 violation: charset not specified");
      int k = j + 1;
      int l = paramString.indexOf(63, k);
      if (l == i)
        throw new DecoderException("RFC 1522 violation: encoding token not found");
      String str2 = paramString.substring(k, l);
      if (!(getEncoding().equalsIgnoreCase(str2)))
        throw new DecoderException("This codec cannot decode " + str2 + " encoded content");
      i1 = l + 1;
    }
  }

  protected abstract byte[] doDecoding(byte[] paramArrayOfByte)
    throws DecoderException;

  protected abstract byte[] doEncoding(byte[] paramArrayOfByte)
    throws EncoderException;

  protected String encodeText(String paramString1, String paramString2)
    throws EncoderException, UnsupportedEncodingException
  {
    if (paramString1 == null);
    StringBuffer localStringBuffer;
    for (String str = null; ; str = localStringBuffer.toString())
    {
      return str;
      localStringBuffer = new StringBuffer();
      localStringBuffer.append("=?");
      localStringBuffer.append(paramString2);
      localStringBuffer.append('?');
      localStringBuffer.append(getEncoding());
      localStringBuffer.append('?');
      localStringBuffer.append(StringUtils.newStringUsAscii(doEncoding(paramString1.getBytes(paramString2))));
      localStringBuffer.append("?=");
    }
  }

  protected abstract String getEncoding();
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.net.RFC1522Codec
 * JD-Core Version:    0.5.3
 */