package a.a.a.a.a.e;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

final class h
  implements t
{
  private final Charset a;

  public h(Charset paramCharset)
  {
    this.a = paramCharset;
  }

  public final String a(byte[] paramArrayOfByte)
  {
    return this.a.newDecoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT).decode(ByteBuffer.wrap(paramArrayOfByte)).toString();
  }

  public final boolean a(String paramString)
  {
    CharsetEncoder localCharsetEncoder = this.a.newEncoder();
    localCharsetEncoder.onMalformedInput(CodingErrorAction.REPORT);
    localCharsetEncoder.onUnmappableCharacter(CodingErrorAction.REPORT);
    return localCharsetEncoder.canEncode(paramString);
  }

  public final ByteBuffer b(String paramString)
  {
    CharsetEncoder localCharsetEncoder = this.a.newEncoder();
    localCharsetEncoder.onMalformedInput(CodingErrorAction.REPORT);
    localCharsetEncoder.onUnmappableCharacter(CodingErrorAction.REPORT);
    CharBuffer localCharBuffer = CharBuffer.wrap(paramString);
    ByteBuffer localByteBuffer = ByteBuffer.allocate(paramString.length() + (1 + paramString.length()) / 2);
    CoderResult localCoderResult;
    do
      while (true)
      {
        if (localCharBuffer.remaining() <= 0)
          break label183;
        localCoderResult = localCharsetEncoder.encode(localCharBuffer, localByteBuffer, true);
        if ((localCoderResult.isUnmappable()) || (localCoderResult.isMalformed()))
        {
          if (6 * localCoderResult.length() > localByteBuffer.remaining())
            localByteBuffer = u.a(localByteBuffer, localByteBuffer.position() + 6 * localCoderResult.length());
          for (int i = 0; ; ++i)
          {
            if (i < localCoderResult.length());
            u.a(localByteBuffer, localCharBuffer.get());
          }
        }
        if (!(localCoderResult.isOverflow()))
          break;
        localByteBuffer = u.a(localByteBuffer, 0);
      }
    while (!(localCoderResult.isUnderflow()));
    localCharsetEncoder.flush(localByteBuffer);
    label183: localByteBuffer.limit(localByteBuffer.position());
    localByteBuffer.rewind();
    return localByteBuffer;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.h
 * JD-Core Version:    0.5.3
 */