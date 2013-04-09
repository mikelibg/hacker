package com.parse.codec.language;

import com.parse.codec.EncoderException;
import com.parse.codec.StringEncoder;

public class RefinedSoundex
  implements StringEncoder
{
  public static final RefinedSoundex US_ENGLISH;
  private static final char[] US_ENGLISH_MAPPING = "01360240043788015936020505".toCharArray();
  public static final String US_ENGLISH_MAPPING_STRING = "01360240043788015936020505";
  private final char[] soundexMapping;

  static
  {
    US_ENGLISH = new RefinedSoundex();
  }

  public RefinedSoundex()
  {
    this.soundexMapping = US_ENGLISH_MAPPING;
  }

  public RefinedSoundex(String paramString)
  {
    this.soundexMapping = paramString.toCharArray();
  }

  public RefinedSoundex(char[] paramArrayOfChar)
  {
    this.soundexMapping = new char[paramArrayOfChar.length];
    System.arraycopy(paramArrayOfChar, 0, this.soundexMapping, 0, paramArrayOfChar.length);
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
      throw new EncoderException("Parameter supplied to RefinedSoundex encode is not of type java.lang.String");
    return soundex((String)paramObject);
  }

  public String encode(String paramString)
  {
    return soundex(paramString);
  }

  char getMappingCode(char paramChar)
  {
    if (!(Character.isLetter(paramChar)));
    for (int i = 0; ; i = this.soundexMapping[('﾿' + Character.toUpperCase(paramChar))])
      return i;
  }

  public String soundex(String paramString)
  {
    if (paramString == null);
    StringBuffer localStringBuffer;
    for (Object localObject = null; ; localObject = localStringBuffer.toString())
    {
      String str;
      while (true)
      {
        return localObject;
        str = SoundexUtils.clean(paramString);
        if (str.length() != 0)
          break;
        localObject = str;
      }
      localStringBuffer = new StringBuffer();
      localStringBuffer.append(str.charAt(0));
      int i = 42;
      int j = 0;
      label53: if (j >= str.length())
        continue;
      char c = getMappingCode(str.charAt(j));
      if (c == i);
      while (true)
      {
        ++j;
        break label53:
        if (c != 0)
          localStringBuffer.append(c);
        i = c;
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.language.RefinedSoundex
 * JD-Core Version:    0.5.3
 */