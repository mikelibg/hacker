package com.mopub.mobileads;

import java.util.Map;

class MraidCommandOpen extends MraidCommand
{
  MraidCommandOpen(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }

  void execute()
  {
    String str = getStringFromParamsForKey("url");
    this.mView.getBrowserController().open(str);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidCommandOpen
 * JD-Core Version:    0.5.3
 */