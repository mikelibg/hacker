package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

final class BackStackState
  implements Parcelable
{
  public static final Parcelable.Creator<BackStackState> CREATOR = new Parcelable.Creator()
  {
    public BackStackState createFromParcel(Parcel paramParcel)
    {
      return new BackStackState(paramParcel);
    }

    public BackStackState[] newArray(int paramInt)
    {
      return new BackStackState[paramInt];
    }
  };
  final int mBreadCrumbShortTitleRes;
  final CharSequence mBreadCrumbShortTitleText;
  final int mBreadCrumbTitleRes;
  final CharSequence mBreadCrumbTitleText;
  final int mIndex;
  final String mName;
  final int[] mOps;
  final int mTransition;
  final int mTransitionStyle;

  public BackStackState(Parcel paramParcel)
  {
    this.mOps = paramParcel.createIntArray();
    this.mTransition = paramParcel.readInt();
    this.mTransitionStyle = paramParcel.readInt();
    this.mName = paramParcel.readString();
    this.mIndex = paramParcel.readInt();
    this.mBreadCrumbTitleRes = paramParcel.readInt();
    this.mBreadCrumbTitleText = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.mBreadCrumbShortTitleRes = paramParcel.readInt();
    this.mBreadCrumbShortTitleText = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
  }

  public BackStackState(FragmentManagerImpl paramFragmentManagerImpl, BackStackRecord paramBackStackRecord)
  {
    int i = 0;
    for (BackStackRecord.Op localOp1 = paramBackStackRecord.mHead; ; localOp1 = localOp1.next)
    {
      if (localOp1 == null)
      {
        this.mOps = new int[i + 5 * paramBackStackRecord.mNumOp];
        if (paramBackStackRecord.mAddToBackStack)
          break;
        throw new IllegalStateException("Not on back stack");
      }
      if (localOp1.removed == null)
        continue;
      i += localOp1.removed.size();
    }
    BackStackRecord.Op localOp2 = paramBackStackRecord.mHead;
    int j = 0;
    if (localOp2 == null)
    {
      label86: this.mTransition = paramBackStackRecord.mTransition;
      this.mTransitionStyle = paramBackStackRecord.mTransitionStyle;
      this.mName = paramBackStackRecord.mName;
      this.mIndex = paramBackStackRecord.mIndex;
      this.mBreadCrumbTitleRes = paramBackStackRecord.mBreadCrumbTitleRes;
      this.mBreadCrumbTitleText = paramBackStackRecord.mBreadCrumbTitleText;
      this.mBreadCrumbShortTitleRes = paramBackStackRecord.mBreadCrumbShortTitleRes;
      this.mBreadCrumbShortTitleText = paramBackStackRecord.mBreadCrumbShortTitleText;
      return;
    }
    int[] arrayOfInt1 = this.mOps;
    int k = j + 1;
    arrayOfInt1[j] = localOp2.cmd;
    int[] arrayOfInt2 = this.mOps;
    int l = k + 1;
    arrayOfInt2[k] = localOp2.fragment.mIndex;
    int[] arrayOfInt3 = this.mOps;
    int i1 = l + 1;
    arrayOfInt3[l] = localOp2.enterAnim;
    int[] arrayOfInt4 = this.mOps;
    int i2 = i1 + 1;
    arrayOfInt4[i1] = localOp2.exitAnim;
    int i6;
    int i7;
    label291: int i3;
    if (localOp2.removed != null)
    {
      int i4 = localOp2.removed.size();
      int[] arrayOfInt6 = this.mOps;
      int i5 = i2 + 1;
      arrayOfInt6[i2] = i4;
      i6 = 0;
      i7 = i5;
      if (i6 >= i4)
        i3 = i7;
    }
    while (true)
    {
      localOp2 = localOp2.next;
      j = i3;
      break label86:
      int[] arrayOfInt7 = this.mOps;
      int i8 = i7 + 1;
      arrayOfInt7[i7] = ((Fragment)localOp2.removed.get(i6)).mIndex;
      ++i6;
      i7 = i8;
      break label291:
      int[] arrayOfInt5 = this.mOps;
      i3 = i2 + 1;
      arrayOfInt5[i2] = 0;
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public BackStackRecord instantiate(FragmentManagerImpl paramFragmentManagerImpl)
  {
    BackStackRecord localBackStackRecord = new BackStackRecord(paramFragmentManagerImpl);
    int i = 0;
    if (i >= this.mOps.length)
    {
      localBackStackRecord.mTransition = this.mTransition;
      localBackStackRecord.mTransitionStyle = this.mTransitionStyle;
      localBackStackRecord.mName = this.mName;
      localBackStackRecord.mIndex = this.mIndex;
      localBackStackRecord.mAddToBackStack = true;
      localBackStackRecord.mBreadCrumbTitleRes = this.mBreadCrumbTitleRes;
      localBackStackRecord.mBreadCrumbTitleText = this.mBreadCrumbTitleText;
      localBackStackRecord.mBreadCrumbShortTitleRes = this.mBreadCrumbShortTitleRes;
      localBackStackRecord.mBreadCrumbShortTitleText = this.mBreadCrumbShortTitleText;
      localBackStackRecord.bumpBackStackNesting(1);
      return localBackStackRecord;
    }
    BackStackRecord.Op localOp = new BackStackRecord.Op();
    int[] arrayOfInt1 = this.mOps;
    int j = i + 1;
    localOp.cmd = arrayOfInt1[i];
    if (FragmentManagerImpl.DEBUG)
      Log.v("FragmentManager", "BSE " + localBackStackRecord + " set base fragment #" + this.mOps[j]);
    ArrayList localArrayList1 = paramFragmentManagerImpl.mActive;
    int[] arrayOfInt2 = this.mOps;
    int k = j + 1;
    localOp.fragment = ((Fragment)localArrayList1.get(arrayOfInt2[j]));
    int[] arrayOfInt3 = this.mOps;
    int l = k + 1;
    localOp.enterAnim = arrayOfInt3[k];
    int[] arrayOfInt4 = this.mOps;
    int i1 = l + 1;
    localOp.exitAnim = arrayOfInt4[l];
    int[] arrayOfInt5 = this.mOps;
    int i2 = i1 + 1;
    int i3 = arrayOfInt5[i1];
    int i4;
    if (i3 > 0)
    {
      localOp.removed = new ArrayList(i3);
      i4 = 0;
    }
    while (true)
    {
      if (i4 >= i3)
      {
        i = i2;
        localBackStackRecord.addOp(localOp);
      }
      if (FragmentManagerImpl.DEBUG)
        Log.v("FragmentManager", "BSE " + localBackStackRecord + " set remove fragment #" + this.mOps[i2]);
      ArrayList localArrayList2 = paramFragmentManagerImpl.mActive;
      int[] arrayOfInt6 = this.mOps;
      int i5 = i2 + 1;
      Fragment localFragment = (Fragment)localArrayList2.get(arrayOfInt6[i2]);
      localOp.removed.add(localFragment);
      ++i4;
      i2 = i5;
    }
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeIntArray(this.mOps);
    paramParcel.writeInt(this.mTransition);
    paramParcel.writeInt(this.mTransitionStyle);
    paramParcel.writeString(this.mName);
    paramParcel.writeInt(this.mIndex);
    paramParcel.writeInt(this.mBreadCrumbTitleRes);
    TextUtils.writeToParcel(this.mBreadCrumbTitleText, paramParcel, 0);
    paramParcel.writeInt(this.mBreadCrumbShortTitleRes);
    TextUtils.writeToParcel(this.mBreadCrumbShortTitleText, paramParcel, 0);
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     android.support.v4.app.BackStackState
 * JD-Core Version:    0.5.3
 */