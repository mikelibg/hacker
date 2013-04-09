package com.apperhand.common.dto;

public class Bookmark extends BaseBrowserItem
{
  private static final long serialVersionUID = -5295312317729930242L;

  public Bookmark()
  {
  }

  public Bookmark(long paramLong, String paramString1, String paramString2, byte[] paramArrayOfByte, Status paramStatus)
  {
    super(paramLong, paramString1, paramString2, paramArrayOfByte, paramStatus);
  }

  public Bookmark clone()
  {
    BaseBrowserItem localBaseBrowserItem = super.clone();
    return new Bookmark(localBaseBrowserItem.getId(), localBaseBrowserItem.getTitle(), localBaseBrowserItem.getUrl(), localBaseBrowserItem.getFavicon(), localBaseBrowserItem.getStatus());
  }

  public String toString()
  {
    return super.toString();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.Bookmark
 * JD-Core Version:    0.5.3
 */