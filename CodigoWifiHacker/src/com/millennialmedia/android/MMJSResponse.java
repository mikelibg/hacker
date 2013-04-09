package com.millennialmedia.android;

import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

class MMJSResponse
{
  static final int ERROR = 0;
  static final int SUCCESS = 1;
  String className;
  byte[] dataResponse;
  String methodName;
  Object response;
  int result;

  static MMJSResponse responseWithError()
  {
    return responseWithError("An unknown error occured.");
  }

  static MMJSResponse responseWithError(String paramString)
  {
    MMJSResponse localMMJSResponse = new MMJSResponse();
    localMMJSResponse.result = 0;
    localMMJSResponse.response = paramString;
    return localMMJSResponse;
  }

  static MMJSResponse responseWithSuccess()
  {
    return responseWithSuccess("Success.");
  }

  static MMJSResponse responseWithSuccess(String paramString)
  {
    MMJSResponse localMMJSResponse = new MMJSResponse();
    localMMJSResponse.result = 1;
    localMMJSResponse.response = paramString;
    return localMMJSResponse;
  }

  String toJSONString()
  {
    String str;
    try
    {
      if (this.className == null)
        break label138;
      if (this.methodName == null)
        break label138;
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("class", this.className);
      localJSONObject.put("call", this.methodName);
      localJSONObject.put("result", this.result);
      if (this.response != null)
      {
        localJSONObject.put("response", this.response);
        str = localJSONObject.toString();
        break label141:
      }
      if (this.dataResponse == null)
        break label132;
      label132: label138: localJSONObject.put("response", Base64.encode(this.dataResponse));
    }
    catch (JSONException localJSONException)
    {
      Log.e("MillennialMediaSDK", localJSONException.getMessage());
      str = "";
      break label141:
      str = "";
      break label141:
      str = "";
    }
    label141: return str;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMJSResponse
 * JD-Core Version:    0.5.3
 */