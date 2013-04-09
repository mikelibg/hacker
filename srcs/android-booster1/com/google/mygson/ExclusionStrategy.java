package com.google.mygson;

public abstract interface ExclusionStrategy
{
  public abstract boolean shouldSkipClass(Class<?> paramClass);

  public abstract boolean shouldSkipField(FieldAttributes paramFieldAttributes);
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.google.mygson.ExclusionStrategy
 * JD-Core Version:    0.5.3
 */