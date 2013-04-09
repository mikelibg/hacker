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
  private com.apperhand.device.a.a.b f;
  private boolean g = false;

  public c(com.apperhand.device.a.b paramb, com.apperhand.device.a.a parama, String paramString, Command.Commands paramCommands)
  {
    super(paramb, parama, paramString, paramCommands);
    this.f = parama.d();
  }

  private BaseResponse a(BookmarksRequest paramBookmarksRequest)
  {
    try
    {
      BookmarksResponse localBookmarksResponse = (BookmarksResponse)this.d.b().a(paramBookmarksRequest, Command.Commands.BOOKMARKS, null, BookmarksResponse.class);
      return localBookmarksResponse;
    }
    catch (f localf)
    {
      this.d.a().a(c.a.b, "Unable to handle Bookmarks command!!!!", localf);
    }
    return null;
  }

  protected final BaseResponse a()
    throws f
  {
    BookmarksRequest localBookmarksRequest = new BookmarksRequest();
    localBookmarksRequest.setApplicationDetails(this.d.j());
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
    Map localMap = this.f.a(localHashSet);
    if (localList != null)
    {
      Iterator localIterator1 = localList.iterator();
      while (localIterator1.hasNext())
      {
        Bookmark localBookmark1 = (Bookmark)localIterator1.next();
        String str = com.apperhand.device.a.d.b.a(localBookmark1.getUrl());
        switch (1.a[localBookmark1.getStatus().ordinal()])
        {
        default:
          com.apperhand.device.a.d.c localc = this.a;
          c.a locala = c.a.c;
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = localBookmark1.getStatus();
          arrayOfObject[1] = localBookmark1.toString();
          localc.a(locala, String.format("Unknown action %s for bookmark %s", arrayOfObject));
          break;
        case 1:
          if (localMap.get(str) == null)
            this.f.a(localBookmark1);
          this.g = true;
          break;
        case 2:
          this.f.b(localBookmark1);
          break;
        case 3:
        }
        this.f.a();
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
    if (!(this.g))
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

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.device.a.b.c
 * JD-Core Version:    0.5.3
 */