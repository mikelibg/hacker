package com.lookout.addetector;

import android.app.ProgressDialog;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.util.Log;
import com.lookout.c.c;
import com.lookout.c.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class r extends AsyncTask
{
  private ProgressDialog b;
  private Handler c;

  private com.lookout.c.a a(PackageInfo paramPackageInfo)
  {
    c localc = new c();
    n localn = new n(paramPackageInfo);
    label31: com.lookout.c.a locala;
    Iterator localIterator;
    try
    {
      ScannerMainActivity.c(this.a).a(localn, localc);
      locala = new com.lookout.c.a();
      locala.addAll(localc.a(localn));
      localIterator = localn.b_().iterator();
      if (localIterator.hasNext())
        break label95;
      label95: return locala;
    }
    catch (Exception localException)
    {
      Log.d("AdNetworkScanner", Log.getStackTraceString(localException));
      break label31:
      locala.addAll(localc.a((com.lookout.c.l)localIterator.next()));
    }
  }

  private Parcelable[] a()
  {
    Log.d("AdNetworkScanner", "scanAll");
    long l1 = System.currentTimeMillis();
    List localList = ScannerMainActivity.a(this.a).getInstalledPackages(0);
    ((l)ScannerMainActivity.c(this.a)).a(this.a.getApplicationContext());
    ArrayList localArrayList1 = new ArrayList();
    w.a = new HashMap();
    Iterator localIterator1 = localList.iterator();
    int i = 0;
    while (true)
    {
      h[] arrayOfh;
      int i2;
      PackageInfo localPackageInfo1;
      if (!(localIterator1.hasNext()))
      {
        ScannerMainActivity.a(this.a, new ArrayList());
        arrayOfh = h.values();
        int i1 = arrayOfh.length;
        i2 = 0;
        if (i2 >= i1)
        {
          Log.d("AdNetworkScanner", "-- total time: " + (System.currentTimeMillis() - l1) + " --");
          Parcelable[] arrayOfParcelable = new Parcelable[localArrayList1.size()];
          localArrayList1.toArray(arrayOfParcelable);
          Log.d("AdNetworkScanner", "*****************results.size****************** " + arrayOfParcelable.length);
          return arrayOfParcelable;
        }
      }
      else
      {
        localPackageInfo1 = (PackageInfo)localIterator1.next();
      }
      PackageInfo localPackageInfo2;
      label235: int j;
      label387: AdNetworkInfo[] arrayOfAdNetworkInfo;
      Iterator localIterator2;
      int k;
      try
      {
        PackageInfo localPackageInfo3 = ScannerMainActivity.a(this.a).getPackageInfo(localPackageInfo1.packageName, 15);
        localPackageInfo2 = localPackageInfo3;
        StringBuilder localStringBuilder = new StringBuilder("Scanned ");
        Log.d("AdNetworkScanner", (++i) + " of " + localList.size() + ": " + localPackageInfo2.packageName);
        String str = (String)localPackageInfo2.applicationInfo.loadLabel(ScannerMainActivity.a(this.a));
        if (this.c != null)
        {
          Message localMessage = this.c.obtainMessage();
          Bundle localBundle = localMessage.getData();
          localBundle.putString("APP_NAME", str);
          localBundle.putInt("CURRENT_APP_INDEX", i);
          this.c.sendMessage(localMessage);
        }
        if (this.a.getPackageManager().checkPermission("android.permission.INTERNET", localPackageInfo2.packageName) != 0)
          break label512;
        j = 1;
        if (j != 0);
        com.lookout.c.a locala = a(localPackageInfo2);
        Log.d("AdNetworkScanner", locala.toString());
        if ((locala != null) && (locala.size() > 0));
        arrayOfAdNetworkInfo = new AdNetworkInfo[locala.size()];
        localIterator2 = locala.iterator();
        k = 0;
        label444: if (localIterator2.hasNext())
          break label518;
        label512: label518: localArrayList1.add(new AppInfo(localPackageInfo2, arrayOfAdNetworkInfo));
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Log.e("AdNetworkScanner", "Unable to find package info for " + localPackageInfo1.packageName);
        localPackageInfo2 = localPackageInfo1;
        break label235:
        j = 0;
        break label387:
        com.lookout.c.f localf = (com.lookout.c.f)localIterator2.next();
        if (localf instanceof com.lookout.c.e);
        long l2 = ((com.lookout.c.e)localf).a();
        com.lookout.d.a.a.a locala1 = com.lookout.d.a.a.e.a().a(l2);
        Log.d("AdNetworkScanner", "***************** network name ****************** " + locala1.a());
        f.a();
        AdNetworkInfo localAdNetworkInfo1 = f.a(locala1.a());
        if (localAdNetworkInfo1 != null);
        int l = k + 1;
        arrayOfAdNetworkInfo[k] = localAdNetworkInfo1;
        if (!(w.a.containsKey(localAdNetworkInfo1)))
        {
          ArrayList localArrayList2 = new ArrayList(1);
          localArrayList2.add(localPackageInfo2);
          w.a.put(localAdNetworkInfo1, localArrayList2);
          k = l;
        }
        ArrayList localArrayList3 = (ArrayList)w.a.get(localAdNetworkInfo1);
        if (!(localArrayList3.contains(localPackageInfo2)))
        {
          localArrayList3.add(localPackageInfo2);
          w.a.put(localAdNetworkInfo1, localArrayList3);
        }
        k = l;
        break label444:
        h localh = arrayOfh[i2];
        ArrayList localArrayList4 = new ArrayList();
        Iterator localIterator3 = w.a.keySet().iterator();
        while (true)
        {
          if (!(localIterator3.hasNext()))
          {
            CapabilityInfo localCapabilityInfo = new CapabilityInfo(localh.a(this.a.getApplicationContext()), (AdNetworkInfo[])localArrayList4.toArray(new AdNetworkInfo[0]));
            ScannerMainActivity.b(this.a).add(localCapabilityInfo);
            ++i2;
          }
          AdNetworkInfo localAdNetworkInfo2 = (AdNetworkInfo)localIterator3.next();
          if (!(localAdNetworkInfo2.a(localh)))
            continue;
          localArrayList4.add(localAdNetworkInfo2);
        }
      }
    }
  }

  protected final void onPreExecute()
  {
    Looper localLooper = Looper.getMainLooper();
    if (localLooper == null)
      localLooper = Looper.myLooper();
    if (localLooper == null)
      throw new RuntimeException("Can't create handler inside thread that has not called Looper.prepare()");
    this.c = new s(this, localLooper);
    this.b = new t(this, this.a);
    this.b.setProgressStyle(1);
    this.b.setCancelable(false);
    this.b.setTitle("Analyzing apps...");
    this.b.setProgress(0);
    int i = ScannerMainActivity.a(this.a).getInstalledPackages(0).size();
    if (this.b != null)
      this.b.setMax(i);
    this.b.show();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.r
 * JD-Core Version:    0.5.3
 */