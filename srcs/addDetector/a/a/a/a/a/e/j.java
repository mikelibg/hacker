package a.a.a.a.a.e;

final class j
  implements Comparable
{
  public final char a;
  public final byte b;

  j(byte paramByte, char paramChar)
  {
    this.b = paramByte;
    this.a = paramChar;
  }

  public final int compareTo(Object paramObject)
  {
    j localj = (j)paramObject;
    return (this.a - localj.a);
  }

  public final String toString()
  {
    return "0x" + Integer.toHexString(0xFFFF & this.a) + "->0x" + Integer.toHexString(0xFF & this.b);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.j
 * JD-Core Version:    0.5.3
 */