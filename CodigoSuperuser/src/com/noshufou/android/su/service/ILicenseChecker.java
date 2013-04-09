package com.noshufou.android.su.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface ILicenseChecker extends IInterface
{
  public abstract boolean checkLicense(ILicenseResult paramILicenseResult)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements ILicenseChecker
  {
    private static final String DESCRIPTOR = "com.noshufou.android.su.service.ILicenseChecker";
    static final int TRANSACTION_checkLicense = 1;

    public Stub()
    {
      attachInterface(this, "com.noshufou.android.su.service.ILicenseChecker");
    }

    public static ILicenseChecker asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.noshufou.android.su.service.ILicenseChecker");
      if ((localIInterface != null) && (localIInterface instanceof ILicenseChecker))
        return ((ILicenseChecker)localIInterface);
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
        paramParcel2.writeString("com.noshufou.android.su.service.ILicenseChecker");
        return true;
      case 1:
      }
      paramParcel1.enforceInterface("com.noshufou.android.su.service.ILicenseChecker");
      boolean bool = checkLicense(ILicenseResult.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      if (bool);
      for (int i = 1; ; i = 0)
      {
        paramParcel2.writeInt(i);
        return true;
      }
    }

    private static class Proxy
      implements ILicenseChecker
    {
      private IBinder mRemote;

      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }

      public IBinder asBinder()
      {
        return this.mRemote;
      }

      public boolean checkLicense(ILicenseResult paramILicenseResult)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        int j;
        try
        {
          localParcel1.writeInterfaceToken("com.noshufou.android.su.service.ILicenseChecker");
          IBinder localIBinder;
          if (paramILicenseResult != null)
          {
            localIBinder = paramILicenseResult.asBinder();
            localParcel1.writeStrongBinder(localIBinder);
            this.mRemote.transact(1, localParcel1, localParcel2, 0);
            localParcel2.readException();
            int i = localParcel2.readInt();
            if (i != 0)
            {
              j = 1;
              return j;
            }
          }
          else
          {
            localIBinder = null;
          }
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public String getInterfaceDescriptor()
      {
        return "com.noshufou.android.su.service.ILicenseChecker";
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.service.ILicenseChecker
 * JD-Core Version:    0.5.3
 */