package com.parse.codec.net;

import com.parse.codec.DecoderException;
import com.parse.codec.EncoderException;
import com.parse.codec.StringDecoder;
import com.parse.codec.StringEncoder;
import java.io.UnsupportedEncodingException;
import java.util.BitSet;

public class QCodec extends RFC1522Codec
  implements StringEncoder, StringDecoder
{
  private static final byte BLANK = 32;
  private static final BitSet PRINTABLE_CHARS = new BitSet(256);
  private static final byte UNDERSCORE = 95;
  private final String charset;
  private boolean encodeBlanks;

  static
  {
    PRINTABLE_CHARS.set(32);
    PRINTABLE_CHARS.set(33);
    PRINTABLE_CHARS.set(34);
    PRINTABLE_CHARS.set(35);
    PRINTABLE_CHARS.set(36);
    PRINTABLE_CHARS.set(37);
    PRINTABLE_CHARS.set(38);
    PRINTABLE_CHARS.set(39);
    PRINTABLE_CHARS.set(40);
    PRINTABLE_CHARS.set(41);
    PRINTABLE_CHARS.set(42);
    PRINTABLE_CHARS.set(43);
    PRINTABLE_CHARS.set(44);
    PRINTABLE_CHARS.set(45);
    PRINTABLE_CHARS.set(46);
    PRINTABLE_CHARS.set(47);
    for (int i = 48; i <= 57; ++i)
      PRINTABLE_CHARS.set(i);
    PRINTABLE_CHARS.set(58);
    PRINTABLE_CHARS.set(59);
    PRINTABLE_CHARS.set(60);
    PRINTABLE_CHARS.set(62);
    PRINTABLE_CHARS.set(64);
    for (int j = 65; j <= 90; ++j)
      PRINTABLE_CHARS.set(j);
    PRINTABLE_CHARS.set(91);
    PRINTABLE_CHARS.set(92);
    PRINTABLE_CHARS.set(93);
    PRINTABLE_CHARS.set(94);
    PRINTABLE_CHARS.set(96);
    for (int k = 97; k <= 122; ++k)
      PRINTABLE_CHARS.set(k);
    PRINTABLE_CHARS.set(123);
    PRINTABLE_CHARS.set(124);
    PRINTABLE_CHARS.set(125);
    PRINTABLE_CHARS.set(126);
  }

  public QCodec()
  {
    this("UTF-8");
  }

  public QCodec(String paramString)
  {
    this.encodeBlanks = false;
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
    throw new DecoderException("Objects of type " + paramObject.getClass().getName() + " cannot be decoded using Q codec");
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
    throws DecoderException
  {
    if (paramArrayOfByte == null);
    for (byte[] arrayOfByte1 = null; ; arrayOfByte1 = QuotedPrintableCodec.decodeQuotedPrintable(paramArrayOfByte))
      while (true)
      {
        return arrayOfByte1;
        int i = 0;
        label12: int j = paramArrayOfByte.length;
        int k = 0;
        if (i < j)
        {
          if (paramArrayOfByte[i] != 95)
            break label81;
          k = 1;
        }
        if (k == 0)
          break;
        byte[] arrayOfByte2 = new byte[paramArrayOfByte.length];
        int l = 0;
        if (l < paramArrayOfByte.length)
        {
          label48: int i1 = paramArrayOfByte[l];
          if (i1 != 95)
            arrayOfByte2[l] = i1;
          while (true)
          {
            ++l;
            break label48:
            label81: ++i;
            break label12:
            arrayOfByte2[l] = 32;
          }
        }
        arrayOfByte1 = QuotedPrintableCodec.decodeQuotedPrintable(arrayOfByte2);
      }
  }

  protected byte[] doEncoding(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte;
    if (paramArrayOfByte == null)
      arrayOfByte = null;
    do
    {
      return arrayOfByte;
      arrayOfByte = QuotedPrintableCodec.encodeQuotedPrintable(PRINTABLE_CHARS, paramArrayOfByte);
    }
    while (!(this.encodeBlanks));
    for (int i = 0; ; ++i)
    {
      if (i < arrayOfByte.length);
      if (arrayOfByte[i] != 32)
        continue;
      arrayOfByte[i] = 95;
    }
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
    throw new EncoderException("Objects of type " + paramObject.getClass().getName() + " cannot be encoded using Q codec");
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
    return "Q";
  }

  public boolean isEncodeBlanks()
  {
    return this.encodeBlanks;
  }

  public void setEncodeBlanks(boolean paramBoolean)
  {
    this.encodeBlanks = paramBoolean;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.net.QCodec
 * JD-Core Version:    0.5.3
 */