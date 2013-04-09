package com.parse.gdata;

import java.io.IOException;

public abstract class UnicodeEscaper
  implements Escaper
{
  private static final int DEST_PAD = 32;
  private static final ThreadLocal<char[]> DEST_TL = new ThreadLocal()
  {
    protected char[] initialValue()
    {
      return new char[1024];
    }
  };

  protected static final int codePointAt(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
    {
      int i = paramInt1 + 1;
      int j = paramCharSequence.charAt(paramInt1);
      if ((j < 55296) || (j > 57343));
      char c;
      while (true)
      {
        return j;
        if (j > 56319)
          break label132;
        if (i == paramInt2)
          j = -j;
        c = paramCharSequence.charAt(i);
        if (!(Character.isLowSurrogate(c)))
          break;
        j = Character.toCodePoint((char)j, c);
      }
      throw new IllegalArgumentException("Expected low surrogate but got char '" + c + "' with value " + c + " at index " + i);
      label132: throw new IllegalArgumentException("Unexpected low surrogate character '" + (char)j + "' with value " + j + " at index " + (i - 1));
    }
    throw new IndexOutOfBoundsException("Index exceeds specified range");
  }

  private static final char[] growBuffer(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    char[] arrayOfChar = new char[paramInt2];
    if (paramInt1 > 0)
      System.arraycopy(paramArrayOfChar, 0, arrayOfChar, 0, paramInt1);
    return arrayOfChar;
  }

  public Appendable escape(Appendable paramAppendable)
  {
    Preconditions.checkNotNull(paramAppendable);
    return new Appendable(paramAppendable)
    {
      char[] decodedChars = new char[2];
      int pendingHighSurrogate = -1;

      private void outputChars(char[] paramArrayOfChar, int paramInt)
        throws IOException
      {
        for (int i = 0; i < paramInt; ++i)
          this.val$out.append(paramArrayOfChar[i]);
      }

      public Appendable append(char paramChar)
        throws IOException
      {
        if (this.pendingHighSurrogate != -1)
        {
          if (!(Character.isLowSurrogate(paramChar)))
            throw new IllegalArgumentException("Expected low surrogate character but got '" + paramChar + "' with value " + paramChar);
          char[] arrayOfChar2 = UnicodeEscaper.this.escape(Character.toCodePoint((char)this.pendingHighSurrogate, paramChar));
          if (arrayOfChar2 != null)
          {
            outputChars(arrayOfChar2, arrayOfChar2.length);
            label83: this.pendingHighSurrogate = -1;
          }
        }
        while (true)
        {
          return this;
          this.val$out.append((char)this.pendingHighSurrogate);
          this.val$out.append(paramChar);
          break label83:
          if (Character.isHighSurrogate(paramChar))
            this.pendingHighSurrogate = paramChar;
          if (Character.isLowSurrogate(paramChar))
            throw new IllegalArgumentException("Unexpected low surrogate character '" + paramChar + "' with value " + paramChar);
          char[] arrayOfChar1 = UnicodeEscaper.this.escape(paramChar);
          if (arrayOfChar1 != null)
            outputChars(arrayOfChar1, arrayOfChar1.length);
          this.val$out.append(paramChar);
        }
      }

      public Appendable append(CharSequence paramCharSequence)
        throws IOException
      {
        return append(paramCharSequence, 0, paramCharSequence.length());
      }

      public Appendable append(CharSequence paramCharSequence, int paramInt1, int paramInt2)
        throws IOException
      {
        int i = paramInt1;
        int j;
        label109: label118: int k;
        if (i < paramInt2)
        {
          j = i;
          if (this.pendingHighSurrogate != -1)
          {
            int i4 = i + 1;
            char c = paramCharSequence.charAt(i);
            if (!(Character.isLowSurrogate(c)))
              throw new IllegalArgumentException("Expected low surrogate character but got " + c);
            char[] arrayOfChar2 = UnicodeEscaper.this.escape(Character.toCodePoint((char)this.pendingHighSurrogate, c));
            if (arrayOfChar2 == null)
              break label161;
            outputChars(arrayOfChar2, arrayOfChar2.length);
            ++j;
            this.pendingHighSurrogate = -1;
            i = i4;
          }
          k = UnicodeEscaper.this.nextEscapeIndex(paramCharSequence, i, paramInt2);
          if (k > j)
            this.val$out.append(paramCharSequence, j, k);
          if (k != paramInt2)
            break label179;
        }
        label161: label179: int l;
        while (true)
        {
          return this;
          this.val$out.append((char)this.pendingHighSurrogate);
          break label109:
          l = UnicodeEscaper.codePointAt(paramCharSequence, k, paramInt2);
          if (l >= 0)
            break;
          this.pendingHighSurrogate = (-l);
        }
        char[] arrayOfChar1 = UnicodeEscaper.this.escape(l);
        if (arrayOfChar1 != null)
        {
          outputChars(arrayOfChar1, arrayOfChar1.length);
          label228: if (!(Character.isSupplementaryCodePoint(l)))
            break label278;
        }
        label278: int i3;
        for (int i2 = 2; ; i3 = 1)
        {
          i = k + i2;
          j = i;
          break label118:
          int i1 = Character.toChars(l, this.decodedChars, 0);
          outputChars(this.decodedChars, i1);
          break label228:
        }
      }
    };
  }

  public String escape(String paramString)
  {
    int i = paramString.length();
    int j = nextEscapeIndex(paramString, 0, i);
    if (j == i);
    while (true)
    {
      return paramString;
      paramString = escapeSlow(paramString, j);
    }
  }

  protected abstract char[] escape(int paramInt);

  protected final String escapeSlow(String paramString, int paramInt)
  {
    int i = paramString.length();
    char[] arrayOfChar1 = (char[])DEST_TL.get();
    int j = 0;
    int k = 0;
    if (paramInt < i)
    {
      label22: int i2 = codePointAt(paramString, paramInt, i);
      if (i2 < 0)
        throw new IllegalArgumentException("Trailing high surrogate at end of input");
      char[] arrayOfChar2 = escape(i2);
      if (arrayOfChar2 != null)
      {
        int i5 = paramInt - k;
        int i6 = j + i5 + arrayOfChar2.length;
        if (arrayOfChar1.length < i6)
          arrayOfChar1 = growBuffer(arrayOfChar1, j, 32 + i6 + i - paramInt);
        if (i5 > 0)
        {
          paramString.getChars(k, paramInt, arrayOfChar1, j);
          j += i5;
        }
        if (arrayOfChar2.length > 0)
        {
          System.arraycopy(arrayOfChar2, 0, arrayOfChar1, j, arrayOfChar2.length);
          j += arrayOfChar2.length;
        }
      }
      if (Character.isSupplementaryCodePoint(i2));
      int i4;
      for (int i3 = 2; ; i4 = 1)
      {
        k = paramInt + i3;
        paramInt = nextEscapeIndex(paramString, k, i);
        break label22:
      }
    }
    int l = i - k;
    if (l > 0)
    {
      int i1 = j + l;
      if (arrayOfChar1.length < i1)
        arrayOfChar1 = growBuffer(arrayOfChar1, j, i1);
      paramString.getChars(k, i, arrayOfChar1, j);
      j = i1;
    }
    return new String(arrayOfChar1, 0, j);
  }

  protected int nextEscapeIndex(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    label3: int j;
    if (i < paramInt2)
    {
      j = codePointAt(paramCharSequence, i, paramInt2);
      if ((j >= 0) && (escape(j) == null))
        break label35;
    }
    return i;
    label35: if (Character.isSupplementaryCodePoint(j));
    int l;
    for (int k = 2; ; l = 1)
    {
      i += k;
      break label3:
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.gdata.UnicodeEscaper
 * JD-Core Version:    0.5.3
 */