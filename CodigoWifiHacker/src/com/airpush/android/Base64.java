package com.airpush.android;

import java.io.UnsupportedEncodingException;

class Base64 {
	public static final int CRLF = 4;
	public static final int DEFAULT = 0;
	public static final int NO_CLOSE = 16;
	public static final int NO_PADDING = 1;
	public static final int NO_WRAP = 2;
	public static final int URL_SAFE = 8;

	static {
		if (!(Base64.class.desiredAssertionStatus()))
			;
		for (int i = 1;; i = 0) {
			$assertionsDisabled = i;
			return;
		}
	}

	public static byte[] decode(String paramString, int paramInt) {
		return decode(paramString.getBytes(), paramInt);
	}

	public static byte[] decode(byte[] paramArrayOfByte, int paramInt) {
		return decode(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
	}

	public static byte[] decode(byte[] paramArrayOfByte, int paramInt1,
			int paramInt2, int paramInt3) {
		Decoder localDecoder = new Decoder(paramInt3,
				new byte[paramInt2 * 3 / 4]);
		if (!(localDecoder
				.process(paramArrayOfByte, paramInt1, paramInt2, true)))
			throw new IllegalArgumentException("bad base-64");
		byte[] arrayOfByte;
		if (localDecoder.op == localDecoder.output.length)
			arrayOfByte = localDecoder.output;
		while (true) {
			return arrayOfByte;
			arrayOfByte = new byte[localDecoder.op];
			System.arraycopy(localDecoder.output, 0, arrayOfByte, 0,
					localDecoder.op);
		}
	}

	public static byte[] encode(byte[] paramArrayOfByte, int paramInt) {
		return encode(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
	}

	public static byte[] encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    Encoder localEncoder = new Encoder(paramInt3, null);
    int i = 4 * paramInt2 / 3;
    label35: int j;
    if (localEncoder.do_padding)
    {
      if (paramInt2 % 3 > 0)
        i += 4;
      if ((localEncoder.do_newline) && (paramInt2 > 0))
      {
        j = 1 + (paramInt2 - 1) / 57;
        if (!(localEncoder.do_cr))
          break label167;
      }
    }
    for (int k = 2; ; k = 1)
    {
      i += k * j;
      localEncoder.output = new byte[i];
      localEncoder.process(paramArrayOfByte, paramInt1, paramInt2, true);
      if (($assertionsDisabled) || (localEncoder.op == i))
        break;
      throw new AssertionError();
      switch (paramInt2 % 3)
      {
      case 0:
      default:
        break;
      case 1:
        i += 2;
        break;
      case 2:
      }
      i += 3;
      label167: break label35:
    }
    return localEncoder.output;
  }

	public static String encodeString(String paramString) {
		return new String(encode(paramString.getBytes(), 0));
	}

	public static String encodeToString(byte[] paramArrayOfByte, int paramInt) {
		try {
			String str = new String(encode(paramArrayOfByte, paramInt),
					"US-ASCII");
			return str;
		} catch (UnsupportedEncodingException localUnsupportedEncodingException) {
			throw new AssertionError(localUnsupportedEncodingException);
		}
	}

	public static String encodeToString(byte[] paramArrayOfByte, int paramInt1,
			int paramInt2, int paramInt3) {
		try {
			String str = new String(encode(paramArrayOfByte, paramInt1,
					paramInt2, paramInt3), "US-ASCII");
			return str;
		} catch (UnsupportedEncodingException localUnsupportedEncodingException) {
			throw new AssertionError(localUnsupportedEncodingException);
		}
	}

	static abstract class Coder {
		public int op;
		public byte[] output;

		public abstract int maxOutputSize(int paramInt);

		public abstract boolean process(byte[] paramArrayOfByte, int paramInt1,
				int paramInt2, boolean paramBoolean);
	}

	static class Decoder extends Base64.Coder {
		private static final int[] DECODE;
		private static final int[] DECODE_WEBSAFE;
		private static final int EQUALS = -2;
		private static final int SKIP = -1;
		private final int[] alphabet;
		private int state;
		private int value;

		static {
			int[] arrayOfInt1 = new int[256];
			for (int i = 0; i < 66; i++) {
				int value = -1;
				switch (i) {
				case 43:
					value = 62;
					break;
				case 47:
					value = 63;
					break;
				case 48:
					value = 52;
					break;
				case 49:
					value = 53;
					break;
				case 50:
					value = 54;
					break;
				case 51:
					value = 55;
					break;
				case 52:
					value = 56;
					break;
				case 53:
					value = 57;
					break;
				case 54:
					value = 58;
					break;
				case 55:
					value = 59;
					break;
				case 56:
					value = 60;
					break;
				case 57:
					value = 61;
					break;
				case 61:
					value = -2;
					break;
				}
				arrayOfInt1[i] = value;
			}
			int v = 1;
			for (int j = 66; j < 91; j++, v++) {
				arrayOfInt1[j] = v;
			}
			for (int x = 91; x < 97; x++) {
				arrayOfInt1[x] = -1;
			}
			v = 26;
			for (int z = 97; z < 123; z++) {
				arrayOfInt1[z] = v;
			}
			for (int i = 97; i < 257; i++) {
				arrayOfInt1[i] = -1;
			}
			DECODE = arrayOfInt1;
			int[] arrayOfInt2 = new int[256];
			for (int i = 0; i < 48; i++) {
				if (i == 45)
					arrayOfInt2[i] = 62;
				else
					arrayOfInt2[i] = -1;
			}
			v = 52;
			for (int i = 48; i < 58; i++, v++) {
				arrayOfInt2[i] = v;
			}
			//El valor 65 no estaba, supongo que sera -1
			for (int i = 58; i < 66; i++) {
				if (i == 61)
					arrayOfInt2[i] = -2;
				else
					arrayOfInt2[i] = -1;
			}
			v = 1;
			for (int i = 66; i < 91; i++, v++) {
				arrayOfInt2[i] = v;
			}
			for(int i=91;i<97;i++){
				if(i==95)
					arrayOfInt2[i] = 63;
				else
					arrayOfInt2[i] = -1;
			}
			v = 26;
			for (int i = 97; i < 123; i++, v++) {
				arrayOfInt2[i] = v;
			}
			for(int i=123;i<256;i++){
				arrayOfInt2[i] = -1;
			}
			DECODE_WEBSAFE = arrayOfInt2;
		}

		public Decoder(int paramInt, byte[] paramArrayOfByte) {
			this.output = paramArrayOfByte;
			if ((paramInt & 0x8) == 0)
				;
			for (int[] arrayOfInt = DECODE;; arrayOfInt = DECODE_WEBSAFE) {
				this.alphabet = arrayOfInt;
				this.state = 0;
				this.value = 0;
				return;
			}
		}

		public int maxOutputSize(int paramInt) {
			return (10 + paramInt * 3 / 4);
		}

		public boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      if (this.state == 6);
      for (int i4 = 0; ; i4 = 0)
      {
        label12: int k;
        int l;
        byte[] arrayOfByte;
        label50: int i6;
        while (true)
        {
          return i4;
          int i = paramInt1;
          int j = paramInt2 + paramInt1;
          k = this.state;
          l = this.value;
          int i1 = 0;
          arrayOfByte = this.output;
          int[] arrayOfInt = this.alphabet;
          if (i >= j)
          {
            i6 = i1;
            label61: if (paramBoolean)
              break;
            this.state = k;
            this.value = l;
            this.op = i6;
            i4 = 1;
          }
          if (k == 0)
            while (true)
            {
              if (i + 4 <= j)
              {
                l = arrayOfInt[(0xFF & paramArrayOfByte[i])] << 18 | arrayOfInt[(0xFF & paramArrayOfByte[(i + 1)])] << 12 | arrayOfInt[(0xFF & paramArrayOfByte[(i + 2)])] << 6 | arrayOfInt[(0xFF & paramArrayOfByte[(i + 3)])];
                if (l >= 0)
                  break label187;
              }
              if (i < j)
                break;
              i6 = i1;
              break label61:
              label187: arrayOfByte[(i1 + 2)] = (byte)l;
              arrayOfByte[(i1 + 1)] = (byte)(l >> 8);
              arrayOfByte[i1] = (byte)(l >> 16);
              i1 += 3;
              i += 4;
            }
          int i2 = i + 1;
          int i3 = arrayOfInt[(0xFF & paramArrayOfByte[i])];
          switch (k)
          {
          default:
          case 0:
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          }
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      i = i2;
                      break label50:
                      if (i3 < 0)
                        continue;
                      l = i3;
                      ++k;
                      i = i2;
                      break label50:
                    }
                    while (i3 == -1);
                    this.state = 6;
                    i4 = 0;
                    break label12:
                    if (i3 < 0)
                      continue;
                    l = i3 | l << 6;
                    ++k;
                    i = i2;
                    break label50:
                  }
                  while (i3 == -1);
                  this.state = 6;
                  i4 = 0;
                  break label12:
                  if (i3 >= 0)
                  {
                    l = i3 | l << 6;
                    ++k;
                    i = i2;
                  }
                  if (i3 != -2)
                    continue;
                  int i5 = i1 + 1;
                  arrayOfByte[i1] = (byte)(l >> 4);
                  k = 4;
                  i1 = i5;
                  i = i2;
                  break label50:
                }
                while (i3 == -1);
                this.state = 6;
                i4 = 0;
                break label12:
                if (i3 >= 0)
                {
                  l = i3 | l << 6;
                  arrayOfByte[(i1 + 2)] = (byte)l;
                  arrayOfByte[(i1 + 1)] = (byte)(l >> 8);
                  arrayOfByte[i1] = (byte)(l >> 16);
                  i1 += 3;
                  i = i2;
                  k = 0;
                }
                if (i3 != -2)
                  continue;
                arrayOfByte[(i1 + 1)] = (byte)(l >> 2);
                arrayOfByte[i1] = (byte)(l >> 10);
                i1 += 2;
                k = 5;
                i = i2;
                break label50:
              }
              while (i3 == -1);
              this.state = 6;
              i4 = 0;
              break label12:
              if (i3 != -2)
                continue;
              ++k;
              i = i2;
              break label50:
            }
            while (i3 == -1);
            this.state = 6;
            i4 = 0;
            break label12:
          }
          while (i3 == -1);
          this.state = 6;
          i4 = 0;
        }
        switch (k)
        {
        default:
        case 0:
        case 1:
        case 2:
        case 3:
          int i8;
          for (int i9 = i6; ; i9 = i8)
          {
            while (true)
            {
              this.state = k;
              this.op = i9;
              i4 = 1;
              break label12:
              i9 = i6;
              continue;
              this.state = 6;
              i4 = 0;
              break label12:
              i9 = i6 + 1;
              arrayOfByte[i6] = (byte)(l >> 4);
            }
            int i7 = i6 + 1;
            arrayOfByte[i6] = (byte)(l >> 10);
            i8 = i7 + 1;
            arrayOfByte[i7] = (byte)(l >> 2);
          }
        case 4:
        }
        this.state = 6;
      }
    }
	}

	static class Encoder extends Base64.Coder {
		private static final byte[] ENCODE;
		private static final byte[] ENCODE_WEBSAFE;
		public static final int LINE_GROUPS = 19;
		private final byte[] alphabet;
		private int count;
		public final boolean do_cr;
		public final boolean do_newline;
		public final boolean do_padding;
		private final byte[] tail;
		int tailLen;

		static {
			if (!(Base64.class.desiredAssertionStatus()))
				;
			for (int i = 1;; i = 0) {
				$assertionsDisabled = i;
				ENCODE = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74,
						75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88,
						89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106,
						107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117,
						118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54,
						55, 56, 57, 43, 47 };
				ENCODE_WEBSAFE = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72,
						73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86,
						87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104,
						105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115,
						116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52,
						53, 54, 55, 56, 57, 45, 95 };
				return;
			}
		}

		public Encoder(int paramInt, byte[] paramArrayOfByte)
    {
      this.output = paramArrayOfByte;
      int j;
      label20: int k;
      label35: label47: byte[] arrayOfByte;
      if ((paramInt & 0x1) == 0)
      {
        j = i;
        this.do_padding = j;
        if ((paramInt & 0x2) != 0)
          break label106;
        k = i;
        this.do_newline = k;
        if ((paramInt & 0x4) == 0)
          break label112;
        this.do_cr = i;
        if ((paramInt & 0x8) != 0)
          break label117;
        arrayOfByte = ENCODE;
        label64: this.alphabet = arrayOfByte;
        this.tail = new byte[2];
        this.tailLen = 0;
        if (!(this.do_newline))
          break label125;
      }
      for (int l = 19; ; l = -1)
      {
        this.count = l;
        return;
        j = 0;
        break label20:
        label106: k = 0;
        break label35:
        label112: i = 0;
        break label47:
        label117: arrayOfByte = ENCODE_WEBSAFE;
        label125: break label64:
      }
    }

		public int maxOutputSize(int paramInt) {
			return (10 + paramInt * 8 / 5);
		}

		public boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      byte[] arrayOfByte1 = this.alphabet;
      byte[] arrayOfByte2 = this.output;
      int i = this.count;
      int j = paramInt1;
      int k = paramInt2 + paramInt1;
      int l = -1;
      label60: int i3;
      int i5;
      int i4;
      switch (this.tailLen)
      {
      case 0:
      default:
        i3 = 0;
        if (l == -1)
          break label1282;
        int i36 = 0 + 1;
        arrayOfByte2[0] = arrayOfByte1[(0x3F & l >> 18)];
        int i37 = i36 + 1;
        arrayOfByte2[i36] = arrayOfByte1[(0x3F & l >> 12)];
        int i38 = i37 + 1;
        arrayOfByte2[i37] = arrayOfByte1[(0x3F & l >> 6)];
        i3 = i38 + 1;
        arrayOfByte2[i38] = arrayOfByte1[(l & 0x3F)];
        if (--i != 0)
          break label1282;
        if (this.do_cr)
        {
          int i39 = i3 + 1;
          arrayOfByte2[i3] = 13;
          i3 = i39;
        }
        i5 = i3 + 1;
        arrayOfByte2[i3] = 10;
        i = 19;
        i4 = j;
      case 1:
      case 2:
      }
      while (true)
      {
        label205: int i27;
        int i28;
        int i12;
        if (i4 + 3 > k)
        {
          if (!(paramBoolean))
            break ;
          if (i4 - this.tailLen != k - 1)
            break label766;
          if (this.tailLen <= 0)
            break label748;
          byte[] arrayOfByte8 = this.tail;
          int i35 = 0 + 1;
          i27 = arrayOfByte8[0];
          i28 = i35;
          i12 = i4;
        }
        int i8;
        while (true)
        {
          int i29 = (i27 & 0xFF) << 4;
          this.tailLen -= i28;
          int i30 = i5 + 1;
          arrayOfByte2[i5] = arrayOfByte1[(0x3F & i29 >> 6)];
          int i31 = i30 + 1;
          arrayOfByte2[i30] = arrayOfByte1[(i29 & 0x3F)];
          if (this.do_padding)
          {
            int i34 = i31 + 1;
            arrayOfByte2[i31] = 61;
            i31 = i34 + 1;
            arrayOfByte2[i34] = 61;
          }
          i8 = i31;
          if (this.do_newline)
          {
            if (this.do_cr)
            {
              int i33 = i8 + 1;
              arrayOfByte2[i8] = 13;
              i8 = i33;
            }
            int i32 = i8 + 1;
            arrayOfByte2[i8] = 10;
            i8 = i32;
          }
          label412: if (($assertionsDisabled) || (this.tailLen == 0))
            break label1116;
          throw new AssertionError();
          if (j + 2 <= k);
          int i40 = (0xFF & this.tail[0]) << 16;
          int i41 = j + 1;
          int i42 = i40 | (0xFF & paramArrayOfByte[j]) << 8;
          j = i41 + 1;
          l = i42 | 0xFF & paramArrayOfByte[i41];
          this.tailLen = 0;
          break label60:
          if (j + 1 <= k);
          int i1 = (0xFF & this.tail[0]) << 16 | (0xFF & this.tail[1]) << 8;
          int i2 = j + 1;
          l = i1 | 0xFF & paramArrayOfByte[j];
          this.tailLen = 0;
          j = i2;
          break label60:
          int i6 = (0xFF & paramArrayOfByte[i4]) << 16 | (0xFF & paramArrayOfByte[(i4 + 1)]) << 8 | 0xFF & paramArrayOfByte[(i4 + 2)];
          arrayOfByte2[i5] = arrayOfByte1[(0x3F & i6 >> 18)];
          arrayOfByte2[(i5 + 1)] = arrayOfByte1[(0x3F & i6 >> 12)];
          arrayOfByte2[(i5 + 2)] = arrayOfByte1[(0x3F & i6 >> 6)];
          arrayOfByte2[(i5 + 3)] = arrayOfByte1[(i6 & 0x3F)];
          j = i4 + 3;
          i3 = i5 + 4;
          if (--i != 0)
            break label1282;
          if (this.do_cr)
          {
            int i7 = i3 + 1;
            arrayOfByte2[i3] = 13;
            i3 = i7;
          }
          i5 = i3 + 1;
          arrayOfByte2[i3] = 10;
          i = 19;
          i4 = j;
          break label205:
          label748: i12 = i4 + 1;
          i27 = paramArrayOfByte[i4];
          i28 = 0;
        }
        if (i4 - this.tailLen == k - 2)
        {
          label766: int i14;
          int i15;
          label813: int i16;
          int i18;
          if (this.tailLen > 1)
          {
            byte[] arrayOfByte7 = this.tail;
            int i26 = 0 + 1;
            i14 = arrayOfByte7[0];
            i15 = i26;
            i12 = i4;
            i16 = (i14 & 0xFF) << 10;
            if (this.tailLen <= 0)
              break label1034;
            byte[] arrayOfByte6 = this.tail;
            int i25 = i15 + 1;
            i18 = arrayOfByte6[i15];
            i15 = i25;
          }
          while (true)
          {
            int i19 = i16 | (i18 & 0xFF) << 2;
            this.tailLen -= i15;
            int i20 = i5 + 1;
            arrayOfByte2[i5] = arrayOfByte1[(0x3F & i19 >> 12)];
            int i21 = i20 + 1;
            arrayOfByte2[i20] = arrayOfByte1[(0x3F & i19 >> 6)];
            i8 = i21 + 1;
            arrayOfByte2[i21] = arrayOfByte1[(i19 & 0x3F)];
            if (this.do_padding)
            {
              int i24 = i8 + 1;
              arrayOfByte2[i8] = 61;
              i8 = i24;
            }
            if (this.do_newline);
            if (this.do_cr)
            {
              int i23 = i8 + 1;
              arrayOfByte2[i8] = 13;
              i8 = i23;
            }
            int i22 = i8 + 1;
            arrayOfByte2[i8] = 10;
            i8 = i22;
            break label412:
            i12 = i4 + 1;
            i14 = paramArrayOfByte[i4];
            i15 = 0;
            break label813:
            label1034: int i17 = i12 + 1;
            i18 = paramArrayOfByte[i12];
            i12 = i17;
          }
        }
        int i13;
        if ((this.do_newline) && (i5 > 0) && (i != 19))
        {
          if (!(this.do_cr))
            break label1275;
          i13 = i5 + 1;
          arrayOfByte2[i5] = 13;
        }
        while (true)
        {
          i5 = i13 + 1;
          arrayOfByte2[i13] = 10;
          i12 = i4;
          i8 = i5;
          break label412:
          if ((!($assertionsDisabled)) && (i12 != k))
          {
            label1116: throw new AssertionError();
            label1137: if (i4 != k - 1)
              break label1196;
            byte[] arrayOfByte5 = this.tail;
            int i11 = this.tailLen;
            this.tailLen = (i11 + 1);
            arrayOfByte5[i11] = paramArrayOfByte[i4];
          }
          for (i8 = i5; ; i8 = i5)
          {
            this.op = i8;
            this.count = i;
            return true;
            label1196: if (i4 != k - 2)
              continue;
            byte[] arrayOfByte3 = this.tail;
            int i9 = this.tailLen;
            this.tailLen = (i9 + 1);
            arrayOfByte3[i9] = paramArrayOfByte[i4];
            byte[] arrayOfByte4 = this.tail;
            int i10 = this.tailLen;
            this.tailLen = (i10 + 1);
            arrayOfByte4[i10] = paramArrayOfByte[(i4 + 1)];
          }
          label1275: i13 = i5;
        }
        label1282: i4 = j;
        i5 = i3;
      }
    }
	}
}

/*
 * Location: C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name: com.airpush.android.Base64 JD-Core Version: 0.5.3
 */