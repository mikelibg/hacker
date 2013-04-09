package com.apperhand.common.dto;

public class BaseBrowserItem extends BaseDTO
  implements Cloneable
{
  private static final long serialVersionUID = 4764842093155994768L;
  private byte[] favicon;
  private long id;
  private Status status;
  private String title;
  private String url;

  public BaseBrowserItem()
  {
  }

  public BaseBrowserItem(long paramLong, String paramString1, String paramString2, byte[] paramArrayOfByte, Status paramStatus)
  {
    this.id = paramLong;
    this.title = paramString1;
    this.url = paramString2;
    this.favicon = paramArrayOfByte;
    this.status = paramStatus;
  }

  public BaseBrowserItem clone()
  {
    BaseBrowserItem localBaseBrowserItem = new BaseBrowserItem();
    localBaseBrowserItem.setId(getId());
    localBaseBrowserItem.setTitle(getTitle());
    localBaseBrowserItem.setUrl(getUrl());
    localBaseBrowserItem.setStatus(getStatus());
    if (getFavicon() != null)
    {
      localBaseBrowserItem.setFavicon(new byte[getFavicon().length]);
      System.arraycopy(getFavicon(), 0, localBaseBrowserItem.getFavicon(), 0, getFavicon().length);
    }
    return localBaseBrowserItem;
  }

  public byte[] getFavicon()
  {
    return this.favicon;
  }

  public long getId()
  {
    return this.id;
  }

  public Status getStatus()
  {
    return this.status;
  }

  public String getTitle()
  {
    return this.title;
  }

  public String getUrl()
  {
    return this.url;
  }

  public void setFavicon(byte[] paramArrayOfByte)
  {
    this.favicon = paramArrayOfByte;
  }

  public void setId(long paramLong)
  {
    this.id = paramLong;
  }

  public void setStatus(Status paramStatus)
  {
    this.status = paramStatus;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public String toString()
  {
    return "BaseBrowserItem [id=" + this.id + ", title=" + this.title + ", url=" + this.url + ", status=" + this.status + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.BaseBrowserItem
 * JD-Core Version:    0.5.3
 */