package com.parse.codec.binary;

import java.math.BigInteger;

public class Base64 extends BaseNCodec
{
  private static final int BITS_PER_ENCODED_BYTE = 6;
  private static final int BYTES_PER_ENCODED_BLOCK = 4;
  private static final int BYTES_PER_UNENCODED_BLOCK = 3;
  static final byte[] CHUNK_SEPARATOR = { 13, 10 };
  private static final byte[] DECODE_TABLE;
  private static final int MASK_6BITS = 63;
  private static final byte[] STANDARD_ENCODE_TABLE = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private static final byte[] URL_SAFE_ENCODE_TABLE = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
  private int bitWorkArea;
  private final int decodeSize;
  private final byte[] decodeTable;
  private final int encodeSize;
  private final byte[] encodeTable;
  private final byte[] lineSeparator;



  static byte[] toIntegerBytes(BigInteger paramBigInteger)
  {
    int i = 7 + paramBigInteger.bitLength() >> 3 << 3;
    Object localObject = paramBigInteger.toByteArray();
    if ((paramBigInteger.bitLength() % 8 != 0) && (1 + paramBigInteger.bitLength() / 8 == i / 8));
    while (true)
    {
      return localObject;
      int j = localObject.length;
      int k = paramBigInteger.bitLength() % 8;
      int l = 0;
      if (k == 0)
        l = 1;
      int i1 = i / 8 - --j;
      byte[] arrayOfByte = new byte[i / 8];
      System.arraycopy(localObject, l, arrayOfByte, i1, j);
      localObject = arrayOfByte;
    }
  }

