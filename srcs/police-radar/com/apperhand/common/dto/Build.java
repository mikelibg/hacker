package com.apperhand.common.dto;

public class Build extends BaseDTO
{
  private static final long serialVersionUID = 4764386617418790541L;
  private String brand;
  private String device;
  private String manufacturer;
  private String model;
  private String networkCode;
  private String os;
  private String versionRelease;
  private int versionSDKInt;

  public String getBrand()
  {
    return this.brand;
  }

  public String getDevice()
  {
    return this.device;
  }

  public String getManufacturer()
  {
    return this.manufacturer;
  }

  public String getModel()
  {
    return this.model;
  }

  public String getNetworkCode()
  {
    return this.networkCode;
  }

  public String getOs()
  {
    return this.os;
  }

  public String getVersionRelease()
  {
    return this.versionRelease;
  }

  public int getVersionSDKInt()
  {
    return this.versionSDKInt;
  }

  public void setBrand(String paramString)
  {
    this.brand = paramString;
  }

  public void setDevice(String paramString)
  {
    this.device = paramString;
  }

  public void setManufacturer(String paramString)
  {
    this.manufacturer = paramString;
  }

  public void setModel(String paramString)
  {
    this.model = paramString;
  }

  public void setNetworkCode(String paramString)
  {
    this.networkCode = paramString;
  }

  public void setOs(String paramString)
  {
    this.os = paramString;
  }

  public void setVersionRelease(String paramString)
  {
    this.versionRelease = paramString;
  }

  public void setVersionSDKInt(int paramInt)
  {
    this.versionSDKInt = paramInt;
  }

  public String toString()
  {
    return "Build [os=" + this.os + ", brand=" + this.brand + ", device=" + this.device + ", manufacturer=" + this.manufacturer + ", model=" + this.model + ", versionRelease=" + this.versionRelease + ", versionSDKInt=" + this.versionSDKInt + ", networkCode=" + this.networkCode + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.Build
 * JD-Core Version:    0.5.3
 */