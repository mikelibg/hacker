package com.mopub.mobileads;

import java.util.Map;

class MraidCommandClose extends MraidCommand
{
  MraidCommandClose(Map<String, String> paramMap, MraidView paramMraidView)
  {
    super(paramMap, paramMraidView);
  }

  void execute()
  {
    this.mView.getDisplayController().close();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidCommandClose
 * JD-Core Version:    0.5.3
 */