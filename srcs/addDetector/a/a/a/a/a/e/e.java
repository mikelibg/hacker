package a.a.a.a.a.e;

import java.nio.ByteBuffer;

final class e
  implements t
{
  private final String a;

  public e()
  {
    this.a = null;
  }

  public e(String paramString)
  {
    this.a = paramString;
  }

  public final String a(byte[] paramArrayOfByte)
  {
    if (this.a == null)
      return new String(paramArrayOfByte);
    return new String(paramArrayOfByte, this.a);
  }

  public final boolean a(String paramString)
  {
    return true;
  }

  public final ByteBuffer b(String paramString)
  {
    if (this.a == null)
      return ByteBuffer.wrap(paramString.getBytes());
    return ByteBuffer.wrap(paramString.getBytes(this.a));
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.e
 * JD-Core Version:    0.5.3
 */