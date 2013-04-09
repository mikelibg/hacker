package com.lookout.c.a;

import a.a.a.a.a.c;
import a.a.a.a.a.e;
import com.lookout.e.d;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public class b extends a
{
  private c b;

  public b(File paramFile, com.lookout.b.a parama)
  {
    this(paramFile, new FileInputStream(paramFile), parama);
  }

  private b(File paramFile, InputStream paramInputStream, com.lookout.b.a parama)
  {
    super(paramFile, parama);
    try
    {
      new e();
      this.b = e.a(new BufferedInputStream(paramInputStream, 8192));
      return;
    }
    catch (a.a.a.a.a.b localb)
    {
      throw new IOException("Failed to initialize ArchiveInputStream: " + paramFile.getName());
    }
  }

  public void b()
  {
    d.a(this.b);
    super.b();
  }

  protected final c d()
  {
    try
    {
      new e();
      c localc = e.a(new BufferedInputStream(new FileInputStream(this.a), 8192));
      return localc;
    }
    catch (a.a.a.a.a.b localb)
    {
      throw new IOException("Failed to re-initialize ArchiveInputStream: " + this.a.getName());
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.c.a.b
 * JD-Core Version:    0.5.3
 */