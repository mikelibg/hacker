package com.google.mygson.annotations;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.FIELD})
public @interface SerializedName
{
  public abstract String value();
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.google.mygson.annotations.SerializedName
 * JD-Core Version:    0.5.3
 */