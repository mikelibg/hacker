package com.millennialmedia.android;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.widget.ImageButton;
import android.widget.RelativeLayout.LayoutParams;
import org.json.JSONArray;
import org.json.JSONObject;

class VideoImage
  implements Parcelable
{
  public static final Parcelable.Creator<VideoImage> CREATOR = new Parcelable.Creator()
  {
    public VideoImage createFromParcel(Parcel paramParcel)
    {
      return new VideoImage(paramParcel);
    }

    public VideoImage[] newArray(int paramInt)
    {
      return new VideoImage[paramInt];
    }
  };
  String[] activity;
  int anchor;
  int anchor2;
  long appearanceDelay;
  ImageButton button;
  long contentLength;
  long fadeDuration = 1000L;
  float fromAlpha = 1.0F;
  String imageUrl;
  long inactivityTimeout;
  RelativeLayout.LayoutParams layoutParams;
  String linkUrl;
  String name;
  String overlayOrientation;
  int paddingBottom = 0;
  int paddingLeft = 0;
  int paddingRight = 0;
  int paddingTop = 0;
  int position;
  int position2;
  float toAlpha = 1.0F;

  VideoImage()
  {
  }

  VideoImage(Parcel paramParcel)
  {
    try
    {
      this.imageUrl = paramParcel.readString();
      this.contentLength = paramParcel.readLong();
      this.activity = new String[paramParcel.readInt()];
      paramParcel.readStringArray(this.activity);
      this.linkUrl = paramParcel.readString();
      this.overlayOrientation = paramParcel.readString();
      this.name = paramParcel.readString();
      this.paddingTop = paramParcel.readInt();
      this.paddingBottom = paramParcel.readInt();
      this.paddingLeft = paramParcel.readInt();
      this.paddingRight = paramParcel.readInt();
      this.position = paramParcel.readInt();
      this.anchor = paramParcel.readInt();
      this.position2 = paramParcel.readInt();
      this.anchor2 = paramParcel.readInt();
      this.appearanceDelay = paramParcel.readLong();
      this.inactivityTimeout = paramParcel.readLong();
      this.fromAlpha = paramParcel.readFloat();
      this.toAlpha = paramParcel.readFloat();
      this.fadeDuration = paramParcel.readLong();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  VideoImage(JSONObject paramJSONObject)
  {
    deserializeFromObj(paramJSONObject);
  }

  private void deserializeFromObj(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null);
    while (true)
    {
      return;
      this.imageUrl = paramJSONObject.optString("image", null);
      this.contentLength = paramJSONObject.optLong("contentLength");
      JSONArray localJSONArray = paramJSONObject.optJSONArray("activity");
      if (localJSONArray != null)
      {
        this.activity = new String[localJSONArray.length()];
        for (int i = 0; ; ++i)
        {
          if (i >= localJSONArray.length())
            break label87;
          this.activity[i] = localJSONArray.optString(i);
        }
      }
      this.activity = new String[0];
      label87: this.linkUrl = paramJSONObject.optString("url", null);
      this.overlayOrientation = paramJSONObject.optString("overlayOrientation", null);
      this.position = paramJSONObject.optInt("android-layout");
      this.anchor = paramJSONObject.optInt("android-layoutAnchor");
      this.position2 = paramJSONObject.optInt("android-layout2");
      this.anchor2 = paramJSONObject.optInt("android-layoutAnchor2");
      this.paddingTop = paramJSONObject.optInt("android-paddingTop");
      this.paddingLeft = paramJSONObject.optInt("android-paddingLeft");
      this.paddingRight = paramJSONObject.optInt("android-paddingRight");
      this.paddingBottom = paramJSONObject.optInt("android-paddingBottom");
      this.appearanceDelay = (1000L * ()paramJSONObject.optDouble("appearanceDelay", 0.0D));
      this.inactivityTimeout = (1000L * ()paramJSONObject.optDouble("inactivityTimeout", 0.0D));
      JSONObject localJSONObject = paramJSONObject.optJSONObject("opacity");
      if (localJSONObject == null)
        continue;
      this.fromAlpha = (float)localJSONObject.optDouble("start", 1.0D);
      this.toAlpha = (float)localJSONObject.optDouble("end", 1.0D);
      this.fadeDuration = (1000L * ()localJSONObject.optDouble("fadeDuration", 1.0D));
    }
  }

  public int describeContents()
  {
    return 0;
  }

  String getImageName()
  {
    return Uri.parse(this.imageUrl).getLastPathSegment().replaceFirst("\\.[^\\.]*$", ".dat");
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.imageUrl);
    paramParcel.writeLong(this.contentLength);
    paramParcel.writeInt(this.activity.length);
    paramParcel.writeStringArray(this.activity);
    paramParcel.writeString(this.linkUrl);
    paramParcel.writeString(this.overlayOrientation);
    paramParcel.writeString(this.name);
    paramParcel.writeInt(this.paddingTop);
    paramParcel.writeInt(this.paddingBottom);
    paramParcel.writeInt(this.paddingLeft);
    paramParcel.writeInt(this.paddingRight);
    paramParcel.writeInt(this.position);
    paramParcel.writeInt(this.anchor);
    paramParcel.writeInt(this.position2);
    paramParcel.writeInt(this.anchor2);
    paramParcel.writeLong(this.appearanceDelay);
    paramParcel.writeLong(this.inactivityTimeout);
    paramParcel.writeFloat(this.fromAlpha);
    paramParcel.writeFloat(this.toAlpha);
    paramParcel.writeLong(this.fadeDuration);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.VideoImage
 * JD-Core Version:    0.5.3
 */