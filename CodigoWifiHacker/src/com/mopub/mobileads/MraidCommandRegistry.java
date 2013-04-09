package com.mopub.mobileads;

import java.util.HashMap;
import java.util.Map;

class MraidCommandRegistry
{
  private static Map<String, MraidCommandFactory> commandMap = new HashMap();

  static
  {
    commandMap.put("close", new MraidCommandFactory()
    {
      public MraidCommand create(Map<String, String> paramMap, MraidView paramMraidView)
      {
        return new MraidCommandClose(paramMap, paramMraidView);
      }
    });
    commandMap.put("expand", new MraidCommandFactory()
    {
      public MraidCommand create(Map<String, String> paramMap, MraidView paramMraidView)
      {
        return new MraidCommandExpand(paramMap, paramMraidView);
      }
    });
    commandMap.put("usecustomclose", new MraidCommandFactory()
    {
      public MraidCommand create(Map<String, String> paramMap, MraidView paramMraidView)
      {
        return new MraidCommandUseCustomClose(paramMap, paramMraidView);
      }
    });
    commandMap.put("open", new MraidCommandFactory()
    {
      public MraidCommand create(Map<String, String> paramMap, MraidView paramMraidView)
      {
        return new MraidCommandOpen(paramMap, paramMraidView);
      }
    });
  }

  static MraidCommand createCommand(String paramString, Map<String, String> paramMap, MraidView paramMraidView)
  {
    MraidCommandFactory localMraidCommandFactory = (MraidCommandFactory)commandMap.get(paramString);
    if (localMraidCommandFactory != null);
    for (MraidCommand localMraidCommand = localMraidCommandFactory.create(paramMap, paramMraidView); ; localMraidCommand = null)
      return localMraidCommand;
  }

  private static abstract interface MraidCommandFactory
  {
    public abstract MraidCommand create(Map<String, String> paramMap, MraidView paramMraidView);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidCommandRegistry
 * JD-Core Version:    0.5.3
 */