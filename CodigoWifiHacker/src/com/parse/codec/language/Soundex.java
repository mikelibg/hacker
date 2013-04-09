package com.parse.codec.language;

import com.parse.codec.EncoderException;
import com.parse.codec.StringEncoder;

public class Soundex
  implements StringEncoder
{
  public static final Soundex US_ENGLISH;
  private static final char[] US_ENGLISH_MAPPING = "01230120022455012623010202".toCharArray();
  public static final String US_ENGLISH_MAPPING_STRING = "01230120022455012623010202";
  private int maxLength = 4;
  private final char[] soundexMapping;

  static
  {
    US_ENGLISH = new Soundex();
  }

  public Soundex()
  {
    this.soundexMapping = US_ENGLISH_MAPPING;
  }

  public Soundex(String paramString)
  {
    this.soundexMapping = paramString.toCharArray();
  }

  public Soundex(char[] paramArrayOfChar)
  {
    this.soundexMapping = new char[paramArrayOfChar.length];
    System.arraycopy(paramArrayOfChar, 0, this.soundexMapping, 0, paramArrayOfChar.length);
  }

  private char getMappingCode(String paramString, int paramInt)
  {
    int i = map(paramString.charAt(paramInt));
    if ((paramInt > 1) && (i != 48))
    {
      int j = paramString.charAt(paramInt - 1);
      if ((72 == j) || (87 == j))
      {
        char c = paramString.charAt(paramInt - 2);
        if ((map(c) == i) || ('H' == c) || ('W' == c))
          i = 0;
      }
    }
    return i;
  }

  private char[] getSoundexMapping()
  {
    return this.soundexMapping;
  }

  private char map(char paramChar)
  {
    int i = paramChar - 'A';
    if ((i < 0) || (i >= getSoundexMapping().length))
      throw new IllegalArgumentException("The character is not mapped: " + paramChar);
    return getSoundexMapping()[i];
  }

  public int difference(String paramString1, String paramString2)
    throws EncoderException
  {
    return SoundexUtils.difference(this, paramString1, paramString2);
  }

  public Object encode(Object paramObject)
    throws EncoderException
  {
    if (!(paramObject instanceof String))
      throw new EncoderException("Parameter supplied to Soundex encode is not of type java.lang.String");
    return soundex((String)paramObject);
  }

  public String encode(String paramString)
  {
    return soundex(paramString);
  }

  public int getMaxLength()
  {
    return this.maxLength;
  }

  public void setMaxLength(int paramInt)
  {
    this.maxLength = paramInt;
  }

  public String soundex(String paramString)
  {
    if (paramString == null);
    label7: String str;
    for (Object localObject = null; ; localObject = str)
    {
      return localObject;
      str = SoundexUtils.clean(paramString);
      if (str.length() != 0)
        break;
    }
    char[] arrayOfChar = { 48, 48, 48, 48 };
    int i = 1;
    int j = 1;
    arrayOfChar[0] = str.charAt(0);
    int k = getMappingCode(str, 0);
    while (true)
    {
      int l;
      if ((i < str.length()) && (j < arrayOfChar.length))
      {
        l = i + 1;
        int i1 = getMappingCode(str, i);
        if (i1 == 0)
          break label164;
        if ((i1 != 48) && (i1 != k))
        {
          int i2 = j + 1;
          arrayOfChar[j] = i1;
          j = i2;
        }
        k = i1;
        i = l;
      }
      localObject = new String(arrayOfChar);
      break label7:
      label164: i = l;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.language.Soundex
 * JD-Core Version:    0.5.3
 */