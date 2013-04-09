package com.parse.codec.binary;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class BaseNCodecInputStream extends FilterInputStream
{
  private final BaseNCodec baseNCodec;
  private final boolean doEncode;
  private final byte[] singleByte = new byte[1];

  protected BaseNCodecInputStream(InputStream paramInputStream, BaseNCodec paramBaseNCodec, boolean paramBoolean)
  {
    super(paramInputStream);
    this.doEncode = paramBoolean;
    this.baseNCodec = paramBaseNCodec;
  }

  public boolean markSupported()
  {
    return false;
  }

  public int read()
    throws IOException
  {
    for (int i = read(this.singleByte, 0, 1); i == 0; i = read(this.singleByte, 0, 1));
    if (i > 0)
      if (this.singleByte[0] >= 0);
    for (int j = 256 + this.singleByte[0]; ; j = -1)
      while (true)
      {
        return j;
        j = this.singleByte[0];
      }
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramArrayOfByte == null)
      throw new NullPointerException();
    if ((paramInt1 < 0) || (paramInt2 < 0))
      throw new IndexOutOfBoundsException();
    if ((paramInt1 > paramArrayOfByte.length) || (paramInt1 + paramInt2 > paramArrayOfByte.length))
      throw new IndexOutOfBoundsException();
    int i;
    if (paramInt2 == 0)
      i = 0;
    do
    {
      return i;
      label63: i = 0;
    }
    while (i != 0);
    int j;
    label90: byte[] arrayOfByte;
    int k;
    if (!(this.baseNCodec.hasData()))
    {
      if (!(this.doEncode))
        break label141;
      j = 4096;
      arrayOfByte = new byte[j];
      k = this.in.read(arrayOfByte);
      if (!(this.doEncode))
        break label149;
      this.baseNCodec.encode(arrayOfByte, 0, k);
    }
    while (true)
    {
      i = this.baseNCodec.readResults(paramArrayOfByte, paramInt1, paramInt2);
      break label63:
      label141: j = 8192;
      break label90:
      label149: this.baseNCodec.decode(arrayOfByte, 0, k);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.binary.BaseNCodecInputStream
 * JD-Core Version:    0.5.3
 */