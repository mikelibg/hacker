package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

class EventLogSet extends MetaData
  implements Parcelable
{
  public static final Parcelable.Creator<EventLogSet> CREATOR = new Parcelable.Creator()
  {
    public EventLogSet createFromParcel(Parcel paramParcel)
    {
      return new EventLogSet(paramParcel);
    }

    public EventLogSet[] newArray(int paramInt)
    {
      return new EventLogSet[paramInt];
    }
  };
  String[] endActivity;
  String[] startActivity;

  EventLogSet()
  {
  }

  EventLogSet(Parcel paramParcel)
  {
    if (paramParcel == null)
      return;
    this.startActivity = new String[paramParcel.readInt()];
    paramParcel.readStringArray(this.startActivity);
    this.endActivity = new String[paramParcel.readInt()];
    paramParcel.readStringArray(this.endActivity);
  }

  EventLogSet(VideoAd paramVideoAd)
  {
    if (paramVideoAd == null)
      return;
    this.startActivity = paramVideoAd.startActivity;
    this.endActivity = paramVideoAd.endActivity;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.startActivity.length);
    paramParcel.writeStringArray(this.startActivity);
    paramParcel.writeInt(this.endActivity.length);
    paramParcel.writeStringArray(this.endActivity);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.EventLogSet
 * JD-Core Version:    0.5.3
 */