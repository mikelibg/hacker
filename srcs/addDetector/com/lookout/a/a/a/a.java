package com.lookout.a.a.a;

import com.lookout.a.a.b.i;
import com.lookout.a.a.b.j;
import java.io.File;
import java.util.List;

public class a extends com.lookout.c.a.b
{
  private static final a.b.b b = a.b.c.a(a.class);
  private static final String[] i = { ".RSA", ".DSA" };
  private i c;
  private byte[] d;
  private byte[][] e;
  private byte[][] f;
  private List g;
  private com.lookout.a.b.a.c h;

  private a(File paramFile)
  {
    super(paramFile, com.lookout.b.a.d);
    this.c = null;
    this.d = null;
    this.e = null;
    this.f = null;
    this.g = null;
    this.h = null;
  }

  public a(String paramString)
  {
    this(new File(paramString));
  }

  // ERROR //
  private i e()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 49	com/lookout/a/a/a/a:c	Lcom/lookout/a/a/b/i;
    //   6: ifnonnull +134 -> 140
    //   9: aload_0
    //   10: invokevirtual 72	com/lookout/a/a/a/a:d	()La/a/a/a/a/c;
    //   13: astore 5
    //   15: aload 5
    //   17: astore_3
    //   18: aload_3
    //   19: ldc 74
    //   21: invokestatic 79	com/lookout/e/a:a	(La/a/a/a/a/c;Ljava/lang/String;)La/a/a/a/a/a;
    //   24: astore 6
    //   26: aconst_null
    //   27: astore_1
    //   28: aload 6
    //   30: ifnonnull +54 -> 84
    //   33: new 69	java/io/IOException
    //   36: dup
    //   37: new 81	java/lang/StringBuilder
    //   40: dup
    //   41: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   44: ldc 74
    //   46: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: ldc 89
    //   51: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokespecial 94	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   60: athrow
    //   61: astore_2
    //   62: new 96	com/lookout/a/a/b/j
    //   65: dup
    //   66: aload_2
    //   67: invokespecial 99	com/lookout/a/a/b/j:<init>	(Ljava/lang/Throwable;)V
    //   70: athrow
    //   71: astore 4
    //   73: aload_3
    //   74: invokestatic 104	com/lookout/e/d:a	(Ljava/io/InputStream;)V
    //   77: aload_1
    //   78: invokestatic 104	com/lookout/e/d:a	(Ljava/io/InputStream;)V
    //   81: aload 4
    //   83: athrow
    //   84: new 106	java/io/ByteArrayOutputStream
    //   87: dup
    //   88: invokespecial 107	java/io/ByteArrayOutputStream:<init>	()V
    //   91: astore 7
    //   93: aload_3
    //   94: aload 7
    //   96: invokestatic 110	com/lookout/e/a:a	(La/a/a/a/a/c;Ljava/io/OutputStream;)I
    //   99: pop
    //   100: new 112	java/io/ByteArrayInputStream
    //   103: dup
    //   104: aload 7
    //   106: invokevirtual 116	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   109: invokespecial 119	java/io/ByteArrayInputStream:<init>	([B)V
    //   112: astore 9
    //   114: aload_0
    //   115: invokevirtual 72	com/lookout/a/a/a/a:d	()La/a/a/a/a/c;
    //   118: astore_1
    //   119: aload_0
    //   120: new 121	com/lookout/a/a/b/i
    //   123: dup
    //   124: aload 9
    //   126: invokespecial 123	com/lookout/a/a/b/i:<init>	(Ljava/io/InputStream;)V
    //   129: putfield 49	com/lookout/a/a/a/a:c	Lcom/lookout/a/a/b/i;
    //   132: aload_3
    //   133: invokestatic 104	com/lookout/e/d:a	(Ljava/io/InputStream;)V
    //   136: aload_1
    //   137: invokestatic 104	com/lookout/e/d:a	(Ljava/io/InputStream;)V
    //   140: aload_0
    //   141: getfield 49	com/lookout/a/a/a/a:c	Lcom/lookout/a/a/b/i;
    //   144: areturn
    //   145: astore 4
    //   147: aconst_null
    //   148: astore_1
    //   149: aconst_null
    //   150: astore_3
    //   151: goto -78 -> 73
    //   154: astore_2
    //   155: aconst_null
    //   156: astore_1
    //   157: aconst_null
    //   158: astore_3
    //   159: goto -97 -> 62
    //
    // Exception table:
    //   from	to	target	type
    //   18	26	61	java/io/IOException
    //   33	61	61	java/io/IOException
    //   84	132	61	java/io/IOException
    //   18	26	71	finally
    //   33	61	71	finally
    //   62	71	71	finally
    //   84	132	71	finally
    //   9	15	145	finally
    //   9	15	154	java/io/IOException
  }

  public final a.a.a.a.a.c a()
  {
    return d();
  }

  public final void b()
  {
    this.c = null;
    if (this.h != null)
    {
      this.h.a();
      this.h = null;
    }
    super.b();
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(c());
    try
    {
      i locali = e();
      localStringBuilder.append(" - [min=").append(locali.a()).append(" target=").append(locali.b()).append("] - ").append(e().c()).append(" - ");
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
    catch (j localj)
    {
      b.c("Failed to get manifest");
      localStringBuilder.append(" - [manifest unavailable] - ");
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.a.a.a
 * JD-Core Version:    0.5.3
 */