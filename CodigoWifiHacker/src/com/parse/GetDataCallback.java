package com.parse;

public abstract class GetDataCallback extends ParseCallback<byte[]>
{
  public abstract void done(byte[] paramArrayOfByte, ParseException paramParseException);

  final void internalDone(byte[] paramArrayOfByte, ParseException paramParseException)
  {
    done(paramArrayOfByte, paramParseException);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.GetDataCallback
 * JD-Core Version:    0.5.3
 */