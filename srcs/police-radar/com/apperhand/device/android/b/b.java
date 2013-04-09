package com.apperhand.device.android.b;

import com.apperhand.device.a.d.f;
import com.apperhand.device.a.d.f.a;
import com.google.mygson.Gson;
import com.google.mygson.GsonBuilder;

public enum b
  implements c
{
  private Gson b = new GsonBuilder().registerTypeAdapter([B.class, new a().nullSafe()).serializeNulls().disableHtmlEscaping().create();

  static
  {
    b[] arrayOfb = new b[1];
    arrayOfb[0] = a;
    c = arrayOfb;
  }

  public final <T> T a(String paramString, Class<T> paramClass)
    throws f
  {
    try
    {
      Object localObject = this.b.fromJson(paramString, paramClass);
      return localObject;
    }
    catch (Exception localException)
    {
      throw new f(f.a.a, "Could not write JSON, string=[" + paramString.toString() + "] " + localException.getMessage(), localException);
    }
  }

  public final String a(Object paramObject)
    throws f
  {
    try
    {
      String str = this.b.toJson(paramObject);
      return str;
    }
    catch (Exception localException)
    {
      throw new f(f.a.a, "Could not read JSON, object=[" + paramObject.toString() + "] " + localException.getMessage(), localException);
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.apperhand.device.android.b.b
 * JD-Core Version:    0.5.3
 */