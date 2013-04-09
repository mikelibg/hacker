package com.parse.codec;

public abstract interface BinaryDecoder extends Decoder
{
  public abstract byte[] decode(byte[] paramArrayOfByte)
    throws DecoderException;
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.BinaryDecoder
 * JD-Core Version:    0.5.3
 */