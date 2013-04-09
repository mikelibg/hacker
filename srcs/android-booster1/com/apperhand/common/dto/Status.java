package com.apperhand.common.dto;

public enum Status
{
  static
  {
    Status[] arrayOfStatus = new Status[4];
    arrayOfStatus[0] = ADD;
    arrayOfStatus[1] = DELETE;
    arrayOfStatus[2] = EXISTS;
    arrayOfStatus[3] = UPDATE;
    $VALUES = arrayOfStatus;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.Status
 * JD-Core Version:    0.5.3
 */