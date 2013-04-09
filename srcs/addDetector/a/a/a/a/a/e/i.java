package a.a.a.a.a.e;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class i
  implements t
{
  private final char[] a;
  private final List b;

  public i(char[] paramArrayOfChar)
  {
    this.a = ((char[])paramArrayOfChar.clone());
    ArrayList localArrayList = new ArrayList(this.a.length);
    byte b1 = 127;
    for (int i = 0; i < this.a.length; ++i)
    {
      b1 = (byte)(b1 + 1);
      localArrayList.add(new j(b1, this.a[i]));
    }
    Collections.sort(localArrayList);
    this.b = Collections.unmodifiableList(localArrayList);
  }

  private j a(char paramChar)
  {
    int i = this.b.size();
    int j = 0;
    int k = i;
    label15: int l;
    j localj;
    if (k > j)
    {
      l = j + (k - j) / 2;
      localj = (j)this.b.get(l);
      if (localj.a != paramChar);
    }
    do
    {
      return localj;
      if (localj.a < paramChar)
        j = l + 1;
      k = l;
      break label15:
      if (j >= this.b.size())
        return null;
      localj = (j)this.b.get(j);
    }
    while (localj.a == paramChar);
    return null;
  }

  public final String a(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar = new char[paramArrayOfByte.length];
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      label7: int j = paramArrayOfByte[i];
      if (j >= 0);
      for (int k = (char)j; ; k = this.a[(j + 128)])
      {
        arrayOfChar[i] = k;
        ++i;
        break label7:
      }
    }
    return new String(arrayOfChar);
  }

  public final boolean a(String paramString)
  {
    for (int i = 0; i < paramString.length(); ++i)
    {
      char c = paramString.charAt(i);
      if ((c >= 0) && (c < 128));
      for (int j = 1; j == 0; j = 0)
        while (true)
        {
          return false;
          if (a(c) == null)
            break;
          j = 1;
        }
    }
    return true;
  }

  public final ByteBuffer b(String paramString)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(6 + paramString.length() + (1 + paramString.length()) / 2);
    int i = 0;
    if (i < paramString.length())
    {
      label22: char c = paramString.charAt(i);
      if (localByteBuffer.remaining() < 6)
        localByteBuffer = u.a(localByteBuffer, 6 + localByteBuffer.position());
      if ((c >= 0) && (c < 128))
        localByteBuffer.put((byte)c);
      for (int j = 1; ; j = 1)
      {
        j localj;
        while (true)
        {
          if (j == 0)
            u.a(localByteBuffer, c);
          ++i;
          break label22:
          localj = a(c);
          if (localj != null)
            break;
          j = 0;
        }
        localByteBuffer.put(localj.b);
      }
    }
    localByteBuffer.limit(localByteBuffer.position());
    localByteBuffer.rewind();
    return localByteBuffer;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.i
 * JD-Core Version:    0.5.3
 */