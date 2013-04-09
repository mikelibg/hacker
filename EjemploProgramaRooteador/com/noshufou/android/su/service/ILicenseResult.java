package com.noshufou.android.su.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface ILicenseResult extends IInterface
{
  public abstract void allow()
    throws RemoteException;

  public abstract void dontAllow()
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements ILicenseResult
  {
    private static final String DESCRIPTOR = "com.noshufou.android.su.service.ILicenseResult";
    static final int TRANSACTION_allow = 1;
    static final int TRANSACTION_dontAllow = 2;

    public Stub()
    {
      attachInterface(this, "com.noshufou.android.su.service.ILicenseResult");
    }

    public static ILicenseResult asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.noshufou.android.su.service.ILicenseResult");
      if ((localIInterface != null) && (localIInterface instanceof ILicenseResult))
        return ((ILicenseResult)localIInterface);
      return new Proxy(paramIBinder);
    }

    public IBinder asBinder()
    {
      return this;
    }

    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.noshufou.android.su.service.ILicenseResult");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.noshufou.android.su.service.ILicenseResult");
        allow();
        paramParcel2.writeNoException();
        return true;
      case 2:
      }
      paramParcel1.enforceInterface("com.noshufou.android.su.service.ILicenseResult");
      dontAllow();
      paramParcel2.writeNoException();
      return true;
    }

    private static class Proxy
      implements ILicenseResult
    {
      private IBinder mRemote;

      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }

      public void allow()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.noshufou.android.su.service.ILicenseResult");
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public IBinder asBinder()
      {
        return this.mRemote;
      }

      public void dontAllow()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.noshufou.android.su.service.ILicenseResult");
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public String getInterfaceDescriptor()
      {
        return "com.noshufou.android.su.service.ILicenseResult";
      }
    }
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     com.noshufou.android.su.service.ILicenseResult
 * JD-Core Version:    0.5.3
 */