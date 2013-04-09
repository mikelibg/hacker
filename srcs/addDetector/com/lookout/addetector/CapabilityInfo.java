package com.lookout.addetector;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class CapabilityInfo
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new i();
  private String a;
  private AdNetworkInfo[] b;

  public CapabilityInfo(String paramString, AdNetworkInfo[] paramArrayOfAdNetworkInfo)
  {
    this.a = paramString;
    this.b = paramArrayOfAdNetworkInfo;
  }

  public final String a()
  {
    return this.a;
  }

  public final AdNetworkInfo[] b()
  {
    return this.b;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeInt(this.b.length);
    paramParcel.writeTypedArray(this.b, paramInt);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.CapabilityInfo
 * JD-Core Version:    0.5.3
 */