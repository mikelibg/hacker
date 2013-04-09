package com.apperhand.common.dto.protocol;

import com.apperhand.common.dto.NotificationDTO;
import java.util.List;

public class NotificationsResponse extends BaseResponse
{
  private static final long serialVersionUID = 1985755731838717602L;
  private List<NotificationDTO> notifications;

  public List<NotificationDTO> getNotifications()
  {
    return this.notifications;
  }

  public void setNotifications(List<NotificationDTO> paramList)
  {
    this.notifications = paramList;
  }

  public String toString()
  {
    return "NotificationResponse [notifications=" + this.notifications + ", toString()=" + super.toString() + "]";
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.common.dto.protocol.NotificationsResponse
 * JD-Core Version:    0.5.3
 */