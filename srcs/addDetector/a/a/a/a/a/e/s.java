package a.a.a.a.a.e;

import a.a.a.a.a.d;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.CRC32;
import java.util.zip.Deflater;

public final class s extends d
{
  static final byte[] c;
  static final byte[] d;
  static final byte[] e;
  static final byte[] f;
  private static final byte[] n = { 0, 0 };
  private static final byte[] o = { 0, 0, 0, 0 };
  protected boolean a;
  protected final Deflater b;
  private q g;
  private String h;
  private final List i;
  private final CRC32 j;
  private long k;
  private long l;
  private long m;
  private final Map p;
  private t q;
  private final byte[] r;
  private final RandomAccessFile s;
  private final OutputStream t;
  private boolean u;
  private boolean v;

  static
  {
    c = x.b.a();
    d = x.c.a();
    e = x.a.a();
    f = x.a(101010256L);
  }

  private void a()
  {
    while (!(this.b.needsInput()))
    {
      int i1;
      do
        i1 = this.b.deflate(this.r, 0, this.r.length);
      while (i1 <= 0);
      a(this.r, 0, i1);
    }
  }

  private void a(byte[] paramArrayOfByte)
  {
    a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  private void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.s != null)
    {
      this.s.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    this.t.write(paramArrayOfByte, paramInt1, paramInt2);
  }

  public final void close()
  {
    label59: q localq;
    int i1;
    boolean bool1;
    int i2;
    label166: f localf;
    boolean bool2;
    label190: int i3;
    if (!(this.a))
    {
      if (this.a)
        throw new IOException("This archive has already been finished");
      if (this.g != null)
        throw new IOException("This archives contains unclosed entries.");
      this.l = this.k;
      Iterator localIterator = this.i.iterator();
      if (localIterator.hasNext())
      {
        localq = (q)localIterator.next();
        a(e);
        this.k = (4L + this.k);
        a(y.a(0x14 | localq.c() << 8));
        this.k = (2L + this.k);
        i1 = localq.getMethod();
        bool1 = this.q.a(localq.getName());
        if ((!(bool1)) && (this.v))
        {
          i2 = 1;
          localf = new f();
          if ((!(this.u)) && (i2 == 0))
            break label671;
          bool2 = true;
          localf.a(bool2);
          if ((i1 != 8) || (this.s != null))
            break label858;
          i3 = 20;
          localf.c();
        }
      }
    }
    while (true)
    {
      a(y.a(i3));
      a(localf.e());
      this.k = (4L + this.k);
      a(y.a(i1));
      this.k = (2L + this.k);
      a(z.a(localq.getTime()));
      this.k = (4L + this.k);
      a(x.a(localq.getCrc()));
      a(x.a(localq.getCompressedSize()));
      a(x.a(localq.getSize()));
      this.k = (12L + this.k);
      if ((!(bool1)) && (this.v));
      for (t localt = u.a; ; localt = this.q)
      {
        ByteBuffer localByteBuffer2 = localt.b(localq.getName());
        a(y.a(localByteBuffer2.limit()));
        this.k = (2L + this.k);
        byte[] arrayOfByte2 = localq.d();
        a(y.a(arrayOfByte2.length));
        this.k = (2L + this.k);
        String str = localq.getComment();
        if (str == null)
          str = "";
        ByteBuffer localByteBuffer3 = localt.b(str);
        a(y.a(localByteBuffer3.limit()));
        this.k = (2L + this.k);
        a(n);
        this.k = (2L + this.k);
        a(y.a(localq.a()));
        this.k = (2L + this.k);
        a(x.a(localq.b()));
        this.k = (4L + this.k);
        a((byte[])this.p.get(localq));
        this.k = (4L + this.k);
        a(localByteBuffer2.array(), localByteBuffer2.arrayOffset(), localByteBuffer2.limit());
        this.k += localByteBuffer2.limit();
        a(arrayOfByte2);
        this.k += arrayOfByte2.length;
        a(localByteBuffer3.array(), localByteBuffer3.arrayOffset(), localByteBuffer3.limit());
        this.k += localByteBuffer3.limit();
        break label59:
        i2 = 0;
        break label166:
        label671: bool2 = false;
        break label190:
      }
      this.m = (this.k - this.l);
      a(f);
      a(n);
      a(n);
      byte[] arrayOfByte1 = y.a(this.i.size());
      a(arrayOfByte1);
      a(arrayOfByte1);
      a(x.a(this.m));
      a(x.a(this.l));
      ByteBuffer localByteBuffer1 = this.q.b(this.h);
      a(y.a(localByteBuffer1.limit()));
      a(localByteBuffer1.array(), localByteBuffer1.arrayOffset(), localByteBuffer1.limit());
      this.p.clear();
      this.i.clear();
      this.a = true;
      if (this.s != null)
        this.s.close();
      if (this.t != null)
        this.t.close();
      return;
      label858: i3 = 10;
    }
  }

  public final void flush()
  {
    if (this.t == null)
      return;
    this.t.flush();
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    z.a(this.g);
    if (this.g.getMethod() == 8)
      if ((paramInt2 > 0) && (!(this.b.finished())))
      {
        if (paramInt2 > 8192)
          break label70;
        this.b.setInput(paramArrayOfByte, paramInt1, paramInt2);
        a();
      }
    while (true)
    {
      this.j.update(paramArrayOfByte, paramInt1, paramInt2);
      a(paramInt2);
      return;
      label70: int i1 = paramInt2 / 8192;
      for (int i2 = 0; i2 < i1; ++i2)
      {
        this.b.setInput(paramArrayOfByte, paramInt1 + i2 * 8192, 8192);
        a();
      }
      int i3 = i1 * 8192;
      if (i3 >= paramInt2)
        continue;
      this.b.setInput(paramArrayOfByte, paramInt1 + i3, paramInt2 - i3);
      a();
      continue;
      a(paramArrayOfByte, paramInt1, paramInt2);
      this.k += paramInt2;
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.s
 * JD-Core Version:    0.5.3
 */