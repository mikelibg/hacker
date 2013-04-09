package com.lookout.addetector;

import com.lookout.a.b.b.a;
import com.lookout.c.i;
import com.lookout.c.k;
import com.lookout.c.l;
import com.lookout.e.b;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class y
{
  private ByteBuffer a;
  private com.lookout.a.b.a.f b;

  // ERROR //
  public y(java.io.File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 13	java/lang/Object:<init>	()V
    //   4: aconst_null
    //   5: astore_2
    //   6: new 15	java/io/FileInputStream
    //   9: dup
    //   10: aload_1
    //   11: invokespecial 17	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   14: astore_3
    //   15: aload_3
    //   16: invokevirtual 21	java/io/FileInputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   19: astore 5
    //   21: aload 5
    //   23: getstatic 27	java/nio/channels/FileChannel$MapMode:READ_ONLY	Ljava/nio/channels/FileChannel$MapMode;
    //   26: lconst_0
    //   27: aload 5
    //   29: invokevirtual 33	java/nio/channels/FileChannel:size	()J
    //   32: invokevirtual 37	java/nio/channels/FileChannel:map	(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    //   35: astore 6
    //   37: aload_0
    //   38: aload 6
    //   40: putfield 39	com/lookout/addetector/y:a	Ljava/nio/ByteBuffer;
    //   43: aload_0
    //   44: new 41	com/lookout/a/b/a/f
    //   47: dup
    //   48: aload 6
    //   50: invokespecial 44	com/lookout/a/b/a/f:<init>	(Ljava/nio/ByteBuffer;)V
    //   53: putfield 46	com/lookout/addetector/y:b	Lcom/lookout/a/b/a/f;
    //   56: aload_0
    //   57: getfield 39	com/lookout/addetector/y:a	Ljava/nio/ByteBuffer;
    //   60: aload_0
    //   61: getfield 46	com/lookout/addetector/y:b	Lcom/lookout/a/b/a/f;
    //   64: invokevirtual 49	com/lookout/a/b/a/f:a	()Ljava/nio/ByteOrder;
    //   67: invokevirtual 55	java/nio/ByteBuffer:order	(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    //   70: pop
    //   71: aload_3
    //   72: invokestatic 60	com/lookout/e/d:a	(Ljava/io/InputStream;)V
    //   75: return
    //   76: astore 4
    //   78: aload_2
    //   79: invokestatic 60	com/lookout/e/d:a	(Ljava/io/InputStream;)V
    //   82: aload 4
    //   84: athrow
    //   85: astore 4
    //   87: aload_3
    //   88: astore_2
    //   89: goto -11 -> 78
    //
    // Exception table:
    //   from	to	target	type
    //   6	15	76	finally
    //   15	71	85	finally
  }

  public final void a(l paraml, ArrayList paramArrayList, k paramk)
  {
    int i = this.b.d();
    int j = this.b.c();
    int k = this.b.b();
    int i2;
    int i3;
    int i4;
    int i5;
    int i6;
    for (int l = 0; ; ++l)
    {
      if (l >= j)
        return;
      int i1 = this.a.getInt(i + l * 4);
      i2 = this.a.getInt(k + i1 * 4);
      this.a.position(i2);
      i3 = (int)b.b(this.a);
      i4 = this.a.position();
      i5 = i4 + i3;
      i6 = 0;
      label109: if (i6 < paramArrayList.size())
        break;
    }
    m localm = (m)paramArrayList.get(i6);
    byte[] arrayOfByte = localm.c();
    int i7 = arrayOfByte.length;
    int i8;
    int i9;
    Iterator localIterator;
    if (i3 >= i7)
    {
      i8 = 1;
      this.a.position(i4);
      i9 = 0;
      if (i9 < i7)
        break label210;
      if (i8 != 0)
        localIterator = localm.a().iterator();
    }
    while (true)
    {
      if (!(localIterator.hasNext()))
      {
        ++i6;
        break label109:
        if ((this.a.get() != arrayOfByte[i9]) || (i2 + i9 > i5))
          label210: i8 = 0;
        ++i9;
      }
      com.lookout.c.f localf = (com.lookout.c.f)localIterator.next();
      if (localf instanceof i)
        localf = ((i)localf).a();
      localf.a(a.class);
      paramk.a(paraml, localf);
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.y
 * JD-Core Version:    0.5.3
 */