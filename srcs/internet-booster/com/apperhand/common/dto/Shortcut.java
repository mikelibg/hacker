package com.apperhand.common.dto;

public class Shortcut extends BaseDTO
{
  private static final long serialVersionUID = -7779209250474040249L;
  private byte[] icon;
  private long id;
  private String link;
  private String name;
  private int screen;
  private Status status;

  public Shortcut()
  {
    this(-1L, null, null, null, null, -1);
  }

  public Shortcut(long paramLong, String paramString1, String paramString2, byte[] paramArrayOfByte, Status paramStatus, int paramInt)
  {
    this.id = paramLong;
    this.name = paramString1;
    this.link = paramString2;
    this.icon = paramArrayOfByte;
    this.status = paramStatus;
    this.screen = paramInt;
  }

  public Shortcut clone()
  {
    Shortcut localShortcut = new Shortcut();
    localShortcut.setId(getId());
    localShortcut.setName(getName());
    localShortcut.setLink(getLink());
    localShortcut.setStatus(getStatus());
    localShortcut.setScreen(getScreen());
    System.arraycopy(getIcon(), 0, localShortcut.getIcon(), 0, getIcon().length);
    return localShortcut;
  }

  public byte[] getIcon()
  {
    return this.icon;
  }

  public long getId()
  {
    return this.id;
  }

  public String getLink()
  {
    return this.link;
  }

  public String getName()
  {
    return this.name;
  }

  public int getScreen()
  {
    return this.screen;
  }

  public Status getStatus()
  {
    return this.status;
  }

  public void setIcon(byte[] paramArrayOfByte)
  {
    this.icon = paramArrayOfByte;
  }

  public void setId(long paramLong)
  {
    this.id = paramLong;
  }

  public void setLink(String paramString)
  {
    this.link = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setScreen(int paramInt)
  {
    this.screen = paramInt;
  }

  public void setStatus(Status paramStatus)
  {
    this.status = paramStatus;
  }

  public String toString()
  {
    return "Shortcut [id=" + this.id + ", name=" + this.name + ", link=" + this.link + ", status=" + this.status + ", screen=" + this.screen + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.Shortcut
 * JD-Core Version:    0.5.3
 */