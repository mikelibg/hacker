package com.parse.codec;

public abstract interface StringDecoder extends Decoder
{
  public abstract String decode(String paramString)
    throws DecoderException;
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.StringDecoder
 * JD-Core Version:    0.5.3
 */