  void decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.eof)
      label7: return;
    if (paramInt2 < 0)
      this.eof = true;
    int i = 0;
    int j = paramInt1;
    int i2;
    int i3;
    if (i < paramInt2)
    {
      ensureBufferSize(this.decodeSize);
      i2 = j + 1;
      i3 = paramArrayOfByte[j];
      if (i3 == 61)
        this.eof = true;
    }
    while (true)
    {
      if ((this.eof) && (this.modulus != 0));
      ensureBufferSize(this.decodeSize);
      switch (this.modulus)
      {
      default:
        break;
      case 2:
        this.bitWorkArea >>= 4;
        byte[] arrayOfByte3 = this.buffer;
        int i1 = this.pos;
        this.pos = (i1 + 1);
        arrayOfByte3[i1] = (byte)(0xFF & this.bitWorkArea);
        break label7:
        if ((i3 >= 0) && (i3 < DECODE_TABLE.length))
        {
          int i4 = DECODE_TABLE[i3];
          if (i4 >= 0)
          {
            this.modulus = ((1 + this.modulus) % 4);
            this.bitWorkArea = (i4 + (this.bitWorkArea << 6));
            if (this.modulus == 0)
            {
              byte[] arrayOfByte4 = this.buffer;
              int i5 = this.pos;
              this.pos = (i5 + 1);
              arrayOfByte4[i5] = (byte)(0xFF & this.bitWorkArea >> 16);
              byte[] arrayOfByte5 = this.buffer;
              int i6 = this.pos;
              this.pos = (i6 + 1);
              arrayOfByte5[i6] = (byte)(0xFF & this.bitWorkArea >> 8);
              byte[] arrayOfByte6 = this.buffer;
              int i7 = this.pos;
              this.pos = (i7 + 1);
              arrayOfByte6[i7] = (byte)(0xFF & this.bitWorkArea);
            }
          }
        }
        ++i;
        j = i2;
        break;
      case 3:
      }
      this.bitWorkArea >>= 2;
      byte[] arrayOfByte1 = this.buffer;
      int k = this.pos;
      this.pos = (k + 1);
      arrayOfByte1[k] = (byte)(0xFF & this.bitWorkArea >> 8);
      byte[] arrayOfByte2 = this.buffer;
      int l = this.pos;
      this.pos = (l + 1);
      arrayOfByte2[l] = (byte)(0xFF & this.bitWorkArea);
      break label7:
    }
  }

  void encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.eof);
    label7: int j;
    while (true)
    {
      return;
      if (paramInt2 < 0)
      {
        this.eof = true;
        if ((this.modulus == 0) && (this.lineLength == 0))
          continue;
        ensureBufferSize(this.encodeSize);
        int i5 = this.pos;
        switch (this.modulus)
        {
        default:
        case 1:
        case 2:
        }
        while (true)
        {
          this.currentLinePos += this.pos - i5;
          if ((this.lineLength > 0) && (this.currentLinePos > 0));
          System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
          this.pos += this.lineSeparator.length;
          break label7:
          byte[] arrayOfByte9 = this.buffer;
          int i10 = this.pos;
          this.pos = (i10 + 1);
          arrayOfByte9[i10] = this.encodeTable[(0x3F & this.bitWorkArea >> 2)];
          byte[] arrayOfByte10 = this.buffer;
          int i11 = this.pos;
          this.pos = (i11 + 1);
          arrayOfByte10[i11] = this.encodeTable[(0x3F & this.bitWorkArea << 4)];
          if (this.encodeTable != STANDARD_ENCODE_TABLE)
            continue;
          byte[] arrayOfByte11 = this.buffer;
          int i12 = this.pos;
          this.pos = (i12 + 1);
          arrayOfByte11[i12] = 61;
          byte[] arrayOfByte12 = this.buffer;
          int i13 = this.pos;
          this.pos = (i13 + 1);
          arrayOfByte12[i13] = 61;
          continue;
          byte[] arrayOfByte5 = this.buffer;
          int i6 = this.pos;
          this.pos = (i6 + 1);
          arrayOfByte5[i6] = this.encodeTable[(0x3F & this.bitWorkArea >> 10)];
          byte[] arrayOfByte6 = this.buffer;
          int i7 = this.pos;
          this.pos = (i7 + 1);
          arrayOfByte6[i7] = this.encodeTable[(0x3F & this.bitWorkArea >> 4)];
          byte[] arrayOfByte7 = this.buffer;
          int i8 = this.pos;
          this.pos = (i8 + 1);
          arrayOfByte7[i8] = this.encodeTable[(0x3F & this.bitWorkArea << 2)];
          if (this.encodeTable != STANDARD_ENCODE_TABLE)
            continue;
          byte[] arrayOfByte8 = this.buffer;
          int i9 = this.pos;
          this.pos = (i9 + 1);
          arrayOfByte8[i9] = 61;
        }
      }
      int i = 0;
      int k;
      for (j = paramInt1; i < paramInt2; j = k)
      {
        ensureBufferSize(this.encodeSize);
        this.modulus = ((1 + this.modulus) % 3);
        k = j + 1;
        int l = paramArrayOfByte[j];
        if (l < 0);
        this.bitWorkArea = ((l += 256) + (this.bitWorkArea << 8));
        if (this.modulus == 0)
        {
          byte[] arrayOfByte1 = this.buffer;
          int i1 = this.pos;
          this.pos = (i1 + 1);
          arrayOfByte1[i1] = this.encodeTable[(0x3F & this.bitWorkArea >> 18)];
          byte[] arrayOfByte2 = this.buffer;
          int i2 = this.pos;
          this.pos = (i2 + 1);
          arrayOfByte2[i2] = this.encodeTable[(0x3F & this.bitWorkArea >> 12)];
          byte[] arrayOfByte3 = this.buffer;
          int i3 = this.pos;
          this.pos = (i3 + 1);
          arrayOfByte3[i3] = this.encodeTable[(0x3F & this.bitWorkArea >> 6)];
          byte[] arrayOfByte4 = this.buffer;
          int i4 = this.pos;
          this.pos = (i4 + 1);
          arrayOfByte4[i4] = this.encodeTable[(0x3F & this.bitWorkArea)];
          this.currentLinePos = (4 + this.currentLinePos);
          if ((this.lineLength > 0) && (this.lineLength <= this.currentLinePos))
          {
            System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
            this.pos += this.lineSeparator.length;
            this.currentLinePos = 0;
          }
        }
        ++i;
      }
    }
  }

  protected boolean isInAlphabet(byte paramByte)
  {
    if ((paramByte >= 0) && (paramByte < this.decodeTable.length) && (this.decodeTable[paramByte] != -1));
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean isUrlSafe()
  {
    if (this.encodeTable == URL_SAFE_ENCODE_TABLE);
    for (int i = 1; ; i = 0)
      return i;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.binary.Base64
 * JD-Core Version:    0.5.3
 */