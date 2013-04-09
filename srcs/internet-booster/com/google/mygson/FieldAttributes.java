package com.google.mygson;

import com.google.mygson.internal..Gson.Preconditions;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;

public final class FieldAttributes
{
  private final Field field;

  public FieldAttributes(Field paramField)
  {
    .Gson.Preconditions.checkNotNull(paramField);
    this.field = paramField;
  }

  Object get(Object paramObject)
    throws IllegalAccessException
  {
    return this.field.get(paramObject);
  }

  public <T extends Annotation> T getAnnotation(Class<T> paramClass)
  {
    return this.field.getAnnotation(paramClass);
  }

  public Collection<Annotation> getAnnotations()
  {
    return Arrays.asList(this.field.getAnnotations());
  }

  public Class<?> getDeclaredClass()
  {
    return this.field.getType();
  }

  public Type getDeclaredType()
  {
    return this.field.getGenericType();
  }

  public Class<?> getDeclaringClass()
  {
    return this.field.getDeclaringClass();
  }

  public String getName()
  {
    return this.field.getName();
  }

  public boolean hasModifier(int paramInt)
  {
    return ((paramInt & this.field.getModifiers()) != 0);
  }

  boolean isSynthetic()
  {
    return this.field.isSynthetic();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.google.mygson.FieldAttributes
 * JD-Core Version:    0.5.3
 */