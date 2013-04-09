package com.parse;

import java.util.Map;
import org.json.JSONObject;

public class ParseCloud
{
  public static <T> T callFunction(String paramString, Map<String, ?> paramMap)
    throws ParseException
  {
    return convertCloudResponse((JSONObject)constructCallCommand(paramString, paramMap).perform());
  }

  public static <T> void callFunctionInBackground(String paramString, Map<String, ?> paramMap, FunctionCallback<T> paramFunctionCallback)
  {
    BackgroundTask.executeTask(new BackgroundTask(paramFunctionCallback, constructCallCommand(paramString, paramMap))
    {
      public T run()
        throws ParseException
      {
        return ParseCloud.access$000((JSONObject)this.val$command.perform());
      }
    });
  }

  private static ParseCommand constructCallCommand(String paramString, Map<String, ?> paramMap)
  {
    ParseCommand localParseCommand = new ParseCommand("client_function");
    localParseCommand.put("data", Parse.encodeJSONObject(paramMap, false));
    localParseCommand.put("function", paramString);
    return localParseCommand;
  }

  private static Object convertCloudResponse(JSONObject paramJSONObject)
  {
    return Parse.decodeJSONObject(paramJSONObject);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ParseCloud
 * JD-Core Version:    0.5.3
 */