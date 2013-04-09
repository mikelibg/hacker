package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.Logger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

class d
  implements AppLovinAdLoadListener
{
  // ERROR //
  public void adReceived(com.applovin.sdk.AppLovinAd paramAppLovinAd)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/applovin/impl/sdk/d:a	Lcom/applovin/impl/sdk/b;
    //   4: invokestatic 27	com/applovin/impl/sdk/b:a	(Lcom/applovin/impl/sdk/b;)Ljava/lang/Object;
    //   7: astore_2
    //   8: aload_2
    //   9: monitorenter
    //   10: aload_0
    //   11: getfield 12	com/applovin/impl/sdk/d:a	Lcom/applovin/impl/sdk/b;
    //   14: aload_1
    //   15: invokestatic 30	com/applovin/impl/sdk/b:a	(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;
    //   18: pop
    //   19: aload_0
    //   20: getfield 12	com/applovin/impl/sdk/d:a	Lcom/applovin/impl/sdk/b;
    //   23: invokestatic 34	com/applovin/impl/sdk/b:b	(Lcom/applovin/impl/sdk/b;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    //   26: getstatic 40	com/applovin/impl/sdk/w:G	Lcom/applovin/impl/sdk/y;
    //   29: invokevirtual 45	com/applovin/impl/sdk/AppLovinSdkImpl:a	(Lcom/applovin/impl/sdk/y;)Ljava/lang/Object;
    //   32: checkcast 47	java/lang/Long
    //   35: invokevirtual 51	java/lang/Long:longValue	()J
    //   38: lstore 5
    //   40: lload 5
    //   42: lconst_0
    //   43: lcmp
    //   44: ifle +156 -> 200
    //   47: aload_0
    //   48: getfield 12	com/applovin/impl/sdk/d:a	Lcom/applovin/impl/sdk/b;
    //   51: invokestatic 56	java/lang/System:currentTimeMillis	()J
    //   54: lload 5
    //   56: ldc2_w 57
    //   59: lmul
    //   60: ladd
    //   61: invokestatic 61	com/applovin/impl/sdk/b:a	(Lcom/applovin/impl/sdk/b;J)J
    //   64: pop2
    //   65: new 63	java/util/ArrayList
    //   68: dup
    //   69: aload_0
    //   70: getfield 12	com/applovin/impl/sdk/d:a	Lcom/applovin/impl/sdk/b;
    //   73: invokestatic 67	com/applovin/impl/sdk/b:c	(Lcom/applovin/impl/sdk/b;)Ljava/util/Collection;
    //   76: invokespecial 70	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   79: astore 9
    //   81: aload_0
    //   82: getfield 12	com/applovin/impl/sdk/d:a	Lcom/applovin/impl/sdk/b;
    //   85: invokestatic 67	com/applovin/impl/sdk/b:c	(Lcom/applovin/impl/sdk/b;)Ljava/util/Collection;
    //   88: invokeinterface 75 1 0
    //   93: aload_0
    //   94: getfield 12	com/applovin/impl/sdk/d:a	Lcom/applovin/impl/sdk/b;
    //   97: iconst_0
    //   98: invokestatic 78	com/applovin/impl/sdk/b:a	(Lcom/applovin/impl/sdk/b;Z)Z
    //   101: pop
    //   102: aload_2
    //   103: monitorexit
    //   104: aload_0
    //   105: getfield 12	com/applovin/impl/sdk/d:a	Lcom/applovin/impl/sdk/b;
    //   108: invokestatic 81	com/applovin/impl/sdk/b:d	(Lcom/applovin/impl/sdk/b;)Ljava/util/Collection;
    //   111: astore 11
    //   113: aload 11
    //   115: monitorenter
    //   116: new 63	java/util/ArrayList
    //   119: dup
    //   120: aload_0
    //   121: getfield 12	com/applovin/impl/sdk/d:a	Lcom/applovin/impl/sdk/b;
    //   124: invokestatic 81	com/applovin/impl/sdk/b:d	(Lcom/applovin/impl/sdk/b;)Ljava/util/Collection;
    //   127: invokespecial 70	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   130: astore 12
    //   132: aload 11
    //   134: monitorexit
    //   135: aload 9
    //   137: invokeinterface 85 1 0
    //   142: astore 14
    //   144: aload 14
    //   146: invokeinterface 91 1 0
    //   151: ifeq +83 -> 234
    //   154: aload 14
    //   156: invokeinterface 95 1 0
    //   161: checkcast 6	com/applovin/sdk/AppLovinAdLoadListener
    //   164: astore 18
    //   166: aload 18
    //   168: aload_1
    //   169: invokeinterface 97 2 0
    //   174: goto -30 -> 144
    //   177: astore 19
    //   179: aload_0
    //   180: getfield 12	com/applovin/impl/sdk/d:a	Lcom/applovin/impl/sdk/b;
    //   183: invokestatic 101	com/applovin/impl/sdk/b:e	(Lcom/applovin/impl/sdk/b;)Lcom/applovin/sdk/Logger;
    //   186: ldc 103
    //   188: ldc 105
    //   190: aload 19
    //   192: invokeinterface 110 4 0
    //   197: goto -53 -> 144
    //   200: lload 5
    //   202: lconst_0
    //   203: lcmp
    //   204: ifne -139 -> 65
    //   207: aload_0
    //   208: getfield 12	com/applovin/impl/sdk/d:a	Lcom/applovin/impl/sdk/b;
    //   211: ldc2_w 111
    //   214: invokestatic 61	com/applovin/impl/sdk/b:a	(Lcom/applovin/impl/sdk/b;J)J
    //   217: pop2
    //   218: goto -153 -> 65
    //   221: astore_3
    //   222: aload_2
    //   223: monitorexit
    //   224: aload_3
    //   225: athrow
    //   226: astore 13
    //   228: aload 11
    //   230: monitorexit
    //   231: aload 13
    //   233: athrow
    //   234: aload 12
    //   236: invokeinterface 85 1 0
    //   241: astore 15
    //   243: aload 15
    //   245: invokeinterface 91 1 0
    //   250: ifeq +49 -> 299
    //   253: aload 15
    //   255: invokeinterface 95 1 0
    //   260: checkcast 114	com/applovin/sdk/AppLovinAdUpdateListener
    //   263: astore 16
    //   265: aload 16
    //   267: aload_1
    //   268: invokeinterface 117 2 0
    //   273: goto -30 -> 243
    //   276: astore 17
    //   278: aload_0
    //   279: getfield 12	com/applovin/impl/sdk/d:a	Lcom/applovin/impl/sdk/b;
    //   282: invokestatic 101	com/applovin/impl/sdk/b:e	(Lcom/applovin/impl/sdk/b;)Lcom/applovin/sdk/Logger;
    //   285: ldc 103
    //   287: ldc 119
    //   289: aload 17
    //   291: invokeinterface 110 4 0
    //   296: goto -53 -> 243
    //   299: aload_0
    //   300: getfield 12	com/applovin/impl/sdk/d:a	Lcom/applovin/impl/sdk/b;
    //   303: aload_1
    //   304: invokevirtual 125	com/applovin/sdk/AppLovinAd:getSize	()Lcom/applovin/sdk/AppLovinAdSize;
    //   307: invokestatic 128	com/applovin/impl/sdk/b:a	(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)V
    //   310: return
    //
    // Exception table:
    //   from	to	target	type
    //   166	174	177	java/lang/Throwable
    //   10	104	221	finally
    //   207	224	221	finally
    //   116	135	226	finally
    //   228	231	226	finally
    //   265	273	276	java/lang/Throwable
  }

  public void failedToReceiveAd(int paramInt)
  {
    synchronized (b.a(this.a))
    {
      ArrayList localArrayList = new ArrayList(b.c(this.a));
      b.c(this.a).clear();
      b.a(this.a, false);
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        AppLovinAdLoadListener localAppLovinAdLoadListener = (AppLovinAdLoadListener)localIterator.next();
        try
        {
          localAppLovinAdLoadListener.failedToReceiveAd(paramInt);
        }
        catch (Throwable localThrowable)
        {
          b.e(this.a).e("AppLovinAdService", "Unable to notify listener about ad load failure", localThrowable);
        }
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.d
 * JD-Core Version:    0.5.3
 */