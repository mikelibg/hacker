package com.apperhand.device.a.b;

import com.apperhand.common.dto.Bookmark;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.CommandStatus.Status;
import com.apperhand.common.dto.Status;
import com.apperhand.common.dto.protocol.BaseResponse;
import com.apperhand.common.dto.protocol.BookmarksRequest;
import com.apperhand.common.dto.protocol.BookmarksResponse;
import com.apperhand.common.dto.protocol.CommandStatusRequest;
import com.apperhand.device.a.d.c.a;
import com.apperhand.device.a.d.f;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class c extends b
{
  private com.apperhand.device.a.a.b g;
  private boolean h = false;

  public c(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command.Commands paramCommands)
  {
    super(paramb, parama, paramString, paramCommands);
    this.g = parama.d();
  }

  private BaseResponse a(BookmarksRequest paramBookmarksRequest)
  {
    BookmarksResponse localBookmarksResponse;
    try
    {
      localBookmarksResponse = (BookmarksResponse)this.e.b().a(paramBookmarksRequest, Command.Commands.BOOKMARKS, BookmarksResponse.class);
      return localBookmarksResponse;
    }
    catch (f localf)
    {
      this.e.a().a(c.a.b, this.a, "Unable to handle Bookmarks command!!!!", localf);
      localBookmarksResponse = null;
    }
  }

  protected final BaseResponse a()
    throws f
  {
    BookmarksRequest localBookmarksRequest = new BookmarksRequest();
    localBookmarksRequest.setApplicationDetails(this.e.j());
    return a(localBookmarksRequest);
  }

  protected final Map<String, Object> a(BaseResponse paramBaseResponse)
    throws f
  {
    List localList = ((BookmarksResponse)paramBaseResponse).getBookmarks();
    HashSet localHashSet = new HashSet();
    if (localList != null)
    {
      Iterator localIterator2 = localList.iterator();
      while (localIterator2.hasNext())
      {
        Bookmark localBookmark2 = (Bookmark)localIterator2.next();
        if (localBookmark2.getStatus() != Status.ADD)
          continue;
        localHashSet.add(com.apperhand.device.a.d.b.a(localBookmark2.getUrl()));
      }
    }
    Map localMap = this.g.a(localHashSet);
    if (localList != null)
    {
      Iterator localIterator1 = localList.iterator();
      while (localIterator1.hasNext())
      {
        Bookmark localBookmark1 = (Bookmark)localIterator1.next();
        String str1 = com.apperhand.device.a.d.b.a(localBookmark1.getUrl());
        switch (1.a[localBookmark1.getStatus().ordinal()])
        {
        default:
          com.apperhand.device.a.d.c localc = this.b;
          c.a locala = c.a.c;
          String str2 = this.a;
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = localBookmark1.getStatus();
          arrayOfObject[1] = localBookmark1.toString();
          localc.a(locala, str2, String.format("Unknown action %s for bookmark %s", arrayOfObject));
          break;
        case 1:
          if (localMap.get(str1) == null)
            this.g.a(localBookmark1);
          this.h = true;
          break;
        case 2:
          this.g.b(localBookmark1);
          break;
        case 3:
        }
        this.g.a();
      }
    }
    return null;
  }

  public final void a(Map<String, Object> paramMap)
    throws f
  {
    a(b());
  }

  protected final CommandStatusRequest b()
    throws f
  {
    CommandStatusRequest localCommandStatusRequest = super.b();
    String str;
    int i;
    label17: Command.Commands localCommands;
    if (!(this.h))
    {
      str = "Sababa!!!";
      i = 1;
      localCommands = Command.Commands.BOOKMARKS;
      if (i == 0)
        break label55;
    }
    for (CommandStatus.Status localStatus = CommandStatus.Status.SUCCESS; ; localStatus = CommandStatus.Status.FAILURE)
    {
      localCommandStatusRequest.setStatuses(a(localCommands, localStatus, str, null));
      return localCommandStatusRequest;
      str = "Bookmark is already exist";
      i = 0;
      label55: break label17:
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.a.b.c
 * JD-Core Version:    0.5.3
 */