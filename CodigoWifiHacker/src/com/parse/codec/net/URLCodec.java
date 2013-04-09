package com.parse.codec.net;

import com.parse.codec.BinaryDecoder;
import com.parse.codec.BinaryEncoder;
import com.parse.codec.DecoderException;
import com.parse.codec.EncoderException;
import com.parse.codec.StringDecoder;
import com.parse.codec.StringEncoder;
import com.parse.codec.binary.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.BitSet;

public class URLCodec
  implements BinaryEncoder, BinaryDecoder, StringEncoder, StringDecoder
{
  protected static final byte ESCAPE_CHAR = 37;
  static final int RADIX = 16;
  protected static final BitSet WWW_FORM_URL = new BitSet(256);
  protected String charset;

  static
  {
    for (int i = 97; i <= 122; ++i)
      WWW_FORM_URL.set(i);
    for (int j = 65; j <= 90; ++j)
      WWW_FORM_URL.set(j);
    for (int k = 48; k <= 57; ++k)
      WWW_FORM_URL.set(k);
    WWW_FORM_URL.set(45);
    WWW_FORM_URL.set(95);
    WWW_FORM_URL.set(46);
    WWW_FORM_URL.set(42);
    WWW_FORM_URL.set(32);
  }

  public URLCodec()
  {
    this("UTF-8");
  }

  public URLCodec(String paramString)
  {
    this.charset = paramString;
  }

  public static final byte[] decodeUrl(byte[] paramArrayOfByte)
    throws DecoderException
  {
    if (paramArrayOfByte == null);
    ByteArrayOutputStream localByteArrayOutputStream;
    for (byte[] arrayOfByte = null; ; arrayOfByte = localByteArrayOutputStream.toByteArray())
    {
      return arrayOfByte;
      localByteArrayOutputStream = new ByteArrayOutputStream();
      int i = 0;
      label18: if (i >= paramArrayOfByte.length)
        continue;
      int j = paramArrayOfByte[i];
      if (j == 43)
        localByteArrayOutputStream.write(32);
      while (true)
      {
        ++i;
        break label18:
        if (j == 37)
        {
          int k = i + 1;
          try
          {
            int l = Utils.digit16(paramArrayOfByte[k]);
            i = k + 1;
            localByteArrayOutputStream.write((char)(Utils.digit16(paramArrayOfByte[i]) + (l << 4)));
          }
          catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
          {
            throw new DecoderException("Invalid URL encoding: ", localArrayIndexOutOfBoundsException);
          }
        }
        localByteArrayOutputStream.write(j);
      }
    }
  }

  public static final byte[] encodeUrl(BitSet paramBitSet, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null);
    ByteArrayOutputStream localByteArrayOutputStream;
    for (byte[] arrayOfByte = null; ; arrayOfByte = localByteArrayOutputStream.toByteArray())
    {
      return arrayOfByte;
      if (paramBitSet == null)
        paramBitSet = WWW_FORM_URL;
      localByteArrayOutputStream = new ByteArrayOutputStream();
      int i = 0;
      label28: if (i >= paramArrayOfByte.length)
        continue;
      int j = paramArrayOfByte[i];
      if ((j >= 0) || (paramBitSet.get(j += 256)))
      {
        if (j == 32)
          j = 43;
        localByteArrayOutputStream.write(j);
      }
      while (true)
      {
        ++i;
        break label28:
        localByteArrayOutputStream.write(37);
        int k = Character.toUpperCase(Character.forDigit(0xF & j >> 4, 16));
        int l = Character.toUpperCase(Character.forDigit(j & 0xF, 16));
        localByteArrayOutputStream.write(k);
        localByteArrayOutputStream.write(l);
      }
    }
  }

  public Object decode(Object paramObject)
    throws DecoderException
  {
    if (paramObject == null);
    for (Object localObject = null; ; localObject = decode((String)paramObject))
    {
      while (true)
      {
        return localObject;
        if (!(paramObject instanceof byte[]))
          break;
        localObject = decode((byte[])(byte[])paramObject);
      }
      if (!(paramObject instanceof String))
        break;
    }
    throw new DecoderException("Objects of type " + paramObject.getClass().getName() + " cannot be URL decoded");
  }

  public String decode(String paramString)
    throws DecoderException
  {
    Object localObject;
    if (paramString == null)
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        String str = decode(paramString, getDefaultCharset());
        localObject = str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new DecoderException(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
      }
    }
  }

  public String decode(String paramString1, String paramString2)
    throws DecoderException, UnsupportedEncodingException
  {
    if (paramString1 == null);
    for (String str = null; ; str = new String(decode(StringUtils.getBytesUsAscii(paramString1)), paramString2))
      return str;
  }

  public byte[] decode(byte[] paramArrayOfByte)
    throws DecoderException
  {
    return decodeUrl(paramArrayOfByte);
  }

  public Object encode(Object paramObject)
    throws EncoderException
  {
    if (paramObject == null);
    for (Object localObject = null; ; localObject = encode((String)paramObject))
    {
      while (true)
      {
        return localObject;
        if (!(paramObject instanceof byte[]))
          break;
        localObject = encode((byte[])(byte[])paramObject);
      }
      if (!(paramObject instanceof String))
        break;
    }
    throw new EncoderException("Objects of type " + paramObject.getClass().getName() + " cannot be URL encoded");
  }

  public String encode(String paramString)
    throws EncoderException
  {
    Object localObject;
    if (paramString == null)
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        String str = encode(paramString, getDefaultCharset());
        localObject = str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new EncoderException(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
      }
    }
  }

  public String encode(String paramString1, String paramString2)
    throws UnsupportedEncodingException
  {
    if (paramString1 == null);
    for (String str = null; ; str = StringUtils.newStringUsAscii(encode(paramString1.getBytes(paramString2))))
      return str;
  }

  public byte[] encode(byte[] paramArrayOfByte)
  {
    return encodeUrl(WWW_FORM_URL, paramArrayOfByte);
  }

  public String getDefaultCharset()
  {
    return this.charset;
  }

  public String getEncoding()
  {
    return this.charset;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.net.URLCodec
 * JD-Core Version:    0.5.3
 */