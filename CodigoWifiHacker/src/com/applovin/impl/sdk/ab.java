package com.applovin.impl.sdk;

import com.applovin.sdk.Logger;
import java.util.HashMap;
import java.util.Map;

class ab
{
  private final CharSequence a;
  private final Logger b;
  private final Map c = new HashMap(1);
  private ac d;

  public ab(CharSequence paramCharSequence, Logger paramLogger)
  {
    if (paramCharSequence == null)
      throw new IllegalArgumentException("No template specified");
    if (paramLogger == null)
      throw new IllegalArgumentException("No logger specified");
    this.a = paramCharSequence;
    this.b = paramLogger;
  }

  private String a(String paramString)
  {
    int i = paramString.indexOf(58);
    String str7;
    label44: String str1;
    String str2;
    label51: String str4;
    String str5;
    if (i > 0)
    {
      String str6 = paramString.substring(0, i).trim();
      if (i + 1 < paramString.length())
      {
        str7 = paramString.substring(i + 1).trim();
        str1 = str6;
        str2 = str7;
        if (this.d == null)
          break label173;
        str4 = this.d.a(str1);
        if (str4 == null)
          break label166;
        str5 = str4.substring(0, Math.min(str4.length(), 30));
        label93: this.b.d("TemplateProcessor", str1 + " was resolved to \"" + str5 + "\"");
        if (str4 == null)
          break label173;
      }
    }
    for (String str3 = str4; ; str3 = str2)
      do
      {
        do
        {
          return str3;
          str7 = "";
          break label44:
          str1 = paramString.trim().toLowerCase();
          str2 = null;
          break label51:
          label166: str5 = "";
          break label93:
          label173: str3 = (String)this.c.get(str1);
        }
        while (str3 != null);
        str3 = (String)this.c.get(str1.toLowerCase());
      }
      while (str3 != null);
  }

  public String a()
  {
    StringBuffer localStringBuffer1 = new StringBuffer();
    StringBuffer localStringBuffer2 = new StringBuffer();
    int i = 0;
    int j = 0;
    int k = 0;
    int l = 0;
    if (i < this.a.length())
    {
      label27: char c1 = this.a.charAt(i);
      if (l == 0)
        if (c1 == '<')
          if (k == 0)
            k = 1;
      while (true)
      {
        label72: ++i;
        break label27:
        localStringBuffer1.append("<");
        k = 0;
        continue;
        if (c1 == '%')
        {
          if (k != 0)
          {
            l = 1;
            k = 0;
          }
          localStringBuffer1.append(c1);
        }
        if (k != 0)
        {
          localStringBuffer1.append("<");
          k = 0;
        }
        localStringBuffer1.append(c1);
        continue;
        if (c1 == '%')
        {
          if (j == 0)
            j = 1;
          localStringBuffer2.append("%");
          j = 0;
        }
        if (c1 == '>')
        {
          if (j != 0)
          {
            String str1 = localStringBuffer2.toString();
            localStringBuffer2.setLength(0);
            String str2 = a(str1);
            if (str2 != null)
              localStringBuffer1.append(str2);
            while (true)
            {
              j = 0;
              l = 0;
              break label72:
              localStringBuffer1.append("");
              this.b.w("TemplateProcessor", "Unable to resolve \"" + str1 + "\", using empty string");
            }
          }
          localStringBuffer2.append(">");
        }
        localStringBuffer2.append(c1);
      }
    }
    if (k != 0)
      localStringBuffer1.append("<");
    if (l != 0)
    {
      localStringBuffer1.append("<%").append(localStringBuffer2);
      if (j != 0)
        localStringBuffer1.append("%");
    }
    return localStringBuffer1.toString();
  }

  public void a(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("No name specified");
    this.c.put(paramString1, paramString2);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.ab
 * JD-Core Version:    0.5.3
 */