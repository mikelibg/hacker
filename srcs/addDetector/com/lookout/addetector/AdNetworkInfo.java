package com.lookout.addetector;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.Arrays;
import java.util.List;

public class AdNetworkInfo
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new d();
  public int a;
  public int b;
  public int c;
  public int d;
  public int e;
  private List f;

  public AdNetworkInfo()
  {
  }

  public AdNetworkInfo(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, h[] paramArrayOfh)
  {
    this.a = paramInt1;
    this.c = paramInt2;
    this.d = paramInt3;
    this.e = paramInt4;
    this.b = paramInt5;
    this.f = Arrays.asList(paramArrayOfh);
  }

  public final String a(Context paramContext)
  {
    return paramContext.getString(this.a);
  }

  public final boolean a(h paramh)
  {
    return this.f.contains(paramh);
  }

  public final String b(Context paramContext)
  {
    return paramContext.getString(this.b);
  }

  public int describeContents()
  {
    return 0;
  }

  public boolean equals(Object paramObject)
  {
    int i = 0;
    if (paramObject != null)
    {
      int j = paramObject.hashCode();
      int k = hashCode();
      i = 0;
      if (j == k)
        i = 1;
    }
    return i;
  }

  public int hashCode()
  {
    return (this.a ^ this.c ^ this.d ^ this.e ^ this.b);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeInt(this.c);
    paramParcel.writeInt(this.d);
    paramParcel.writeInt(this.e);
    paramParcel.writeInt(this.b);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.AdNetworkInfo
 * JD-Core Version:    0.5.3
 */