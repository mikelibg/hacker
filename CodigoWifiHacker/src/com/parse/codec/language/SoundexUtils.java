package com.parse.codec.language;

import com.parse.codec.EncoderException;
import com.parse.codec.StringEncoder;
import java.util.Locale;

final class SoundexUtils
{
  static String clean(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      label11: return paramString;
    int i = paramString.length();
    char[] arrayOfChar = new char[i];
    int j = 0;
    int k = 0;
    label27: int l;
    if (j < i)
    {
      if (!(Character.isLetter(paramString.charAt(j))))
        break label106;
      l = k + 1;
      arrayOfChar[k] = paramString.charAt(j);
    }
    while (true)
    {
      ++j;
      k = l;
      break label27:
      if (k == i)
        paramString = paramString.toUpperCase(Locale.ENGLISH);
      paramString = new String(arrayOfChar, 0, k).toUpperCase(Locale.ENGLISH);
      break label11:
      label106: l = k;
    }
  }

  static int difference(StringEncoder paramStringEncoder, String paramString1, String paramString2)
    throws EncoderException
  {
    return differenceEncoded(paramStringEncoder.encode(paramString1), paramStringEncoder.encode(paramString2));
  }

  static int differenceEncoded(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null))
    {
      i = 0;
      return i;
    }
    int j = Math.min(paramString1.length(), paramString2.length());
    int i = 0;
    for (int k = 0; ; ++k)
    {
      if (k < j);
      if (paramString1.charAt(k) != paramString2.charAt(k))
        continue;
      ++i;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.language.SoundexUtils
 * JD-Core Version:    0.5.3
 */