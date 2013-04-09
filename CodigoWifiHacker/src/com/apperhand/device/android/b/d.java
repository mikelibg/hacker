package com.apperhand.device.android.b;

import android.content.Context;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.protocol.BaseResponse;
import com.apperhand.device.a.d.f.a;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicHeader;

public final class d
  implements com.apperhand.device.a.c.a
{
  private final String a;
  private final Context b;
  private final com.apperhand.device.a.a c;
  private final com.apperhand.device.a.b d;

  public d(Context paramContext, com.apperhand.device.a.a parama, com.apperhand.device.a.b paramb, String paramString)
  {
    this.b = paramContext;
    this.c = parama;
    this.d = paramb;
    this.a = paramString;
  }

  private String a(Command.Commands paramCommands)
    throws com.apperhand.device.a.d.f
  {
    if ((this.a == null) || (this.a.equals("")))
      throw new com.apperhand.device.a.d.f(f.a.a, "Unable to handle the command. The server url is not set correctly!!!");
    String str1 = paramCommands.getUri();
    if (str1 == null)
    {
      str1 = new String(com.apperhand.device.a.d.b.a(com.apperhand.device.a.d.a.a(paramCommands.getInternalUri(), 0), null));
      paramCommands.setUri(str1);
    }
    String str2;
    if (this.a.endsWith("/"))
      str2 = this.a.substring(0, -1 + this.a.length()) + str1;
    while (true)
      try
      {
        InetAddress.getByName(str2);
        label118: return str2;
        str2 = this.a + str1;
      }
      catch (UnknownHostException localUnknownHostException)
      {
        break label118:
      }
  }

  public final <T extends BaseResponse> T a(Object paramObject, Command.Commands paramCommands, Class<T> paramClass)
    throws com.apperhand.device.a.d.f
  {
    b localb = b.a;
    String str1 = localb.a(paramObject);
    ArrayList localArrayList = new ArrayList();
    Object localObject = com.apperhand.device.android.c.f.a(this.b);
    try
    {
      String str3 = URLEncoder.encode((String)localObject, "UTF-8");
      localObject = str3;
      localArrayList.add(new BasicHeader("device-id", (String)localObject));
      localArrayList.add(new BasicHeader("protocol-version", this.c.l()));
      localArrayList.add(new BasicHeader("User-Agent", this.c.m()));
      String str2 = this.d.f();
      if (str2 != null)
        localArrayList.add(new BasicHeader("ab-ts", str2));
      byte[] arrayOfByte = str1.getBytes();
      return ((BaseResponse)localb.a(com.apperhand.device.android.c.d.a(a(paramCommands), arrayOfByte, localArrayList), paramClass));
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.android.b.d
 * JD-Core Version:    0.5.3
 */