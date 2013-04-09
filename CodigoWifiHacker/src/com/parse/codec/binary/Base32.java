package com.parse.codec.binary;

public class Base32 extends BaseNCodec
{
  private static final int BITS_PER_ENCODED_BYTE = 5;
  private static final int BYTES_PER_ENCODED_BLOCK = 8;
  private static final int BYTES_PER_UNENCODED_BLOCK = 5;
  private static final byte[] CHUNK_SEPARATOR = { 13, 10 };
  private static final byte[] DECODE_TABLE = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 63, -1, -1, 26, 27, 28, 29, 30, 31, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 };
  private static final byte[] ENCODE_TABLE = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 50, 51, 52, 53, 54, 55 };
  private static final byte[] HEX_DECODE_TABLE = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 63, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32 };
  private static final byte[] HEX_ENCODE_TABLE = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86 };
  private static final int MASK_5BITS = 31;
  private long bitWorkArea;
  private final int decodeSize;
  private final byte[] decodeTable;
  private final int encodeSize;
  private final byte[] encodeTable;
  private final byte[] lineSeparator;

  public Base32()
  {
    this(false);
  }

  public Base32(int paramInt)
  {
    this(paramInt, CHUNK_SEPARATOR);
  }

  public Base32(int paramInt, byte[] paramArrayOfByte)
  {
    this(paramInt, paramArrayOfByte, false);
  }

  public Base32(int paramInt, byte[] paramArrayOfByte, boolean paramBoolean)
  {
  }

  public Base32(boolean paramBoolean)
  {
    this(0, null, paramBoolean);
  }

  void decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.eof)
      label7: return;
    if (paramInt2 < 0)
      this.eof = true;
    int i = 0;
    int j = paramInt1;
    int i13;
    int i14;
    if (i < paramInt2)
    {
      i13 = j + 1;
      i14 = paramArrayOfByte[j];
      if (i14 == 61)
        this.eof = true;
    }
    while (true)
    {
      if ((this.eof) && (this.modulus >= 2));
      ensureBufferSize(this.decodeSize);
      switch (this.modulus)
      {
      default:
        break;
      case 2:
        byte[] arrayOfByte14 = this.buffer;
        int i12 = this.pos;
        this.pos = (i12 + 1);
        arrayOfByte14[i12] = (byte)(int)(0xFF & this.bitWorkArea >> 2);
        break label7:
        ensureBufferSize(this.decodeSize);
        if ((i14 >= 0) && (i14 < this.decodeTable.length))
        {
          int i15 = this.decodeTable[i14];
          if (i15 >= 0)
          {
            this.modulus = ((1 + this.modulus) % 8);
            this.bitWorkArea = ((this.bitWorkArea << 5) + i15);
            if (this.modulus == 0)
            {
              byte[] arrayOfByte15 = this.buffer;
              int i16 = this.pos;
              this.pos = (i16 + 1);
              arrayOfByte15[i16] = (byte)(int)(0xFF & this.bitWorkArea >> 32);
              byte[] arrayOfByte16 = this.buffer;
              int i17 = this.pos;
              this.pos = (i17 + 1);
              arrayOfByte16[i17] = (byte)(int)(0xFF & this.bitWorkArea >> 24);
              byte[] arrayOfByte17 = this.buffer;
              int i18 = this.pos;
              this.pos = (i18 + 1);
              arrayOfByte17[i18] = (byte)(int)(0xFF & this.bitWorkArea >> 16);
              byte[] arrayOfByte18 = this.buffer;
              int i19 = this.pos;
              this.pos = (i19 + 1);
              arrayOfByte18[i19] = (byte)(int)(0xFF & this.bitWorkArea >> 8);
              byte[] arrayOfByte19 = this.buffer;
              int i20 = this.pos;
              this.pos = (i20 + 1);
              arrayOfByte19[i20] = (byte)(int)(0xFF & this.bitWorkArea);
            }
          }
        }
        ++i;
        j = i13;
        break;
      case 3:
        byte[] arrayOfByte13 = this.buffer;
        int i11 = this.pos;
        this.pos = (i11 + 1);
        arrayOfByte13[i11] = (byte)(int)(0xFF & this.bitWorkArea >> 7);
        break;
      case 4:
        this.bitWorkArea >>= 4;
        byte[] arrayOfByte11 = this.buffer;
        int i9 = this.pos;
        this.pos = (i9 + 1);
        arrayOfByte11[i9] = (byte)(int)(0xFF & this.bitWorkArea >> 8);
        byte[] arrayOfByte12 = this.buffer;
        int i10 = this.pos;
        this.pos = (i10 + 1);
        arrayOfByte12[i10] = (byte)(int)(0xFF & this.bitWorkArea);
        break;
      case 5:
        this.bitWorkArea >>= 1;
        byte[] arrayOfByte8 = this.buffer;
        int i6 = this.pos;
        this.pos = (i6 + 1);
        arrayOfByte8[i6] = (byte)(int)(0xFF & this.bitWorkArea >> 16);
        byte[] arrayOfByte9 = this.buffer;
        int i7 = this.pos;
        this.pos = (i7 + 1);
        arrayOfByte9[i7] = (byte)(int)(0xFF & this.bitWorkArea >> 8);
        byte[] arrayOfByte10 = this.buffer;
        int i8 = this.pos;
        this.pos = (i8 + 1);
        arrayOfByte10[i8] = (byte)(int)(0xFF & this.bitWorkArea);
        break;
      case 6:
        this.bitWorkArea >>= 6;
        byte[] arrayOfByte5 = this.buffer;
        int i3 = this.pos;
        this.pos = (i3 + 1);
        arrayOfByte5[i3] = (byte)(int)(0xFF & this.bitWorkArea >> 16);
        byte[] arrayOfByte6 = this.buffer;
        int i4 = this.pos;
        this.pos = (i4 + 1);
        arrayOfByte6[i4] = (byte)(int)(0xFF & this.bitWorkArea >> 8);
        byte[] arrayOfByte7 = this.buffer;
        int i5 = this.pos;
        this.pos = (i5 + 1);
        arrayOfByte7[i5] = (byte)(int)(0xFF & this.bitWorkArea);
        break;
      case 7:
      }
      this.bitWorkArea >>= 3;
      byte[] arrayOfByte1 = this.buffer;
      int k = this.pos;
      this.pos = (k + 1);
      arrayOfByte1[k] = (byte)(int)(0xFF & this.bitWorkArea >> 24);
      byte[] arrayOfByte2 = this.buffer;
      int l = this.pos;
      this.pos = (l + 1);
      arrayOfByte2[l] = (byte)(int)(0xFF & this.bitWorkArea >> 16);
      byte[] arrayOfByte3 = this.buffer;
      int i1 = this.pos;
      this.pos = (i1 + 1);
      arrayOfByte3[i1] = (byte)(int)(0xFF & this.bitWorkArea >> 8);
      byte[] arrayOfByte4 = this.buffer;
      int i2 = this.pos;
      this.pos = (i2 + 1);
      arrayOfByte4[i2] = (byte)(int)(0xFF & this.bitWorkArea);
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
        int i9 = this.pos;
        switch (this.modulus)
        {
        default:
        case 1:
        case 2:
        case 3:
        case 4:
        }
        while (true)
        {
          this.currentLinePos += this.pos - i9;
          if ((this.lineLength > 0) && (this.currentLinePos > 0));
          System.arraycopy(this.lineSeparator, 0, this.buffer, this.pos, this.lineSeparator.length);
          this.pos += this.lineSeparator.length;
          break label7:
          byte[] arrayOfByte33 = this.buffer;
          int i34 = this.pos;
          this.pos = (i34 + 1);
          arrayOfByte33[i34] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 3))];
          byte[] arrayOfByte34 = this.buffer;
          int i35 = this.pos;
          this.pos = (i35 + 1);
          arrayOfByte34[i35] = this.encodeTable[(0x1F & (int)(this.bitWorkArea << 2))];
          byte[] arrayOfByte35 = this.buffer;
          int i36 = this.pos;
          this.pos = (i36 + 1);
          arrayOfByte35[i36] = 61;
          byte[] arrayOfByte36 = this.buffer;
          int i37 = this.pos;
          this.pos = (i37 + 1);
          arrayOfByte36[i37] = 61;
          byte[] arrayOfByte37 = this.buffer;
          int i38 = this.pos;
          this.pos = (i38 + 1);
          arrayOfByte37[i38] = 61;
          byte[] arrayOfByte38 = this.buffer;
          int i39 = this.pos;
          this.pos = (i39 + 1);
          arrayOfByte38[i39] = 61;
          byte[] arrayOfByte39 = this.buffer;
          int i40 = this.pos;
          this.pos = (i40 + 1);
          arrayOfByte39[i40] = 61;
          byte[] arrayOfByte40 = this.buffer;
          int i41 = this.pos;
          this.pos = (i41 + 1);
          arrayOfByte40[i41] = 61;
          continue;
          byte[] arrayOfByte25 = this.buffer;
          int i26 = this.pos;
          this.pos = (i26 + 1);
          arrayOfByte25[i26] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 11))];
          byte[] arrayOfByte26 = this.buffer;
          int i27 = this.pos;
          this.pos = (i27 + 1);
          arrayOfByte26[i27] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 6))];
          byte[] arrayOfByte27 = this.buffer;
          int i28 = this.pos;
          this.pos = (i28 + 1);
          arrayOfByte27[i28] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 1))];
          byte[] arrayOfByte28 = this.buffer;
          int i29 = this.pos;
          this.pos = (i29 + 1);
          arrayOfByte28[i29] = this.encodeTable[(0x1F & (int)(this.bitWorkArea << 4))];
          byte[] arrayOfByte29 = this.buffer;
          int i30 = this.pos;
          this.pos = (i30 + 1);
          arrayOfByte29[i30] = 61;
          byte[] arrayOfByte30 = this.buffer;
          int i31 = this.pos;
          this.pos = (i31 + 1);
          arrayOfByte30[i31] = 61;
          byte[] arrayOfByte31 = this.buffer;
          int i32 = this.pos;
          this.pos = (i32 + 1);
          arrayOfByte31[i32] = 61;
          byte[] arrayOfByte32 = this.buffer;
          int i33 = this.pos;
          this.pos = (i33 + 1);
          arrayOfByte32[i33] = 61;
          continue;
          byte[] arrayOfByte17 = this.buffer;
          int i18 = this.pos;
          this.pos = (i18 + 1);
          arrayOfByte17[i18] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 19))];
          byte[] arrayOfByte18 = this.buffer;
          int i19 = this.pos;
          this.pos = (i19 + 1);
          arrayOfByte18[i19] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 14))];
          byte[] arrayOfByte19 = this.buffer;
          int i20 = this.pos;
          this.pos = (i20 + 1);
          arrayOfByte19[i20] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 9))];
          byte[] arrayOfByte20 = this.buffer;
          int i21 = this.pos;
          this.pos = (i21 + 1);
          arrayOfByte20[i21] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 4))];
          byte[] arrayOfByte21 = this.buffer;
          int i22 = this.pos;
          this.pos = (i22 + 1);
          arrayOfByte21[i22] = this.encodeTable[(0x1F & (int)(this.bitWorkArea << 1))];
          byte[] arrayOfByte22 = this.buffer;
          int i23 = this.pos;
          this.pos = (i23 + 1);
          arrayOfByte22[i23] = 61;
          byte[] arrayOfByte23 = this.buffer;
          int i24 = this.pos;
          this.pos = (i24 + 1);
          arrayOfByte23[i24] = 61;
          byte[] arrayOfByte24 = this.buffer;
          int i25 = this.pos;
          this.pos = (i25 + 1);
          arrayOfByte24[i25] = 61;
          continue;
          byte[] arrayOfByte9 = this.buffer;
          int i10 = this.pos;
          this.pos = (i10 + 1);
          arrayOfByte9[i10] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 27))];
          byte[] arrayOfByte10 = this.buffer;
          int i11 = this.pos;
          this.pos = (i11 + 1);
          arrayOfByte10[i11] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 22))];
          byte[] arrayOfByte11 = this.buffer;
          int i12 = this.pos;
          this.pos = (i12 + 1);
          arrayOfByte11[i12] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 17))];
          byte[] arrayOfByte12 = this.buffer;
          int i13 = this.pos;
          this.pos = (i13 + 1);
          arrayOfByte12[i13] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 12))];
          byte[] arrayOfByte13 = this.buffer;
          int i14 = this.pos;
          this.pos = (i14 + 1);
          arrayOfByte13[i14] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 7))];
          byte[] arrayOfByte14 = this.buffer;
          int i15 = this.pos;
          this.pos = (i15 + 1);
          arrayOfByte14[i15] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 2))];
          byte[] arrayOfByte15 = this.buffer;
          int i16 = this.pos;
          this.pos = (i16 + 1);
          arrayOfByte15[i16] = this.encodeTable[(0x1F & (int)(this.bitWorkArea << 3))];
          byte[] arrayOfByte16 = this.buffer;
          int i17 = this.pos;
          this.pos = (i17 + 1);
          arrayOfByte16[i17] = 61;
        }
      }
      int i = 0;
      int k;
      for (j = paramInt1; i < paramInt2; j = k)
      {
        ensureBufferSize(this.encodeSize);
        this.modulus = ((1 + this.modulus) % 5);
        k = j + 1;
        int l = paramArrayOfByte[j];
        if (l < 0);
        this.bitWorkArea = ((this.bitWorkArea << 8) + (l += 256));
        if (this.modulus == 0)
        {
          byte[] arrayOfByte1 = this.buffer;
          int i1 = this.pos;
          this.pos = (i1 + 1);
          arrayOfByte1[i1] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 35))];
          byte[] arrayOfByte2 = this.buffer;
          int i2 = this.pos;
          this.pos = (i2 + 1);
          arrayOfByte2[i2] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 30))];
          byte[] arrayOfByte3 = this.buffer;
          int i3 = this.pos;
          this.pos = (i3 + 1);
          arrayOfByte3[i3] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 25))];
          byte[] arrayOfByte4 = this.buffer;
          int i4 = this.pos;
          this.pos = (i4 + 1);
          arrayOfByte4[i4] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 20))];
          byte[] arrayOfByte5 = this.buffer;
          int i5 = this.pos;
          this.pos = (i5 + 1);
          arrayOfByte5[i5] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 15))];
          byte[] arrayOfByte6 = this.buffer;
          int i6 = this.pos;
          this.pos = (i6 + 1);
          arrayOfByte6[i6] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 10))];
          byte[] arrayOfByte7 = this.buffer;
          int i7 = this.pos;
          this.pos = (i7 + 1);
          arrayOfByte7[i7] = this.encodeTable[(0x1F & (int)(this.bitWorkArea >> 5))];
          byte[] arrayOfByte8 = this.buffer;
          int i8 = this.pos;
          this.pos = (i8 + 1);
          arrayOfByte8[i8] = this.encodeTable[(0x1F & (int)this.bitWorkArea)];
          this.currentLinePos = (8 + this.currentLinePos);
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

  public boolean isInAlphabet(byte paramByte)
  {
    if ((paramByte >= 0) && (paramByte < this.decodeTable.length) && (this.decodeTable[paramByte] != -1));
    for (int i = 1; ; i = 0)
      return i;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.binary.Base32
 * JD-Core Version:    0.5.3
 */