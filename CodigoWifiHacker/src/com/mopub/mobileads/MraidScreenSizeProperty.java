package com.mopub.mobileads;

class MraidScreenSizeProperty extends MraidProperty
{
  private final int mScreenHeight;
  private final int mScreenWidth;

  MraidScreenSizeProperty(int paramInt1, int paramInt2)
  {
    this.mScreenWidth = paramInt1;
    this.mScreenHeight = paramInt2;
  }

  public static MraidScreenSizeProperty createWithSize(int paramInt1, int paramInt2)
  {
    return new MraidScreenSizeProperty(paramInt1, paramInt2);
  }

  public String toJsonPair()
  {
    return "screenSize: { width: " + this.mScreenWidth + ", height: " + this.mScreenHeight + " }";
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidScreenSizeProperty
 * JD-Core Version:    0.5.3
 */