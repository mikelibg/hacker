package com.apperhand.common.dto.protocol;

import com.apperhand.common.dto.Bookmark;
import java.util.List;

public class BookmarksResponse extends BaseResponse
{
  private static final long serialVersionUID = -5041274328910999390L;
  private List<Bookmark> bookmarks;

  public List<Bookmark> getBookmarks()
  {
    return this.bookmarks;
  }

  public void setBookmarks(List<Bookmark> paramList)
  {
    this.bookmarks = paramList;
  }

  public String toString()
  {
    return "BookmarksResponse [bookmarks=" + this.bookmarks + ", toString()=" + super.toString() + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.protocol.BookmarksResponse
 * JD-Core Version:    0.5.3
 */