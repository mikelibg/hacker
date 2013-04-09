package com.parse.codec.binary;

import com.parse.codec.BinaryDecoder;
import com.parse.codec.BinaryEncoder;
import com.parse.codec.DecoderException;
import com.parse.codec.EncoderException;

public class BinaryCodec
  implements BinaryDecoder, BinaryEncoder
{
  private static final int[] BITS;
  private static final int BIT_0 = 1;
  private static final int BIT_1 = 2;
  private static final int BIT_2 = 4;
  private static final int BIT_3 = 8;
  private static final int BIT_4 = 16;
  private static final int BIT_5 = 32;
  private static final int BIT_6 = 64;
  private static final int BIT_7 = 128;
  private static final byte[] EMPTY_BYTE_ARRAY;
  private static final char[] EMPTY_CHAR_ARRAY = new char[0];

  static
  {
    EMPTY_BYTE_ARRAY = new byte[0];
    BITS = new int[] { 1, 2, 4, 8, 16, 32, 64, 128 };
  }

  public static byte[] fromAscii(byte[] paramArrayOfByte)
  {
    if (isEmpty(paramArrayOfByte))
    {
      arrayOfByte = EMPTY_BYTE_ARRAY;
      return arrayOfByte;
    }
    byte[] arrayOfByte = new byte[paramArrayOfByte.length >> 3];
    int i = 0;
    for (int j = -1 + paramArrayOfByte.length; ; j -= 8)
    {
      if (i < arrayOfByte.length);
      for (int k = 0; k < BITS.length; ++k)
      {
        if (paramArrayOfByte[(j - k)] != 49)
          continue;
        arrayOfByte[i] = (byte)(arrayOfByte[i] | BITS[k]);
      }
      ++i;
    }
  }

  public static byte[] fromAscii(char[] paramArrayOfChar)
  {
    if ((paramArrayOfChar == null) || (paramArrayOfChar.length == 0))
    {
      arrayOfByte = EMPTY_BYTE_ARRAY;
      return arrayOfByte;
    }
    byte[] arrayOfByte = new byte[paramArrayOfChar.length >> 3];
    int i = 0;
    for (int j = -1 + paramArrayOfChar.length; ; j -= 8)
    {
      if (i < arrayOfByte.length);
      for (int k = 0; k < BITS.length; ++k)
      {
        if (paramArrayOfChar[(j - k)] != '1')
          continue;
        arrayOfByte[i] = (byte)(arrayOfByte[i] | BITS[k]);
      }
      ++i;
    }
  }

  private static boolean isEmpty(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0));
    for (int i = 1; ; i = 0)
      return i;
  }

  public static byte[] toAsciiBytes(byte[] paramArrayOfByte)
  {
    if (isEmpty(paramArrayOfByte))
    {
      arrayOfByte = EMPTY_BYTE_ARRAY;
      return arrayOfByte;
    }
    byte[] arrayOfByte = new byte[paramArrayOfByte.length << 3];
    int i = 0;
    for (int j = -1 + arrayOfByte.length; ; j -= 8)
    {
      if (i < paramArrayOfByte.length);
      int k = 0;
      if (k < BITS.length)
      {
        if ((paramArrayOfByte[i] & BITS[k]) == 0)
          label36: arrayOfByte[(j - k)] = 48;
        while (true)
        {
          ++k;
          break label36:
          arrayOfByte[(j - k)] = 49;
        }
      }
      ++i;
    }
  }

  public static char[] toAsciiChars(byte[] paramArrayOfByte)
  {
    if (isEmpty(paramArrayOfByte))
    {
      arrayOfChar = EMPTY_CHAR_ARRAY;
      return arrayOfChar;
    }
    char[] arrayOfChar = new char[paramArrayOfByte.length << 3];
    int i = 0;
    for (int j = -1 + arrayOfChar.length; ; j -= 8)
    {
      if (i < paramArrayOfByte.length);
      int k = 0;
      if (k < BITS.length)
      {
        if ((paramArrayOfByte[i] & BITS[k]) == 0)
          label36: arrayOfChar[(j - k)] = '0';
        while (true)
        {
          ++k;
          break label36:
          arrayOfChar[(j - k)] = '1';
        }
      }
      ++i;
    }
  }

  public static String toAsciiString(byte[] paramArrayOfByte)
  {
    return new String(toAsciiChars(paramArrayOfByte));
  }

  public Object decode(Object paramObject)
    throws DecoderException
  {
    if (paramObject == null);
    for (byte[] arrayOfByte = EMPTY_BYTE_ARRAY; ; arrayOfByte = fromAscii(((String)paramObject).toCharArray()))
    {
      while (true)
      {
        return arrayOfByte;
        if (paramObject instanceof byte[])
          arrayOfByte = fromAscii((byte[])(byte[])paramObject);
        if (!(paramObject instanceof char[]))
          break;
        arrayOfByte = fromAscii((char[])(char[])paramObject);
      }
      if (!(paramObject instanceof String))
        break;
    }
    throw new DecoderException("argument not a byte array");
  }

  public byte[] decode(byte[] paramArrayOfByte)
  {
    return fromAscii(paramArrayOfByte);
  }

  public Object encode(Object paramObject)
    throws EncoderException
  {
    if (!(paramObject instanceof byte[]))
      throw new EncoderException("argument not a byte array");
    return toAsciiChars((byte[])(byte[])paramObject);
  }

  public byte[] encode(byte[] paramArrayOfByte)
  {
    return toAsciiBytes(paramArrayOfByte);
  }

  public byte[] toByteArray(String paramString)
  {
    if (paramString == null);
    for (byte[] arrayOfByte = EMPTY_BYTE_ARRAY; ; arrayOfByte = fromAscii(paramString.toCharArray()))
      return arrayOfByte;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.binary.BinaryCodec
 * JD-Core Version:    0.5.3
 */