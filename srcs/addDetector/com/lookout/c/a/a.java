package com.lookout.c.a;

import com.lookout.c.d;
import java.io.File;

public class a extends d
  implements c
{
  protected File a;
  private com.lookout.b.a b;

  public a(File paramFile, com.lookout.b.a parama)
  {
    super("file://" + paramFile.getPath());
    this.a = paramFile;
    this.b = parama;
  }

  public void b()
  {
  }

  public String toString()
  {
    return this.a.toString();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.c.a.a
 * JD-Core Version:    0.5.3
 */