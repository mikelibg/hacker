package com.lookout.a.b.a;

import com.lookout.e.b;
import com.lookout.e.c;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class f
{
  private ByteBuffer a;

  public f(ByteBuffer paramByteBuffer)
  {
    this.a = paramByteBuffer;
  }

  private int e()
  {
    return this.a.getInt(8);
  }

  public final ByteOrder a()
  {
    int i = b.a(this.a);
    if (i == 305419896)
      return ByteOrder.LITTLE_ENDIAN;
    if (i == 2018915346)
      return ByteOrder.BIG_ENDIAN;
    throw new IllegalStateException("Invalid endian value 0x" + Integer.toHexString(b.a(this.a)));
  }

  public final int b()
  {
    return this.a.getInt(60);
  }

  public final int c()
  {
    return this.a.getInt(64);
  }

  public final int d()
  {
    return this.a.getInt(68);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Dalvik Executable\n");
    localStringBuilder.append("Magic: ").append(new String(b.a(this.a, 0, 8))).append("\n");
    localStringBuilder.append("Byte order ").append(a()).append("\n");
    localStringBuilder.append("Checksum: 0x").append(Integer.toHexString(e())).append(" [").append(e()).append("]\n");
    localStringBuilder.append("Signature: ").append(new String(c.a(b.a(this.a, 12, 20)))).append("\n");
    localStringBuilder.append("File Size: ").append(this.a.getInt(32)).append("\n");
    localStringBuilder.append("Header Size: ").append(this.a.getInt(36)).append("\n");
    localStringBuilder.append("Endian: 0x").append(Integer.toHexString(b.a(this.a))).append("\n");
    localStringBuilder.append("Link: size=").append(this.a.getInt(44)).append(" offset=").append(this.a.getInt(48)).append("\n");
    localStringBuilder.append("Map: offset=").append(this.a.getInt(52)).append("\n");
    localStringBuilder.append("Strings: size=").append(this.a.getInt(56)).append(" offset=").append(b()).append("\n");
    localStringBuilder.append("Types: size=").append(c()).append(" offset=").append(d()).append("\n");
    localStringBuilder.append("Fields: size=").append(this.a.getInt(80)).append(" offset=").append(this.a.getInt(84)).append("\n");
    localStringBuilder.append("Methods: size=").append(this.a.getInt(88)).append(" offset=").append(this.a.getInt(92)).append("\n");
    localStringBuilder.append("Classes: size=").append(this.a.getInt(96)).append(" offset=").append(this.a.getInt(100)).append("\n");
    localStringBuilder.append("Data: size=").append(this.a.getInt(104)).append(" offset=").append(this.a.getInt(108)).append("\n");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.b.a.f
 * JD-Core Version:    0.5.3
 */