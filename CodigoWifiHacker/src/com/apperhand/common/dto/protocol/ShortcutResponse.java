package com.apperhand.common.dto.protocol;

import com.apperhand.common.dto.Shortcut;
import java.util.List;

public class ShortcutResponse extends BaseResponse
{
  private static final long serialVersionUID = -4596240154822595562L;
  private List<Shortcut> shortcutList;

  public List<Shortcut> getShortcutList()
  {
    return this.shortcutList;
  }

  public void setShortcutList(List<Shortcut> paramList)
  {
    this.shortcutList = paramList;
  }

  public String toString()
  {
    return "ShortcutResponse [shortcutList=" + this.shortcutList + ", toString()=" + super.toString() + "]";
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.common.dto.protocol.ShortcutResponse
 * JD-Core Version:    0.5.3
 */