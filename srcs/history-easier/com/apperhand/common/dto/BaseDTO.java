package com.apperhand.common.dto;

import java.io.Serializable;

public abstract class BaseDTO
  implements Serializable
{
  protected static String NEW_LINE = System.getProperty("line.separator");
  private static final long serialVersionUID = 3527891079407840172L;

  public abstract String toString();
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.BaseDTO
 * JD-Core Version:    0.5.3
 */