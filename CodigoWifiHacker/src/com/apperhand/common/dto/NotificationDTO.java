package com.apperhand.common.dto;

public class NotificationDTO extends BaseDTO
{
  private static final long serialVersionUID = -7960026072330883551L;
  private String bodyText;
  private byte[] icon;
  private String link;
  private String tickerText;
  private String title;

  public NotificationDTO()
  {
    this(-1, null, null, null, null, null);
  }

  public NotificationDTO(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, byte[] paramArrayOfByte)
  {
    this.tickerText = paramString2;
    this.title = paramString3;
    this.bodyText = paramString4;
    this.link = paramString1;
    this.icon = paramArrayOfByte;
  }

  public NotificationDTO clone()
  {
    NotificationDTO localNotificationDTO = new NotificationDTO();
    localNotificationDTO.setTitle(getTitle());
    localNotificationDTO.setLink(getLink());
    localNotificationDTO.setTickerText(getTickerText());
    localNotificationDTO.setBodyText(getBodyText());
    System.arraycopy(getIcon(), 0, localNotificationDTO.getIcon(), 0, getIcon().length);
    return localNotificationDTO;
  }

  public String getBodyText()
  {
    return this.bodyText;
  }

  public byte[] getIcon()
  {
    return this.icon;
  }

  public String getLink()
  {
    return this.link;
  }

  public String getTickerText()
  {
    return this.tickerText;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setBodyText(String paramString)
  {
    this.bodyText = paramString;
  }

  public void setIcon(byte[] paramArrayOfByte)
  {
    this.icon = paramArrayOfByte;
  }

  public void setLink(String paramString)
  {
    this.link = paramString;
  }

  public void setTickerText(String paramString)
  {
    this.tickerText = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public String toString()
  {
    return "NotificationDTO [tickerText=" + this.tickerText + ", title=" + this.title + ", bodyText=" + this.bodyText + ", link=" + this.link + "]";
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.common.dto.NotificationDTO
 * JD-Core Version:    0.5.3
 */