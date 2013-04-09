package com.parse.codec.net;

import com.parse.codec.DecoderException;
import com.parse.codec.EncoderException;
import com.parse.codec.StringDecoder;
import com.parse.codec.StringEncoder;
import com.parse.codec.binary.Base64;
import java.io.UnsupportedEncodingException;

public class BCodec extends RFC1522Codec
  implements StringEncoder, StringDecoder
{
  private final String charset;

  public BCodec()
  {
    this("UTF-8");
  }

  public BCodec(String paramString)
  {
    this.charset = paramString;
  }

  public Object decode(Object paramObject)
    throws DecoderException
  {
    if (paramObject == null);
    for (String str = null; ; str = decode((String)paramObject))
    {
      return str;
      if (!(paramObject instanceof String))
        break;
    }
    throw new DecoderException("Objects of type " + paramObject.getClass().getName() + " cannot be decoded using BCodec");
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
        String str = decodeText(paramString);
        localObject = str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new DecoderException(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
      }
    }
  }

  protected byte[] doDecoding(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null);
    for (byte[] arrayOfByte = null; ; arrayOfByte = Base64.decodeBase64(paramArrayOfByte))
      return arrayOfByte;
  }

  protected byte[] doEncoding(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null);
    for (byte[] arrayOfByte = null; ; arrayOfByte = Base64.encodeBase64(paramArrayOfByte))
      return arrayOfByte;
  }

  public Object encode(Object paramObject)
    throws EncoderException
  {
    if (paramObject == null);
    for (String str = null; ; str = encode((String)paramObject))
    {
      return str;
      if (!(paramObject instanceof String))
        break;
    }
    throw new EncoderException("Objects of type " + paramObject.getClass().getName() + " cannot be encoded using BCodec");
  }

  public String encode(String paramString)
    throws EncoderException
  {
    if (paramString == null);
    for (String str = null; ; str = encode(paramString, getDefaultCharset()))
      return str;
  }

  public String encode(String paramString1, String paramString2)
    throws EncoderException
  {
    Object localObject;
    if (paramString1 == null)
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        String str = encodeText(paramString1, paramString2);
        localObject = str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new EncoderException(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
      }
    }
  }

  public String getDefaultCharset()
  {
    return this.charset;
  }

  protected String getEncoding()
  {
    return "B";
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.net.BCodec
 * JD-Core Version:    0.5.3
 */