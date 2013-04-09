package com.pad.android.iappad.controller;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.List;
import java.util.Map;

final class b
  implements DialogInterface.OnClickListener
{
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Map localMap = (Map)this.b.get(paramInt);
    AdUtilityController.a(this.a, Integer.parseInt((String)localMap.get("ID")), this.c, this.d, this.e);
    paramDialogInterface.cancel();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.iappad.controller.b
 * JD-Core Version:    0.5.3
 */