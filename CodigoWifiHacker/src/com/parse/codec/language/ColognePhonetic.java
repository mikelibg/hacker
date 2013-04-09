package com.parse.codec.language;

import com.parse.codec.EncoderException;
import com.parse.codec.StringEncoder;
import java.util.Locale;

public class ColognePhonetic
  implements StringEncoder
{
  private static final char[][] PREPROCESS_MAP = { { 196, 65 }, { 220, 85 }, { 214, 79 }, { 223, 83 } };

  private static boolean arrayContains(char[] paramArrayOfChar, char paramChar)
  {
    int i = 0;
    if (i < paramArrayOfChar.length)
      label2: if (paramArrayOfChar[i] != paramChar);
    for (int j = 1; ; j = 0)
    {
      return j;
      ++i;
      break label2:
    }
  }

  private String preprocess(String paramString)
  {
    char[] arrayOfChar = paramString.toUpperCase(Locale.GERMAN).toCharArray();
    int i = 0;
    if (i < arrayOfChar.length)
    {
      label13: if (arrayOfChar[i] > 'Z');
      for (int j = 0; ; ++j)
      {
        if (j < PREPROCESS_MAP.length)
        {
          if (arrayOfChar[i] != PREPROCESS_MAP[j][0])
            continue;
          arrayOfChar[i] = PREPROCESS_MAP[j][1];
        }
        ++i;
        break label13:
      }
    }
    return new String(arrayOfChar);
  }

  public String colognePhonetic(String paramString)
  {
    if (paramString == null);
    CologneOutputBuffer localCologneOutputBuffer;
    for (String str2 = null; ; str2 = localCologneOutputBuffer.toString())
    {
      return str2;
      String str1 = preprocess(paramString);
      localCologneOutputBuffer = new CologneOutputBuffer(2 * str1.length());
      CologneInputBuffer localCologneInputBuffer = new CologneInputBuffer(str1.toCharArray());
      char c1 = '-';
      int i = 47;
      int j = localCologneInputBuffer.length();
      label60: if (j <= 0)
        continue;
      char c2 = localCologneInputBuffer.removeNext();
      j = localCologneInputBuffer.length();
      char c3;
      if (j > 0)
      {
        c3 = localCologneInputBuffer.getNextChar();
        label91: if (!(arrayContains(new char[] { 65, 69, 73, 74, 79, 85, 89 }, c2)))
          break label209;
      }
      for (char c4 = '0'; ; c4 = c2)
        while (true)
        {
          if ((c4 != '-') && ((((i != c4) && (((c4 != '0') || (i == 47)))) || (c4 < '0') || (c4 > '8'))))
            localCologneOutputBuffer.addRight(c4);
          c1 = c2;
          i = c4;
          break label60:
          c3 = '-';
          break label91:
          if ((c2 == 'H') || (c2 < 'A') || (c2 > 'Z'))
          {
            label209: if (i != 47);
            c4 = '-';
          }
          if ((c2 == 'B') || ((c2 == 'P') && (c3 != 'H')))
            c4 = '1';
          if ((c2 == 'D') || (c2 == 'T'))
            if (!(arrayContains(new char[] { 83, 67, 90 }, c3)))
              c4 = '2';
          if (arrayContains(new char[] { 87, 70, 80, 86 }, c2))
            c4 = '3';
          if (arrayContains(new char[] { 71, 75, 81 }, c2))
            c4 = '4';
          if (c2 == 'X')
            if (!(arrayContains(new char[] { 67, 75, 81 }, c1)))
            {
              c4 = '4';
              localCologneInputBuffer.addLeft('S');
              ++j;
            }
          if ((c2 == 'S') || (c2 == 'Z'))
            c4 = '8';
          if (c2 == 'C')
          {
            if (i == 47)
            {
              if (arrayContains(new char[] { 65, 72, 75, 76, 79, 81, 82, 85, 88 }, c3))
                c4 = '4';
              c4 = '8';
            }
            if (!(arrayContains(new char[] { 83, 90 }, c1)))
              if (arrayContains(new char[] { 65, 72, 79, 85, 75, 81, 88 }, c3))
                break label625;
            c4 = '8';
            continue;
            label625: c4 = '4';
          }
          if (arrayContains(new char[] { 84, 68, 88 }, c2))
            c4 = '8';
          if (c2 == 'R')
            c4 = '7';
          if (c2 == 'L')
            c4 = '5';
          if ((c2 != 'M') && (c2 != 'N'))
            break;
          c4 = '6';
        }
    }
  }

  public Object encode(Object paramObject)
    throws EncoderException
  {
    if (!(paramObject instanceof String))
      throw new EncoderException("This method’s parameter was expected to be of the type " + String.class.getName() + ". But actually it was of the type " + paramObject.getClass().getName() + ".");
    return encode((String)paramObject);
  }

  public String encode(String paramString)
  {
    return colognePhonetic(paramString);
  }

  public boolean isEncodeEqual(String paramString1, String paramString2)
  {
    return colognePhonetic(paramString1).equals(colognePhonetic(paramString2));
  }

  private abstract class CologneBuffer
  {
    protected final char[] data;
    protected int length = 0;

    public CologneBuffer(int paramInt)
    {
      this.data = new char[paramInt];
      this.length = 0;
    }

    public CologneBuffer(char[] paramArrayOfChar)
    {
      this.data = paramArrayOfChar;
      this.length = paramArrayOfChar.length;
    }

    protected abstract char[] copyData(int paramInt1, int paramInt2);

    public int length()
    {
      return this.length;
    }

    public String toString()
    {
      return new String(copyData(0, this.length));
    }
  }

  private class CologneInputBuffer extends ColognePhonetic.CologneBuffer
  {
    public CologneInputBuffer(char[] paramArrayOfChar)
    {
      super(ColognePhonetic.this, paramArrayOfChar);
    }

    public void addLeft(char paramChar)
    {
      this.length = (1 + this.length);
      this.data[getNextPos()] = paramChar;
    }

    protected char[] copyData(int paramInt1, int paramInt2)
    {
      char[] arrayOfChar = new char[paramInt2];
      System.arraycopy(this.data, paramInt1 + this.data.length - this.length, arrayOfChar, 0, paramInt2);
      return arrayOfChar;
    }

    public char getNextChar()
    {
      return this.data[getNextPos()];
    }

    protected int getNextPos()
    {
      return (this.data.length - this.length);
    }

    public char removeNext()
    {
      int i = getNextChar();
      this.length = (-1 + this.length);
      return i;
    }
  }

  private class CologneOutputBuffer extends ColognePhonetic.CologneBuffer
  {
    public CologneOutputBuffer(int paramInt)
    {
      super(ColognePhonetic.this, paramInt);
    }

    public void addRight(char paramChar)
    {
      this.data[this.length] = paramChar;
      this.length = (1 + this.length);
    }

    protected char[] copyData(int paramInt1, int paramInt2)
    {
      char[] arrayOfChar = new char[paramInt2];
      System.arraycopy(this.data, paramInt1, arrayOfChar, 0, paramInt2);
      return arrayOfChar;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.language.ColognePhonetic
 * JD-Core Version:    0.5.3
 */