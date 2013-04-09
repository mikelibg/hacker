package com.mopub.mobileads;

abstract class MraidProperty
{
  private String sanitize(String paramString)
  {
    if (paramString != null);
    for (String str = paramString.replaceAll("[^a-zA-Z0-9_,:\\s\\{\\}\\'\\\"]", ""); ; str = "")
      return str;
  }

  public abstract String toJsonPair();

  public String toString()
  {
    return sanitize(toJsonPair());
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidProperty
 * JD-Core Version:    0.5.3
 */