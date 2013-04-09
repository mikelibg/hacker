package com.lookout.addetector;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import com.lookout.a.a.a.a;
import com.lookout.c.d;
import java.util.Set;

public final class n extends d
{
  private final PackageInfo a;
  private a b;

  public n(PackageInfo paramPackageInfo)
  {
    super("package://" + paramPackageInfo.packageName);
    this.a = paramPackageInfo;
  }

  public final PackageInfo a()
  {
    return this.a;
  }

  public final a a_()
  {
    if (this.b == null)
    {
      this.b = new a(this.a.applicationInfo.publicSourceDir);
      b_().add(this.b);
    }
    return this.b;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.n
 * JD-Core Version:    0.5.3
 */