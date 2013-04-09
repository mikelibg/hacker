package com.millennialmedia.android;

import org.json.JSONObject;

class MetaData
{
  int acid;
  String ip;
  String urid;
  String version;

  MetaData()
  {
  }

  MetaData(JSONObject paramJSONObject)
  {
    deserializeMetaDataFromObj(paramJSONObject);
  }

  void deserializeMetaDataFromObj(JSONObject paramJSONObject)
  {
    this.acid = paramJSONObject.optInt("acid");
    this.ip = paramJSONObject.optString("ip", null);
    this.urid = paramJSONObject.optString("urid", null);
    this.version = paramJSONObject.optString("version", null);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MetaData
 * JD-Core Version:    0.5.3
 */