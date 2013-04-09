package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;
import org.json.JSONArray;
import org.json.JSONObject;

class VideoLogEvent
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<VideoLogEvent> CREATOR = new Parcelable.Creator()
  {
    public VideoLogEvent createFromParcel(Parcel paramParcel)
    {
      return new VideoLogEvent(paramParcel);
    }

    public VideoLogEvent[] newArray(int paramInt)
    {
      return new VideoLogEvent[paramInt];
    }
  };
  String[] activities;
  long position;

  VideoLogEvent()
  {
  }

  VideoLogEvent(Parcel paramParcel)
  {
    try
    {
      this.position = paramParcel.readLong();
      this.activities = new String[paramParcel.readInt()];
      paramParcel.readStringArray(this.activities);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  VideoLogEvent(JSONObject paramJSONObject)
  {
    deserializeFromObj(paramJSONObject);
  }

  private void deserializeFromObj(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null);
    while (true)
    {
      return;
      this.position = (1000 * paramJSONObject.optInt("time"));
      JSONArray localJSONArray = paramJSONObject.optJSONArray("urls");
      if (localJSONArray != null)
      {
        this.activities = new String[localJSONArray.length()];
        for (int i = 0; ; ++i)
        {
          if (i < localJSONArray.length());
          this.activities[i] = localJSONArray.optString(i);
        }
      }
      this.activities = new String[0];
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.position);
    paramParcel.writeInt(this.activities.length);
    paramParcel.writeStringArray(this.activities);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.VideoLogEvent
 * JD-Core Version:    0.5.3
 */