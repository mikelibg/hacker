package com.parse.codec;

public abstract interface BinaryEncoder extends Encoder
{
  public abstract byte[] encode(byte[] paramArrayOfByte)
    throws EncoderException;
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.BinaryEncoder
 * JD-Core Version:    0.5.3
 */