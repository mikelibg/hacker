package com.mopub.mobileads;

class MraidViewableProperty extends MraidProperty
{
  private final boolean mViewable;

  MraidViewableProperty(boolean paramBoolean)
  {
    this.mViewable = paramBoolean;
  }

  public static MraidViewableProperty createWithViewable(boolean paramBoolean)
  {
    return new MraidViewableProperty(paramBoolean);
  }

  public String toJsonPair()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("viewable: ");
    if (this.mViewable);
    for (String str = "true"; ; str = "false")
      return str;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidViewableProperty
 * JD-Core Version:    0.5.3
 */