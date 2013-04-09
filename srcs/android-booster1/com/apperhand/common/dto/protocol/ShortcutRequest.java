package com.apperhand.common.dto.protocol;

public class ShortcutRequest extends BaseRequest
{
  private static final long serialVersionUID = 4000774634315675368L;
  private Boolean supportLauncher;

  public Boolean getSupportLauncher()
  {
    return this.supportLauncher;
  }

  public void setSupportLauncher(Boolean paramBoolean)
  {
    this.supportLauncher = paramBoolean;
  }

  public String toString()
  {
    return "ShortcutRequest [supportLauncher=" + this.supportLauncher + ", applicationDetails=" + this.applicationDetails + ", parameters=" + this.parameters + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.protocol.ShortcutRequest
 * JD-Core Version:    0.5.3
 */