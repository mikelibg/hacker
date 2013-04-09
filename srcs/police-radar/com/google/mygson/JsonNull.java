package com.google.mygson;

public final class JsonNull extends JsonElement
{
  public static final JsonNull INSTANCE = new JsonNull();

  public boolean equals(Object paramObject)
  {
    return ((this == paramObject) || (paramObject instanceof JsonNull));
  }

  public int hashCode()
  {
    return JsonNull.class.hashCode();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.google.mygson.JsonNull
 * JD-Core Version:    0.5.3
 */