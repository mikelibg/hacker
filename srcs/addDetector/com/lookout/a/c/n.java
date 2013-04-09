package com.lookout.a.c;

import java.io.DataInputStream;
import java.io.EOFException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class n
  implements XmlPullParser
{
  private static final a.b.b a = a.b.c.a(n.class);
  private DataInputStream b;
  private String c;
  private o d;
  private i e;
  private Stack f = new Stack();
  private int g;
  private Map h = new HashMap();

  public n()
  {
    this.h.clear();
    this.f.clear();
    this.g = 0;
  }

  private boolean c()
  {
    return (c.class.equals(d().getClass()));
  }

  private f d()
  {
    return ((f)this.f.peek());
  }

  public final o a()
  {
    return this.d;
  }

  public final i b()
  {
    return this.e;
  }

  public void defineEntityReplacementText(String paramString1, String paramString2)
  {
  }

  public int getAttributeCount()
  {
    if (d() == null);
    do
      return 0;
    while (!(c()));
    return ((c)d()).c();
  }

  public String getAttributeName(int paramInt)
  {
    if ((d() == null) || (paramInt > getAttributeCount()))
      throw new IllegalArgumentException("Current element does not have an attribute for index=" + paramInt);
    return ((c)d()).d()[paramInt].b();
  }

  public String getAttributeNamespace(int paramInt)
  {
    if ((d() == null) || (paramInt > getAttributeCount()))
      throw new IllegalArgumentException("Current element does not have an attribute for index=" + paramInt);
    return ((c)d()).d()[paramInt].a();
  }

  public String getAttributePrefix(int paramInt)
  {
    String str = getAttributeNamespace(paramInt);
    if (str != null)
    {
      e locale = (e)this.h.get(str);
      if (locale != null)
        return locale.a();
    }
    return "";
  }

  public String getAttributeType(int paramInt)
  {
    return null;
  }

  public String getAttributeValue(int paramInt)
  {
    if ((d() == null) || (paramInt > getAttributeCount()))
      throw new IllegalArgumentException("Current element does not have an attribute for index=" + paramInt);
    return ((c)d()).d()[paramInt].c();
  }

  public String getAttributeValue(String paramString1, String paramString2)
  {
    if (d() == null)
      throw new IllegalStateException("Request for attributes without current element state.");
    for (a locala : ((c)d()).d())
      if ((((paramString1 == null) || (locala.a().equals(paramString1)))) && (locala.b().equals(paramString2)))
        return locala.c();
    return null;
  }

  public int getColumnNumber()
  {
    return 0;
  }

  public int getDepth()
  {
    return this.f.size();
  }

  public int getEventType()
  {
    return this.g;
  }

  public boolean getFeature(String paramString)
  {
    return false;
  }

  public String getInputEncoding()
  {
    return this.c;
  }

  public int getLineNumber()
  {
    if (d() != null)
      return d().e();
    return 0;
  }

  public String getName()
  {
    if ((d() != null) && (c()))
      return ((c)d()).b();
    return "";
  }

  public String getNamespace()
  {
    if ((d() != null) && (c()))
      return ((c)d()).a();
    return "";
  }

  public String getNamespace(String paramString)
  {
    Iterator localIterator = this.h.values().iterator();
    e locale;
    while (localIterator.hasNext())
    {
      locale = (e)localIterator.next();
      if (locale.a().equals(paramString))
        return locale.b();
    }
    return "";
  }

  public int getNamespaceCount(int paramInt)
  {
    throw new IllegalStateException("Not implemented.");
  }

  public String getNamespacePrefix(int paramInt)
  {
    throw new a.a.a.b.b("getNamespacePrefix(int)");
  }

  public String getNamespaceUri(int paramInt)
  {
    throw new a.a.a.b.b("getNamespaceUri(int)");
  }

  public String getPositionDescription()
  {
    if (d() != null)
      return d().f();
    return "";
  }

  public String getPrefix()
  {
    if ((d() != null) && (c()))
    {
      e locale = (e)this.h.get(((c)d()).a());
      if (locale != null)
        return locale.a();
    }
    return "";
  }

  public Object getProperty(String paramString)
  {
    throw new a.a.a.b.b("getProperty(String)");
  }

  public String getText()
  {
    if (d() != null)
    {
      if (b.class.equals(d().getClass()));
      for (int i = 1; i != 0; i = 0)
        return ((b)d()).a();
    }
    return "";
  }

  public char[] getTextCharacters(int[] paramArrayOfInt)
  {
    throw new a.a.a.b.b("getTextCharacters(int[])");
  }

  public boolean isAttributeDefault(int paramInt)
  {
    throw new a.a.a.b.b("isAttributeDefault(index)");
  }

  public boolean isEmptyElementTag()
  {
    throw new a.a.a.b.b("isEmptyElementTag()");
  }

  public boolean isWhitespace()
  {
    throw new a.a.a.b.b("isEmptyElementTag()");
  }

  public int next()
  {
    if (this.g == 1)
      throw new EOFException("Called parser.next() when EOF already signaled - malformed file?");
    if ((this.g == 3) || (this.g == 4))
      this.f.pop();
    while (true)
    {
      g localg;
      try
      {
        localg = new g();
        localg.a(this.b);
        switch (localg.a())
        {
        default:
          this.b.skip(-8 + localg.c());
        case 3:
        case 1:
        case 384:
        case 256:
        case 257:
        case 258:
        case 259:
        case 260:
        }
      }
      catch (EOFException localEOFException)
      {
        this.g = 1;
        this.f.clear();
        return this.g;
      }
      this.g = 0;
      continue;
      this.d = new o(localg);
      this.d.a(this.b);
      continue;
      this.b.skip(-8 + localg.c());
      continue;
      e locale2 = new e(this);
      locale2.a(this.b);
      this.h.put(locale2.b(), locale2);
      continue;
      e locale1 = new e(this);
      locale1.a(this.b);
      this.h.remove(locale1.b());
      continue;
      c localc = new c(this);
      localc.a(this.b);
      this.g = 2;
      this.f.push(localc);
      continue;
      new d(this).a(this.b);
      this.g = 3;
      continue;
      b localb = new b(this);
      localb.a(this.b);
      this.f.push(localb);
      this.g = 4;
    }
  }

  public int nextTag()
  {
    int i;
    do
      i = next();
    while ((i != 2) && (i != 1));
    return i;
  }

  public String nextText()
  {
    throw new a.a.a.b.b("nextText()");
  }

  public int nextToken()
  {
    return next();
  }

  public void require(int paramInt, String paramString1, String paramString2)
  {
    if ((paramInt == this.g) && (((paramString1 == null) || (getNamespace().equals(paramString1)))) && (((paramString2 == null) || (getName().equals(paramString2)))))
      return;
    throw new XmlPullParserException("required state(" + paramInt + ", " + paramString1 + ", " + paramString2 + ") not met.");
  }

  public void setFeature(String paramString, boolean paramBoolean)
  {
    throw new a.a.a.b.b("");
  }

  public void setInput(InputStream paramInputStream, String paramString)
  {
    this.b = new DataInputStream(paramInputStream);
    this.c = paramString;
  }

  public void setInput(Reader paramReader)
  {
    throw new a.a.a.b.b("setInput(Reader)");
  }

  public void setProperty(String paramString, Object paramObject)
  {
    throw new a.a.a.b.b("setProperty(String, value)");
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.c.n
 * JD-Core Version:    0.5.3
 */