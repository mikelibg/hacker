package com.apperhand.device.a;

import com.apperhand.common.dto.Command;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.device.a.b.h;
import com.apperhand.device.a.b.k;
import com.apperhand.device.a.d.c;
import com.apperhand.device.a.d.c.a;
import com.apperhand.device.a.d.f;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public abstract class b
{
  private long a;
  private String b = null;
  private boolean c = true;
  private boolean d;
  private a e;

  public b(a parama)
  {
    this.e = parama;
    this.a = 60L;
    this.d = true;
  }

  private void a(Throwable paramThrowable, Command paramCommand)
  {
    this.e.a().a(c.a.c, "Unexpected error!!! ", paramThrowable);
    if ((paramThrowable instanceof f) && (!(((f)paramThrowable).a())))
      return;
    a locala = this.e;
    String str = UUID.randomUUID().toString();
    if (paramCommand == null);
    for (Command.Commands localCommands = Command.Commands.UNEXPECTED_EXCEPTION; ; localCommands = paramCommand.getCommand())
    {
      k localk = new k(this, locala, str, localCommands, paramThrowable);
      try
      {
        HashMap localHashMap = new HashMap(1);
        localHashMap.put("exception_command", paramCommand);
        localk.a(localHashMap);
        return;
      }
      catch (f localf)
      {
        this.e.a().a(c.a.c, "Error sending unexpected exception!!!", localf);
        return;
      }
    }
  }

  // ERROR //
  public void a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: aload_0
    //   4: invokevirtual 100	com/apperhand/device/a/b:b	()Ljava/lang/String;
    //   7: putfield 20	com/apperhand/device/a/b:b	Ljava/lang/String;
    //   10: new 102	com/apperhand/common/dto/protocol/CommandsRequest
    //   13: dup
    //   14: invokespecial 103	com/apperhand/common/dto/protocol/CommandsRequest:<init>	()V
    //   17: astore_3
    //   18: aload_0
    //   19: getfield 24	com/apperhand/device/a/b:e	Lcom/apperhand/device/a/a;
    //   22: invokeinterface 107 1 0
    //   27: invokeinterface 112 1 0
    //   32: astore 4
    //   34: aload_0
    //   35: getfield 24	com/apperhand/device/a/b:e	Lcom/apperhand/device/a/a;
    //   38: invokeinterface 107 1 0
    //   43: ldc 114
    //   45: ldc 116
    //   47: iconst_1
    //   48: invokeinterface 119 4 0
    //   53: invokestatic 125	java/lang/Boolean:valueOf	(Ljava/lang/String;)Ljava/lang/Boolean;
    //   56: invokevirtual 128	java/lang/Boolean:booleanValue	()Z
    //   59: ifeq +357 -> 416
    //   62: iconst_0
    //   63: istore 5
    //   65: aconst_null
    //   66: astore_1
    //   67: aload 4
    //   69: ifnull +23 -> 92
    //   72: aload 4
    //   74: invokeinterface 134 1 0
    //   79: istore 6
    //   81: iconst_0
    //   82: istore 5
    //   84: iload 6
    //   86: ifle +6 -> 92
    //   89: goto +327 -> 416
    //   92: aload_3
    //   93: iload 5
    //   95: invokevirtual 138	com/apperhand/common/dto/protocol/CommandsRequest:setNeedSpecificParameters	(Z)V
    //   98: aload_0
    //   99: getfield 22	com/apperhand/device/a/b:c	Z
    //   102: ifeq +250 -> 352
    //   105: ldc 140
    //   107: astore 7
    //   109: aload_3
    //   110: aload 7
    //   112: invokevirtual 144	com/apperhand/common/dto/protocol/CommandsRequest:setInitiationType	(Ljava/lang/String;)V
    //   115: aload_3
    //   116: aload_0
    //   117: getfield 24	com/apperhand/device/a/b:e	Lcom/apperhand/device/a/a;
    //   120: invokeinterface 148 1 0
    //   125: invokevirtual 152	com/apperhand/common/dto/protocol/CommandsRequest:setApplicationDetails	(Lcom/apperhand/common/dto/ApplicationDetails;)V
    //   128: aload_3
    //   129: aload_0
    //   130: invokevirtual 155	com/apperhand/device/a/b:c	()J
    //   133: invokevirtual 159	com/apperhand/common/dto/protocol/CommandsRequest:setCurrentInterval	(J)V
    //   136: aload_0
    //   137: getfield 22	com/apperhand/device/a/b:c	Z
    //   140: istore 8
    //   142: aconst_null
    //   143: astore_1
    //   144: iload 8
    //   146: ifeq +264 -> 410
    //   149: new 76	java/util/HashMap
    //   152: dup
    //   153: iconst_1
    //   154: invokespecial 79	java/util/HashMap:<init>	(I)V
    //   157: astore 9
    //   159: aload 9
    //   161: ldc 161
    //   163: getstatic 165	java/lang/Boolean:TRUE	Ljava/lang/Boolean;
    //   166: invokevirtual 166	java/lang/Boolean:toString	()Ljava/lang/String;
    //   169: invokevirtual 85	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   172: pop
    //   173: aload_0
    //   174: getfield 24	com/apperhand/device/a/b:e	Lcom/apperhand/device/a/a;
    //   177: invokeinterface 169 1 0
    //   182: aload_3
    //   183: getstatic 172	com/apperhand/common/dto/Command$Commands:COMMANDS	Lcom/apperhand/common/dto/Command$Commands;
    //   186: aload 9
    //   188: ldc 174
    //   190: invokeinterface 179 5 0
    //   195: checkcast 174	com/apperhand/common/dto/protocol/CommandsResponse
    //   198: astore 11
    //   200: aload 11
    //   202: invokevirtual 182	com/apperhand/common/dto/protocol/CommandsResponse:isValidResponse	()Z
    //   205: ifne +154 -> 359
    //   208: aload_0
    //   209: ldc2_w 183
    //   212: invokevirtual 186	com/apperhand/device/a/b:c	(J)V
    //   215: aload_0
    //   216: getfield 24	com/apperhand/device/a/b:e	Lcom/apperhand/device/a/a;
    //   219: invokeinterface 38 1 0
    //   224: getstatic 43	com/apperhand/device/a/d/c$a:c	Lcom/apperhand/device/a/d/c$a;
    //   227: ldc 188
    //   229: invokeinterface 191 3 0
    //   234: aconst_null
    //   235: astore 13
    //   237: aconst_null
    //   238: astore_1
    //   239: aload 13
    //   241: ifnull +157 -> 398
    //   244: aload_0
    //   245: invokevirtual 193	com/apperhand/device/a/b:d	()V
    //   248: aload 13
    //   250: invokeinterface 199 1 0
    //   255: astore 14
    //   257: aload 14
    //   259: invokeinterface 204 1 0
    //   264: ifeq +134 -> 398
    //   267: aload 14
    //   269: invokeinterface 208 1 0
    //   274: checkcast 92	com/apperhand/common/dto/Command
    //   277: astore 15
    //   279: aload_0
    //   280: aload 15
    //   282: aload_0
    //   283: getfield 24	com/apperhand/device/a/b:e	Lcom/apperhand/device/a/a;
    //   286: invokestatic 213	com/apperhand/device/a/b/h:a	(Lcom/apperhand/device/a/b;Lcom/apperhand/common/dto/Command;Lcom/apperhand/device/a/a;)Lcom/apperhand/device/a/b/b;
    //   289: astore 17
    //   291: aload 17
    //   293: ifnull +53 -> 346
    //   296: aload_0
    //   297: getfield 24	com/apperhand/device/a/b:e	Lcom/apperhand/device/a/a;
    //   300: invokeinterface 38 1 0
    //   305: getstatic 215	com/apperhand/device/a/d/c$a:b	Lcom/apperhand/device/a/d/c$a;
    //   308: new 217	java/lang/StringBuilder
    //   311: dup
    //   312: ldc 219
    //   314: invokespecial 221	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   317: aload 15
    //   319: invokevirtual 96	com/apperhand/common/dto/Command:getCommand	()Lcom/apperhand/common/dto/Command$Commands;
    //   322: invokevirtual 224	com/apperhand/common/dto/Command$Commands:getString	()Ljava/lang/String;
    //   325: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   328: ldc 230
    //   330: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   333: invokevirtual 231	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   336: invokeinterface 191 3 0
    //   341: aload 17
    //   343: invokevirtual 235	com/apperhand/device/a/b/b:c	()V
    //   346: aload 15
    //   348: astore_1
    //   349: goto -92 -> 257
    //   352: ldc 237
    //   354: astore 7
    //   356: goto -247 -> 109
    //   359: aload_0
    //   360: aload 11
    //   362: invokevirtual 240	com/apperhand/common/dto/protocol/CommandsResponse:getCommandsInterval	()J
    //   365: invokevirtual 186	com/apperhand/device/a/b:c	(J)V
    //   368: aload_0
    //   369: aload 11
    //   371: invokestatic 245	com/apperhand/device/a/d/e:a	(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/lang/String;
    //   374: invokevirtual 247	com/apperhand/device/a/b:b	(Ljava/lang/String;)V
    //   377: aload 11
    //   379: invokevirtual 251	com/apperhand/common/dto/protocol/CommandsResponse:getCommands	()Ljava/util/List;
    //   382: astore 12
    //   384: aload 12
    //   386: astore 13
    //   388: goto -151 -> 237
    //   391: astore_2
    //   392: aload_0
    //   393: aload_2
    //   394: aload_1
    //   395: invokespecial 253	com/apperhand/device/a/b:a	(Ljava/lang/Throwable;Lcom/apperhand/common/dto/Command;)V
    //   398: return
    //   399: astore 16
    //   401: aload 15
    //   403: astore_1
    //   404: aload 16
    //   406: astore_2
    //   407: goto -15 -> 392
    //   410: aconst_null
    //   411: astore 9
    //   413: goto -240 -> 173
    //   416: iconst_1
    //   417: istore 5
    //   419: goto -327 -> 92
    //
    // Exception table:
    //   from	to	target	type
    //   2	62	391	java/lang/Throwable
    //   72	81	391	java/lang/Throwable
    //   92	105	391	java/lang/Throwable
    //   109	142	391	java/lang/Throwable
    //   149	173	391	java/lang/Throwable
    //   173	234	391	java/lang/Throwable
    //   244	257	391	java/lang/Throwable
    //   257	279	391	java/lang/Throwable
    //   359	384	391	java/lang/Throwable
    //   279	291	399	java/lang/Throwable
    //   296	346	399	java/lang/Throwable
  }

  public abstract void a(long paramLong);

  public final void a(Command paramCommand)
  {
    try
    {
      com.apperhand.device.a.b.b localb = h.a(this, paramCommand, this.e);
      if (localb != null)
        localb.c();
      return;
    }
    catch (Throwable localThrowable)
    {
      a(localThrowable, paramCommand);
    }
  }

  public final void a(Command paramCommand, Map<String, Object> paramMap)
  {
    try
    {
      com.apperhand.device.a.b.b localb = h.a(this, paramCommand, this.e);
      if (localb != null)
        localb.a(paramMap);
      return;
    }
    catch (Throwable localThrowable)
    {
      a(localThrowable, paramCommand);
    }
  }

  protected abstract void a(String paramString);

  public final void a(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  protected abstract String b();

  protected abstract void b(long paramLong);

  public final void b(String paramString)
  {
    if (paramString != null)
      if (paramString.length() <= 0)
        break label25;
    while (true)
    {
      this.b = paramString;
      a(this.b);
      return;
      label25: paramString = null;
    }
  }

  protected abstract long c();

  public final void c(long paramLong)
  {
    if (paramLong <= 0L)
      return;
    this.a = paramLong;
    b(paramLong);
  }

  protected abstract void d();

  public final long e()
  {
    return this.a;
  }

  public final String f()
  {
    return this.b;
  }

  public final void g()
  {
    this.d = false;
  }

  public final boolean h()
  {
    return this.d;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.apperhand.device.a.b
 * JD-Core Version:    0.5.3
 */