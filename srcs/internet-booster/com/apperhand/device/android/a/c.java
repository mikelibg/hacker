package com.apperhand.device.android.a;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.apperhand.common.dto.EULADetails;
import java.io.FileOutputStream;

public final class c
  implements com.apperhand.device.a.a.c
{
  private Context a;

  public c(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void a(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("com.apperhand.action.show.eula");
    localIntent.setPackage(this.a.getPackageName());
    if ((paramString1 != null) && (paramString2 != null))
    {
      localIntent.putExtra("bodyHTML", paramString1);
      localIntent.putExtra("footerHTML", paramString2);
    }
    this.a.sendBroadcast(localIntent);
  }

  public final boolean a(EULADetails paramEULADetails)
  {
    SharedPreferences.Editor localEditor = this.a.getSharedPreferences("com.apperhand.global", 0).edit();
    localEditor.putString("NewEulaTemplate", paramEULADetails.getTemplate());
    localEditor.putString("NewEulaChain", paramEULADetails.getChain());
    localEditor.putString("NewStep", paramEULADetails.getStep());
    localEditor.commit();
    return true;
  }

  public final boolean a(byte[] paramArrayOfByte, String paramString)
  {
    if (paramArrayOfByte == null)
      return false;
    try
    {
      FileOutputStream localFileOutputStream = this.a.openFileOutput(paramString, 0);
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.close();
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.device.android.a.c
 * JD-Core Version:    0.5.3
 */