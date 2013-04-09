package com.mopub.mobileads;

import java.util.Map;

class MraidCommandUseCustomClose extends MraidCommand
{
  MraidCommandUseCustomClose(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }

  void execute()
  {
    boolean bool = getBooleanFromParamsForKey("shouldUseCustomClose");
    this.mView.getDisplayController().useCustomClose(bool);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidCommandUseCustomClose
 * JD-Core Version:    0.5.3
 */