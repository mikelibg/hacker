package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

final class FragmentState
  implements Parcelable
{
  public static final Parcelable.Creator<FragmentState> CREATOR = new Parcelable.Creator()
  {
    public FragmentState createFromParcel(Parcel paramParcel)
    {
      return new FragmentState(paramParcel);
    }

    public FragmentState[] newArray(int paramInt)
    {
      return new FragmentState[paramInt];
    }
  };
  final Bundle mArguments;
  final String mClassName;
  final int mContainerId;
  final boolean mDetached;
  final int mFragmentId;
  final boolean mFromLayout;
  final int mIndex;
  Fragment mInstance;
  final boolean mRetainInstance;
  Bundle mSavedFragmentState;
  final String mTag;

  public FragmentState(Parcel paramParcel)
  {
    this.mClassName = paramParcel.readString();
    this.mIndex = paramParcel.readInt();
    int i;
    label29: int j;
    if (paramParcel.readInt() != 0)
    {
      i = 1;
      this.mFromLayout = i;
      this.mFragmentId = paramParcel.readInt();
      this.mContainerId = paramParcel.readInt();
      this.mTag = paramParcel.readString();
      if (paramParcel.readInt() == 0)
        break label110;
      j = 1;
      label67: this.mRetainInstance = j;
      if (paramParcel.readInt() == 0)
        break label115;
    }
    for (int k = 1; ; k = 0)
    {
      this.mDetached = k;
      this.mArguments = paramParcel.readBundle();
      this.mSavedFragmentState = paramParcel.readBundle();
      return;
      i = 0;
      break label29:
      label110: j = 0;
      label115: break label67:
    }
  }

  public FragmentState(Fragment paramFragment)
  {
    this.mClassName = paramFragment.getClass().getName();
    this.mIndex = paramFragment.mIndex;
    this.mFromLayout = paramFragment.mFromLayout;
    this.mFragmentId = paramFragment.mFragmentId;
    this.mContainerId = paramFragment.mContainerId;
    this.mTag = paramFragment.mTag;
    this.mRetainInstance = paramFragment.mRetainInstance;
    this.mDetached = paramFragment.mDetached;
    this.mArguments = paramFragment.mArguments;
  }

  public int describeContents()
  {
    return 0;
  }

  public Fragment instantiate(FragmentActivity paramFragmentActivity)
  {
    if (this.mInstance != null)
      return this.mInstance;
    if (this.mArguments != null)
      this.mArguments.setClassLoader(paramFragmentActivity.getClassLoader());
    this.mInstance = Fragment.instantiate(paramFragmentActivity, this.mClassName, this.mArguments);
    if (this.mSavedFragmentState != null)
    {
      this.mSavedFragmentState.setClassLoader(paramFragmentActivity.getClassLoader());
      this.mInstance.mSavedFragmentState = this.mSavedFragmentState;
    }
    this.mInstance.setIndex(this.mIndex);
    this.mInstance.mFromLayout = this.mFromLayout;
    this.mInstance.mRestored = true;
    this.mInstance.mFragmentId = this.mFragmentId;
    this.mInstance.mContainerId = this.mContainerId;
    this.mInstance.mTag = this.mTag;
    this.mInstance.mRetainInstance = this.mRetainInstance;
    this.mInstance.mDetached = this.mDetached;
    this.mInstance.mFragmentManager = paramFragmentActivity.mFragments;
    return this.mInstance;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.mClassName);
    paramParcel.writeInt(this.mIndex);
    int i;
    label25: int j;
    if (this.mFromLayout)
    {
      i = 1;
      paramParcel.writeInt(i);
      paramParcel.writeInt(this.mFragmentId);
      paramParcel.writeInt(this.mContainerId);
      paramParcel.writeString(this.mTag);
      if (!(this.mRetainInstance))
        break label108;
      j = 1;
      label64: paramParcel.writeInt(j);
      if (!(this.mDetached))
        break label114;
    }
    for (int k = 1; ; k = 0)
    {
      paramParcel.writeInt(k);
      paramParcel.writeBundle(this.mArguments);
      paramParcel.writeBundle(this.mSavedFragmentState);
      return;
      i = 0;
      break label25:
      label108: j = 0;
      label114: break label64:
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     android.support.v4.app.FragmentState
 * JD-Core Version:    0.5.3
 */