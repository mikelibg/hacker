package com.apperhand.common.dto;

import java.util.Locale;

public class ApplicationDetails extends BaseDTO
{
  private static final long serialVersionUID = 6231432081614762071L;
  private String abTestId;
  private String androidId;
  private String applicationId;
  private Build build;
  private String developerId;
  private String deviceId;
  private DisplayMetrics displayMetrics;
  private Locale locale;
  private String packageId;
  private String protocolVersion;
  private String sourceIp;
  private String userAgent;

  public String getAbTestId()
  {
    return this.abTestId;
  }

  public String getAndroidId()
  {
    return this.androidId;
  }

  public String getApplicationId()
  {
    return this.applicationId;
  }

  public Build getBuild()
  {
    return this.build;
  }

  public String getDeveloperId()
  {
    return this.developerId;
  }

  public String getDeviceId()
  {
    return this.deviceId;
  }

  public DisplayMetrics getDisplayMetrics()
  {
    return this.displayMetrics;
  }

  public Locale getLocale()
  {
    return this.locale;
  }

  public String getPackageId()
  {
    return this.packageId;
  }

  public String getProtocolVersion()
  {
    return this.protocolVersion;
  }

  public String getSourceIp()
  {
    return this.sourceIp;
  }

  public String getUserAgent()
  {
    return this.userAgent;
  }

  public void setAbTestId(String paramString)
  {
    this.abTestId = paramString;
  }

  public void setAndroidId(String paramString)
  {
    this.androidId = paramString;
  }

  public void setApplicationId(String paramString)
  {
    this.applicationId = paramString;
  }

  public void setBuild(Build paramBuild)
  {
    this.build = paramBuild;
  }

  public void setDeveloperId(String paramString)
  {
    this.developerId = paramString;
  }

  public void setDeviceId(String paramString)
  {
    this.deviceId = paramString;
  }

  public void setDisplayMetrics(DisplayMetrics paramDisplayMetrics)
  {
    this.displayMetrics = paramDisplayMetrics;
  }

  public void setLocale(Locale paramLocale)
  {
    this.locale = paramLocale;
  }

  public void setPackageId(String paramString)
  {
    this.packageId = paramString;
  }

  public void setProtocolVersion(String paramString)
  {
    this.protocolVersion = paramString;
  }

  public void setSourceIp(String paramString)
  {
    this.sourceIp = paramString;
  }

  public void setUserAgent(String paramString)
  {
    this.userAgent = paramString;
  }

  public String toString()
  {
    return "ApplicationDetails [applicationId=" + this.applicationId + ", developerId=" + this.developerId + ", sourceIp=" + this.sourceIp + ", userAgent=" + this.userAgent + ", deviceId=" + this.deviceId + ", locale=" + this.locale + ", protocolVersion=" + this.protocolVersion + ", displayMetrics=" + this.displayMetrics + ", build=" + this.build + ", packageId=" + this.packageId + ", androidId=" + this.androidId + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.ApplicationDetails
 * JD-Core Version:    0.5.3
 */