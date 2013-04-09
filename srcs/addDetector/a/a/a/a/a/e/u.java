package a.a.a.a.a.e;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.HashMap;
import java.util.Map;

abstract class u
{
  static final t a;
  private static final Map b = new HashMap();
  private static final byte[] c;

  static
  {
    v localv1 = new v(new char[] { 199, 252, 233, 226, 228, 224, 229, 231, 234, 235, 232, 239, 238, 236, 196, 197, 201, 230, 198, 244, 246, 242, 251, 249, 255, 214, 220, 162, 163, 165, 8359, 402, 225, 237, 243, 250, 241, 209, 170, 186, 191, 8976, 172, 189, 188, 161, 171, 187, 9617, 9618, 9619, 9474, 9508, 9569, 9570, 9558, 9557, 9571, 9553, 9559, 9565, 9564, 9563, 9488, 9492, 9524, 9516, 9500, 9472, 9532, 9566, 9567, 9562, 9556, 9577, 9574, 9568, 9552, 9580, 9575, 9576, 9572, 9573, 9561, 9560, 9554, 9555, 9579, 9578, 9496, 9484, 9608, 9604, 9612, 9616, 9600, 945, 223, 915, 960, 931, 963, 181, 964, 934, 920, 937, 948, 8734, 966, 949, 8745, 8801, 177, 8805, 8804, 8992, 8993, 247, 8776, 176, 8729, 183, 8730, 8319, 178, 9632, 160 });
    b.put("CP437", localv1);
    b.put("Cp437", localv1);
    b.put("cp437", localv1);
    b.put("IBM437", localv1);
    b.put("ibm437", localv1);
    v localv2 = new v(new char[] { 199, 252, 233, 226, 228, 224, 229, 231, 234, 235, 232, 239, 238, 236, 196, 197, 201, 230, 198, 244, 246, 242, 251, 249, 255, 214, 220, 248, 163, 216, 215, 402, 225, 237, 243, 250, 241, 209, 170, 186, 191, 174, 172, 189, 188, 161, 171, 187, 9617, 9618, 9619, 9474, 9508, 193, 194, 192, 169, 9571, 9553, 9559, 9565, 162, 165, 9488, 9492, 9524, 9516, 9500, 9472, 9532, 227, 195, 9562, 9556, 9577, 9574, 9568, 9552, 9580, 164, 240, 208, 202, 203, 200, 305, 205, 206, 207, 9496, 9484, 9608, 9604, 166, 204, 9600, 211, 223, 212, 210, 245, 213, 181, 254, 222, 218, 219, 217, 253, 221, 175, 180, 173, 177, 8215, 190, 182, 167, 247, 184, 176, 168, 183, 185, 179, 178, 9632, 160 });
    b.put("CP850", localv2);
    b.put("Cp850", localv2);
    b.put("cp850", localv2);
    b.put("IBM850", localv2);
    b.put("ibm850", localv2);
    c = new byte[] { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };
    a = new e("UTF8");
  }

  static t a(String paramString)
  {
    if (paramString == null);
    for (String str = System.getProperty("file.encoding"); ; str = paramString)
    {
      if (("UTF8".equalsIgnoreCase(str)) || ("utf-8".equalsIgnoreCase(str)));
      for (int i = 1; i != 0; i = 0)
        return a;
      if (paramString == null)
        return new e();
      v localv = (v)b.get(paramString);
      if (localv != null)
        return localv.a();
      try
      {
        h localh = new h(Charset.forName(paramString));
        return localh;
      }
      catch (UnsupportedCharsetException localUnsupportedCharsetException)
      {
        return new e(paramString);
      }
    }
  }

  static ByteBuffer a(ByteBuffer paramByteBuffer, int paramInt)
  {
    paramByteBuffer.limit(paramByteBuffer.position());
    paramByteBuffer.rewind();
    int i = 2 * paramByteBuffer.capacity();
    if (i < paramInt);
    while (true)
    {
      ByteBuffer localByteBuffer = ByteBuffer.allocate(paramInt);
      localByteBuffer.put(paramByteBuffer);
      return localByteBuffer;
      paramInt = i;
    }
  }

  static void a(ByteBuffer paramByteBuffer, char paramChar)
  {
    paramByteBuffer.put(37);
    paramByteBuffer.put(85);
    paramByteBuffer.put(c[(0xF & paramChar >> '\f')]);
    paramByteBuffer.put(c[(0xF & paramChar >> '\b')]);
    paramByteBuffer.put(c[(0xF & paramChar >> '\4')]);
    paramByteBuffer.put(c[(paramChar & 0xF)]);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.u
 * JD-Core Version:    0.5.3
 */