package com.parse.codec;

public abstract interface StringEncoder extends Encoder
{
  public abstract String encode(String paramString)
    throws EncoderException;
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.StringEncoder
 * JD-Core Version:    0.5.3
 */