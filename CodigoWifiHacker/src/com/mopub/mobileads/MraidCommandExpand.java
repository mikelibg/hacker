package com.mopub.mobileads;

import java.util.Map;

class MraidCommandExpand extends MraidCommand
{
  MraidCommandExpand(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }

  void execute()
  {
    int i = getIntFromParamsForKey("w");
    int j = getIntFromParamsForKey("h");
    String str = getStringFromParamsForKey("url");
    boolean bool1 = getBooleanFromParamsForKey("shouldUseCustomClose");
    boolean bool2 = getBooleanFromParamsForKey("lockOrientation");
    if (i <= 0)
      i = this.mView.getDisplayController().mScreenWidth;
    if (j <= 0)
      j = this.mView.getDisplayController().mScreenHeight;
    this.mView.getDisplayController().expand(str, i, j, bool1, bool2);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidCommandExpand
 * JD-Core Version:    0.5.3
 */