package com.google.mygson;

import java.lang.reflect.Type;

public abstract interface InstanceCreator<T>
{
  public abstract T createInstance(Type paramType);
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.google.mygson.InstanceCreator
 * JD-Core Version:    0.5.3
 */