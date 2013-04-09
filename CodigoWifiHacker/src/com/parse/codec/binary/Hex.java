package com.parse.codec.binary;

import com.parse.codec.BinaryDecoder;
import com.parse.codec.BinaryEncoder;
import com.parse.codec.DecoderException;
import com.parse.codec.EncoderException;
import java.io.UnsupportedEncodingException;

public class Hex
  implements BinaryEncoder, BinaryDecoder
{
  public static final String DEFAULT_CHARSET_NAME = "UTF-8";
  private static final char[] DIGITS_LOWER = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final char[] DIGITS_UPPER = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
  private final String charsetName;

  public Hex()
  {
    this.charsetName = "UTF-8";
  }

  public Hex(String paramString)
  {
    this.charsetName = paramString;
  }

  public static byte[] decodeHex(char[] paramArrayOfChar)
    throws DecoderException
  {
    int i = paramArrayOfChar.length;
    if ((i & 0x1) != 0)
      throw new DecoderException("Odd number of characters.");
    byte[] arrayOfByte = new byte[i >> 1];
    int j = 0;
    int k = 0;
    while (k < i)
    {
      int l = toDigit(paramArrayOfChar[k], k) << 4;
      int i1 = k + 1;
      int i2 = l | toDigit(paramArrayOfChar[i1], i1);
      k = i1 + 1;
      arrayOfByte[j] = (byte)(i2 & 0xFF);
      ++j;
    }
    return arrayOfByte;
  }

  public static char[] encodeHex(byte[] paramArrayOfByte)
  {
    return encodeHex(paramArrayOfByte, true);
  }

  public static char[] encodeHex(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    if (paramBoolean);
    for (char[] arrayOfChar = DIGITS_LOWER; ; arrayOfChar = DIGITS_UPPER)
      return encodeHex(paramArrayOfByte, arrayOfChar);
  }

  protected static char[] encodeHex(byte[] paramArrayOfByte, char[] paramArrayOfChar)
  {
    int i = paramArrayOfByte.length;
    char[] arrayOfChar = new char[i << 1];
    int j = 0;
    int k = 0;
    while (j < i)
    {
      int l = k + 1;
      arrayOfChar[k] = paramArrayOfChar[((0xF0 & paramArrayOfByte[j]) >>> 4)];
      k = l + 1;
      arrayOfChar[l] = paramArrayOfChar[(0xF & paramArrayOfByte[j])];
      ++j;
    }
    return arrayOfChar;
  }

  public static String encodeHexString(byte[] paramArrayOfByte)
  {
    return new String(encodeHex(paramArrayOfByte));
  }

  protected static int toDigit(char paramChar, int paramInt)
    throws DecoderException
  {
    int i = Character.digit(paramChar, 16);
    if (i == -1)
      throw new DecoderException("Illegal hexadecimal character " + paramChar + " at index " + paramInt);
    return i;
  }

  public Object decode(Object paramObject)
    throws DecoderException
  {
    try
    {
      if (paramObject instanceof String)
      {
        localObject = ((String)paramObject).toCharArray();
        return decodeHex(localObject);
      }
      char[] arrayOfChar = (char[])(char[])paramObject;
      Object localObject = arrayOfChar;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new DecoderException(localClassCastException.getMessage(), localClassCastException);
    }
  }

  public byte[] decode(byte[] paramArrayOfByte)
    throws DecoderException
  {
    try
    {
      byte[] arrayOfByte = decodeHex(new String(paramArrayOfByte, getCharsetName()).toCharArray());
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new DecoderException(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
    }
  }

  public Object encode(Object paramObject)
    throws EncoderException
  {
    try
    {
      if (paramObject instanceof String)
      {
        localObject = ((String)paramObject).getBytes(getCharsetName());
        return encodeHex(localObject);
      }
      byte[] arrayOfByte = (byte[])(byte[])paramObject;
      Object localObject = arrayOfByte;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new EncoderException(localClassCastException.getMessage(), localClassCastException);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new EncoderException(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
    }
  }

  public byte[] encode(byte[] paramArrayOfByte)
  {
    return StringUtils.getBytesUnchecked(encodeHexString(paramArrayOfByte), getCharsetName());
  }

  public String getCharsetName()
  {
    return this.charsetName;
  }

  public String toString()
  {
    return super.toString() + "[charsetName=" + this.charsetName + "]";
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.binary.Hex
 * JD-Core Version:    0.5.3
 */