package com.google.mygson.stream;

final class StringPool
{
  private final String[] pool = new String[512];

  public String get(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = 0;
    for (int j = paramInt1; j < paramInt1 + paramInt2; ++j)
      i = i * 31 + paramArrayOfChar[j];
    int k = i ^ i >>> 20 ^ i >>> 12;
    int l = (k ^ k >>> 7 ^ k >>> 4) & -1 + this.pool.length;
    String str1 = this.pool[l];
    if ((str1 == null) || (str1.length() != paramInt2))
    {
      String str2 = new String(paramArrayOfChar, paramInt1, paramInt2);
      this.pool[l] = str2;
      return str2;
    }
    for (int i1 = 0; i1 < paramInt2; ++i1)
    {
      if (str1.charAt(i1) == paramArrayOfChar[(paramInt1 + i1)])
        continue;
      String str3 = new String(paramArrayOfChar, paramInt1, paramInt2);
      this.pool[l] = str3;
      return str3;
    }
    return str1;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.google.mygson.stream.StringPool
 * JD-Core Version:    0.5.3
 */