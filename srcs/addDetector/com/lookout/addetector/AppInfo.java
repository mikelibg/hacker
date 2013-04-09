package com.lookout.addetector;

import android.content.pm.PackageInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class AppInfo
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new g();
  PackageInfo a;
  int b;
  AdNetworkInfo[] c;

  public AppInfo()
  {
  }

  public AppInfo(PackageInfo paramPackageInfo, AdNetworkInfo[] paramArrayOfAdNetworkInfo)
  {
    this.a = paramPackageInfo;
    this.b = paramArrayOfAdNetworkInfo.length;
    this.c = paramArrayOfAdNetworkInfo;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.a, paramInt);
    paramParcel.writeInt(this.b);
    paramParcel.writeTypedArray(this.c, paramInt);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.AppInfo
 * JD-Core Version:    0.5.3
 */