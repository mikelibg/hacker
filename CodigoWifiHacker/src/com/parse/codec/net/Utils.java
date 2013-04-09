package com.parse.codec.net;

import com.parse.codec.DecoderException;

class Utils
{
  static int digit16(byte paramByte)
    throws DecoderException
  {
    int i = Character.digit((char)paramByte, 16);
    if (i == -1)
      throw new DecoderException("Invalid URL encoding: not a valid digit (radix 16): " + paramByte);
    return i;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.net.Utils
 * JD-Core Version:    0.5.3
 */