package com.parse.codec.language;

import com.parse.codec.EncoderException;
import com.parse.codec.StringEncoder;
import java.util.Locale;

public class DoubleMetaphone
  implements StringEncoder
{
  private static final String[] ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER;
  private static final String[] L_R_N_M_B_H_F_V_W_SPACE;
  private static final String[] L_T_K_S_N_M_B_Z;
  private static final String[] SILENT_START = { "GN", "KN", "PN", "WR", "PS" };
  private static final String VOWELS = "AEIOUY";
  private int maxCodeLen = 4;

  static
  {
    L_R_N_M_B_H_F_V_W_SPACE = new String[] { "L", "R", "N", "M", "B", "H", "F", "V", "W", " " };
    ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER = new String[] { "ES", "EP", "EB", "EL", "EY", "IB", "IL", "IN", "IE", "EI", "ER" };
    L_T_K_S_N_M_B_Z = new String[] { "L", "T", "K", "S", "N", "M", "B", "Z" };
  }

  private String cleanInput(String paramString)
  {
    String str1 = null;
    if (paramString == null);
    while (true)
    {
      return str1;
      String str2 = paramString.trim();
      int i = str2.length();
      str1 = null;
      if (i == 0)
        continue;
      str1 = str2.toUpperCase(Locale.ENGLISH);
    }
  }

  private boolean conditionC0(String paramString, int paramInt)
  {
    if (contains(paramString, paramInt, 4, "CHIA"));
    for (int i = 1; ; i = 1)
    {
      boolean bool3;
      do
      {
        boolean bool2;
        do
        {
          boolean bool1;
          do
          {
            do
            {
              return i;
              i = 0;
            }
            while (paramInt <= 1);
            bool1 = isVowel(charAt(paramString, paramInt - 2));
            i = 0;
          }
          while (bool1);
          bool2 = contains(paramString, paramInt - 1, 3, "ACH");
          i = 0;
        }
        while (!(bool2));
        int j = charAt(paramString, paramInt + 2);
        if ((j != 73) && (j != 69))
          break;
        bool3 = contains(paramString, paramInt - 2, 6, "BACHER", "MACHER");
        i = 0;
      }
      while (!(bool3));
    }
  }

  private boolean conditionCH0(String paramString, int paramInt)
  {
    if (paramInt != 0);
    for (int i = 0; ; i = 1)
      while (true)
      {
        return i;
        if ((!(contains(paramString, paramInt + 1, 5, "HARAC", "HARIS"))) && (!(contains(paramString, paramInt + 1, 3, "HOR", "HYM", "HIA", "HEM"))))
          i = 0;
        if (!(contains(paramString, 0, 5, "CHORE")))
          break;
        i = 0;
      }
  }

  private boolean conditionCH1(String paramString, int paramInt)
  {
    if ((contains(paramString, 0, 4, "VAN ", "VON ")) || (contains(paramString, 0, 3, "SCH")) || (contains(paramString, paramInt - 2, 6, "ORCHES", "ARCHIT", "ORCHID")) || (contains(paramString, paramInt + 2, 1, "T", "S")) || ((((contains(paramString, paramInt - 1, 1, "A", "O", "U", "E")) || (paramInt == 0))) && (((contains(paramString, paramInt + 2, 1, L_R_N_M_B_H_F_V_W_SPACE)) || (paramInt + 1 == -1 + paramString.length())))));
    for (int i = 1; ; i = 0)
      return i;
  }

  private boolean conditionL0(String paramString, int paramInt)
  {
    if ((paramInt == -3 + paramString.length()) && (contains(paramString, paramInt - 1, 4, "ILLO", "ILLA", "ALLE")));
    for (int i = 1; ; i = 0)
      while (true)
      {
        return i;
        if (((!(contains(paramString, -2 + paramString.length(), 2, "AS", "OS"))) && (!(contains(paramString, -1 + paramString.length(), 1, "A", "O")))) || (!(contains(paramString, paramInt - 1, 4, "ALLE"))))
          break;
        i = 1;
      }
  }

  private boolean conditionM0(String paramString, int paramInt)
  {
    int i = 1;
    if (charAt(paramString, paramInt + 1) == 'M');
    while (true)
    {
      return i;
      if ((contains(paramString, paramInt - 1, 3, "UMB")) && (((paramInt + 1 == -1 + paramString.length()) || (contains(paramString, paramInt + 2, 2, "ER")))))
        continue;
      i = 0;
    }
  }

  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2 });
  }

  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
  {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3 });
  }

  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4)
  {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3, paramString4 });
  }

  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3, paramString4, paramString5 });
  }

  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3, paramString4, paramString5, paramString6 });
  }

  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3, paramString4, paramString5, paramString6, paramString7 });
  }

  protected static boolean contains(String paramString, int paramInt1, int paramInt2, String[] paramArrayOfString)
  {
    int i = 0;
    String str;
    if (paramInt1 >= 0)
    {
      int j = paramInt1 + paramInt2;
      int k = paramString.length();
      i = 0;
      if (j <= k)
        str = paramString.substring(paramInt1, paramInt1 + paramInt2);
    }
    for (int l = 0; ; ++l)
    {
      int i1 = paramArrayOfString.length;
      i = 0;
      if (l < i1)
      {
        if (!(str.equals(paramArrayOfString[l])))
          continue;
        i = 1;
      }
      return i;
    }
  }

  private int handleAEIOUY(DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if (paramInt == 0)
      paramDoubleMetaphoneResult.append('A');
    return (paramInt + 1);
  }

  private int handleC(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if (conditionC0(paramString, paramInt))
      paramDoubleMetaphoneResult.append('K');
    for (int i = paramInt + 2; ; i = paramInt + 1)
      while (true)
      {
        for (int j = i; ; j = handleCC(paramString, paramDoubleMetaphoneResult, paramInt))
        {
          label20: return j;
          if ((paramInt == 0) && (contains(paramString, paramInt, 6, "CAESAR")))
          {
            paramDoubleMetaphoneResult.append('S');
            i = paramInt + 2;
          }
          if (contains(paramString, paramInt, 2, "CH"))
            i = handleCH(paramString, paramDoubleMetaphoneResult, paramInt);
          if ((contains(paramString, paramInt, 2, "CZ")) && (!(contains(paramString, paramInt - 2, 4, "WICZ"))))
          {
            paramDoubleMetaphoneResult.append('S', 'X');
            i = paramInt + 2;
          }
          if (contains(paramString, paramInt + 1, 3, "CIA"))
          {
            paramDoubleMetaphoneResult.append('X');
            i = paramInt + 3;
          }
          if ((!(contains(paramString, paramInt, 2, "CC"))) || ((paramInt == 1) && (charAt(paramString, 0) == 'M')))
            break;
        }
        if (contains(paramString, paramInt, 2, "CK", "CG", "CQ"))
        {
          paramDoubleMetaphoneResult.append('K');
          i = paramInt + 2;
        }
        if (contains(paramString, paramInt, 2, "CI", "CE", "CY"))
        {
          if (contains(paramString, paramInt, 3, "CIO", "CIE", "CIA"))
            paramDoubleMetaphoneResult.append('S', 'X');
          while (true)
          {
            i = paramInt + 2;
            break label20:
            paramDoubleMetaphoneResult.append('S');
          }
        }
        paramDoubleMetaphoneResult.append('K');
        if (contains(paramString, paramInt + 1, 2, " C", " Q", " G"))
          i = paramInt + 3;
        if ((!(contains(paramString, paramInt + 1, 1, "C", "K", "Q"))) || (contains(paramString, paramInt + 1, 2, "CE", "CI")))
          break;
        i = paramInt + 2;
      }
  }

  private int handleCC(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if ((contains(paramString, paramInt + 2, 1, "I", "E", "H")) && (!(contains(paramString, paramInt + 2, 2, "HU"))))
      if (((paramInt == 1) && (charAt(paramString, paramInt - 1) == 'A')) || (contains(paramString, paramInt - 1, 5, "UCCEE", "UCCES")))
        paramDoubleMetaphoneResult.append("KS");
    for (int i = paramInt + 3; ; i = paramInt + 2)
    {
      label74: return i;
      paramDoubleMetaphoneResult.append('X');
      break label74:
      paramDoubleMetaphoneResult.append('K');
    }
  }

  private int handleCH(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if ((paramInt > 0) && (contains(paramString, paramInt, 4, "CHAE")))
      paramDoubleMetaphoneResult.append('K', 'X');
    for (int i = paramInt + 2; ; i = paramInt + 2)
    {
      while (true)
      {
        label29: return i;
        if (!(conditionCH0(paramString, paramInt)))
          break;
        paramDoubleMetaphoneResult.append('K');
        i = paramInt + 2;
      }
      if (!(conditionCH1(paramString, paramInt)))
        break;
      paramDoubleMetaphoneResult.append('K');
    }
    if (paramInt > 0)
      if (contains(paramString, 0, 2, "MC"))
        paramDoubleMetaphoneResult.append('K');
    while (true)
    {
      i = paramInt + 2;
      break label29:
      paramDoubleMetaphoneResult.append('X', 'K');
      continue;
      paramDoubleMetaphoneResult.append('X');
    }
  }

  private int handleD(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if (contains(paramString, paramInt, 2, "DG"))
      if (contains(paramString, paramInt + 2, 1, "I", "E", "Y"))
        paramDoubleMetaphoneResult.append('J');
    for (int i = paramInt + 3; ; i = paramInt + 1)
    {
      while (true)
      {
        return i;
        paramDoubleMetaphoneResult.append("TK");
        i = paramInt + 2;
        continue;
        if (!(contains(paramString, paramInt, 2, "DT", "DD")))
          break;
        paramDoubleMetaphoneResult.append('T');
        i = paramInt + 2;
      }
      paramDoubleMetaphoneResult.append('T');
    }
  }

  private int handleG(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt, boolean paramBoolean)
  {
    int i;
    if (charAt(paramString, paramInt + 1) == 'H')
      i = handleGH(paramString, paramDoubleMetaphoneResult, paramInt);
    while (true)
    {
      label22: return i;
      if (charAt(paramString, paramInt + 1) == 'N')
      {
        if ((paramInt == 1) && (isVowel(charAt(paramString, 0))) && (!(paramBoolean)))
          paramDoubleMetaphoneResult.append("KN", "N");
        while (true)
        {
          i = paramInt + 2;
          break label22:
          if ((!(contains(paramString, paramInt + 2, 2, "EY"))) && (charAt(paramString, paramInt + 1) != 'Y') && (!(paramBoolean)))
            paramDoubleMetaphoneResult.append("N", "KN");
          paramDoubleMetaphoneResult.append("KN");
        }
      }
      if ((contains(paramString, paramInt + 1, 2, "LI")) && (!(paramBoolean)))
      {
        paramDoubleMetaphoneResult.append("KL", "L");
        i = paramInt + 2;
      }
      if ((paramInt == 0) && (((charAt(paramString, paramInt + 1) == 'Y') || (contains(paramString, paramInt + 1, 2, ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER)))))
      {
        paramDoubleMetaphoneResult.append('K', 'J');
        i = paramInt + 2;
      }
      if ((((contains(paramString, paramInt + 1, 2, "ER")) || (charAt(paramString, paramInt + 1) == 'Y'))) && (!(contains(paramString, 0, 6, "DANGER", "RANGER", "MANGER"))) && (!(contains(paramString, paramInt - 1, 1, "E", "I"))) && (!(contains(paramString, paramInt - 1, 3, "RGY", "OGY"))))
      {
        paramDoubleMetaphoneResult.append('K', 'J');
        i = paramInt + 2;
      }
      if ((contains(paramString, paramInt + 1, 1, "E", "I", "Y")) || (contains(paramString, paramInt - 1, 4, "AGGI", "OGGI")))
      {
        if ((contains(paramString, 0, 4, "VAN ", "VON ")) || (contains(paramString, 0, 3, "SCH")) || (contains(paramString, paramInt + 1, 2, "ET")))
          paramDoubleMetaphoneResult.append('K');
        while (true)
        {
          i = paramInt + 2;
          break label22:
          if (contains(paramString, paramInt + 1, 3, "IER"))
            paramDoubleMetaphoneResult.append('J');
          paramDoubleMetaphoneResult.append('J', 'K');
        }
      }
      if (charAt(paramString, paramInt + 1) == 'G')
      {
        i = paramInt + 2;
        paramDoubleMetaphoneResult.append('K');
      }
      i = paramInt + 1;
      paramDoubleMetaphoneResult.append('K');
    }
  }

  private int handleGH(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if ((paramInt > 0) && (!(isVowel(charAt(paramString, paramInt - 1)))))
      paramDoubleMetaphoneResult.append('K');
    for (int i = paramInt + 2; ; i = paramInt + 2)
    {
      label30: return i;
      if (paramInt == 0)
      {
        if (charAt(paramString, paramInt + 2) == 'I')
          paramDoubleMetaphoneResult.append('J');
        while (true)
        {
          i = paramInt + 2;
          break label30:
          paramDoubleMetaphoneResult.append('K');
        }
      }
      if ((((paramInt <= 1) || (!(contains(paramString, paramInt - 2, 1, "B", "H", "D"))))) && (((paramInt <= 2) || (!(contains(paramString, paramInt - 3, 1, "B", "H", "D"))))) && (((paramInt <= 3) || (!(contains(paramString, paramInt - 4, 1, "B", "H"))))))
        break;
    }
    if ((paramInt > 2) && (charAt(paramString, paramInt - 1) == 'U') && (contains(paramString, paramInt - 3, 1, "C", "G", "L", "R", "T")))
      paramDoubleMetaphoneResult.append('F');
    while (true)
    {
      i = paramInt + 2;
      break label30:
      if ((paramInt <= 0) || (charAt(paramString, paramInt - 1) == 'I'))
        continue;
      paramDoubleMetaphoneResult.append('K');
    }
  }

  private int handleH(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if ((((paramInt == 0) || (isVowel(charAt(paramString, paramInt - 1))))) && (isVowel(charAt(paramString, paramInt + 1))))
      paramDoubleMetaphoneResult.append('H');
    for (int i = paramInt + 2; ; i = paramInt + 1)
      return i;
  }

  private int handleJ(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt, boolean paramBoolean)
  {
    if ((contains(paramString, paramInt, 4, "JOSE")) || (contains(paramString, 0, 4, "SAN ")))
      if (((paramInt == 0) && (charAt(paramString, paramInt + 4) == ' ')) || (paramString.length() == 4) || (contains(paramString, 0, 4, "SAN ")))
        paramDoubleMetaphoneResult.append('H');
    for (int i = paramInt + 1; ; i = paramInt + 1)
    {
      label67: label72: return i;
      paramDoubleMetaphoneResult.append('J', 'H');
      break label67:
      if ((paramInt == 0) && (!(contains(paramString, paramInt, 4, "JOSE"))))
        paramDoubleMetaphoneResult.append('J', 'A');
      while (charAt(paramString, paramInt + 1) == 'J')
      {
        i = paramInt + 2;
        break label72:
        if ((isVowel(charAt(paramString, paramInt - 1))) && (!(paramBoolean)) && (((charAt(paramString, paramInt + 1) == 'A') || (charAt(paramString, paramInt + 1) == 'O'))))
          paramDoubleMetaphoneResult.append('J', 'H');
        if (paramInt == -1 + paramString.length())
          paramDoubleMetaphoneResult.append('J', ' ');
        if ((contains(paramString, paramInt + 1, 1, L_T_K_S_N_M_B_Z)) || (contains(paramString, paramInt - 1, 1, "S", "K", "L")))
          continue;
        paramDoubleMetaphoneResult.append('J');
      }
    }
  }

  private int handleL(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    label28: int i;
    if (charAt(paramString, paramInt + 1) == 'L')
      if (conditionL0(paramString, paramInt))
      {
        paramDoubleMetaphoneResult.appendPrimary('L');
        i = paramInt + 2;
      }
    while (true)
    {
      return i;
      paramDoubleMetaphoneResult.append('L');
      break label28:
      i = paramInt + 1;
      paramDoubleMetaphoneResult.append('L');
    }
  }

  private int handleP(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if (charAt(paramString, paramInt + 1) == 'H')
    {
      paramDoubleMetaphoneResult.append('F');
      i = paramInt + 2;
      label24: return i;
    }
    paramDoubleMetaphoneResult.append('P');
    if (contains(paramString, paramInt + 1, 1, "P", "B"));
    for (int i = paramInt + 2; ; i = paramInt + 1)
      break label24:
  }

  private int handleR(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt, boolean paramBoolean)
  {
    if ((paramInt == -1 + paramString.length()) && (!(paramBoolean)) && (contains(paramString, paramInt - 2, 2, "IE")) && (!(contains(paramString, paramInt - 4, 2, "ME", "MA"))))
    {
      paramDoubleMetaphoneResult.appendAlternate('R');
      label51: if (charAt(paramString, paramInt + 1) != 'R')
        break label81;
    }
    for (int i = paramInt + 2; ; i = paramInt + 1)
    {
      return i;
      paramDoubleMetaphoneResult.append('R');
      label81: break label51:
    }
  }

  private int handleS(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt, boolean paramBoolean)
  {
    if (contains(paramString, paramInt - 1, 3, "ISL", "YSL"));
    for (int i = paramInt + 1; ; i = handleSC(paramString, paramDoubleMetaphoneResult, paramInt))
    {
      while (true)
      {
        label22: return i;
        if ((paramInt != 0) || (!(contains(paramString, paramInt, 5, "SUGAR"))))
          break;
        paramDoubleMetaphoneResult.append('X', 'S');
        i = paramInt + 1;
      }
      if (contains(paramString, paramInt, 2, "SH"))
      {
        if (contains(paramString, paramInt + 1, 4, "HEIM", "HOEK", "HOLM", "HOLZ"))
          paramDoubleMetaphoneResult.append('S');
        while (true)
        {
          i = paramInt + 2;
          break label22:
          paramDoubleMetaphoneResult.append('X');
        }
      }
      if ((contains(paramString, paramInt, 3, "SIO", "SIA")) || (contains(paramString, paramInt, 4, "SIAN")))
      {
        if (paramBoolean)
          paramDoubleMetaphoneResult.append('S');
        while (true)
        {
          i = paramInt + 3;
          break label22:
          paramDoubleMetaphoneResult.append('S', 'X');
        }
      }
      if (((paramInt == 0) && (contains(paramString, paramInt + 1, 1, "M", "N", "L", "W"))) || (contains(paramString, paramInt + 1, 1, "Z")))
      {
        paramDoubleMetaphoneResult.append('S', 'X');
        if (contains(paramString, paramInt + 1, 1, "Z"));
        for (i = paramInt + 2; ; i = paramInt + 1)
          break label22:
      }
      if (!(contains(paramString, paramInt, 2, "SC")))
        break;
    }
    if ((paramInt == -1 + paramString.length()) && (contains(paramString, paramInt - 2, 2, "AI", "OI")))
    {
      paramDoubleMetaphoneResult.appendAlternate('S');
      label302: if (!(contains(paramString, paramInt + 1, 1, "S", "Z")))
        break label334;
    }
    for (i = paramInt + 2; ; i = paramInt + 1)
    {
      break label22:
      paramDoubleMetaphoneResult.append('S');
      label334: break label302:
    }
  }

  private int handleSC(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if (charAt(paramString, paramInt + 2) == 'H')
      if (contains(paramString, paramInt + 3, 2, "OO", "ER", "EN", "UY", "ED", "EM"))
        if (contains(paramString, paramInt + 3, 2, "ER", "EN"))
          paramDoubleMetaphoneResult.append("X", "SK");
    while (true)
    {
      return (paramInt + 3);
      paramDoubleMetaphoneResult.append("SK");
      continue;
      if ((paramInt == 0) && (!(isVowel(charAt(paramString, 3)))) && (charAt(paramString, 3) != 'W'))
        paramDoubleMetaphoneResult.append('X', 'S');
      paramDoubleMetaphoneResult.append('X');
      continue;
      if (contains(paramString, paramInt + 2, 1, "I", "E", "Y"))
        paramDoubleMetaphoneResult.append('S');
      paramDoubleMetaphoneResult.append("SK");
    }
  }

  private int handleT(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if (contains(paramString, paramInt, 4, "TION"))
      paramDoubleMetaphoneResult.append('X');
    for (int i = paramInt + 3; ; i = paramInt + 3)
    {
      label23: return i;
      if (!(contains(paramString, paramInt, 3, "TIA", "TCH")))
        break;
      paramDoubleMetaphoneResult.append('X');
    }
    if ((contains(paramString, paramInt, 2, "TH")) || (contains(paramString, paramInt, 3, "TTH")))
    {
      if ((contains(paramString, paramInt + 2, 2, "OM", "AM")) || (contains(paramString, 0, 4, "VAN ", "VON ")) || (contains(paramString, 0, 3, "SCH")))
        paramDoubleMetaphoneResult.append('T');
      while (true)
      {
        i = paramInt + 2;
        break label23:
        paramDoubleMetaphoneResult.append('0', 'T');
      }
    }
    paramDoubleMetaphoneResult.append('T');
    if (contains(paramString, paramInt + 1, 1, "T", "D"));
    for (i = paramInt + 2; ; i = paramInt + 1)
      break label23:
  }

  private int handleW(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if (contains(paramString, paramInt, 2, "WR"))
      paramDoubleMetaphoneResult.append('R');
    for (int i = paramInt + 2; ; i = paramInt + 1)
      while (true)
      {
        label22: return i;
        if ((paramInt == 0) && (((isVowel(charAt(paramString, paramInt + 1))) || (contains(paramString, paramInt, 2, "WH")))))
        {
          if (isVowel(charAt(paramString, paramInt + 1)))
            paramDoubleMetaphoneResult.append('A', 'F');
          while (true)
          {
            i = paramInt + 1;
            break label22:
            paramDoubleMetaphoneResult.append('A');
          }
        }
        if (((paramInt == -1 + paramString.length()) && (isVowel(charAt(paramString, paramInt - 1)))) || (contains(paramString, paramInt - 1, 5, "EWSKI", "EWSKY", "OWSKI", "OWSKY")) || (contains(paramString, 0, 3, "SCH")))
        {
          paramDoubleMetaphoneResult.appendAlternate('F');
          i = paramInt + 1;
        }
        if (!(contains(paramString, paramInt, 4, "WICZ", "WITZ")))
          break;
        paramDoubleMetaphoneResult.append("TS", "FX");
        i = paramInt + 4;
      }
  }

  private int handleX(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if (paramInt == 0)
    {
      paramDoubleMetaphoneResult.append('S');
      i = paramInt + 1;
      label15: return i;
    }
    if ((paramInt != -1 + paramString.length()) || ((!(contains(paramString, paramInt - 3, 3, "IAU", "EAU"))) && (!(contains(paramString, paramInt - 2, 2, "AU", "OU")))))
      paramDoubleMetaphoneResult.append("KS");
    if (contains(paramString, paramInt + 1, 1, "C", "X"));
    for (int i = paramInt + 2; ; i = paramInt + 1)
      break label15:
  }

  private int handleZ(String paramString, DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt, boolean paramBoolean)
  {
    if (charAt(paramString, paramInt + 1) == 'H')
    {
      paramDoubleMetaphoneResult.append('J');
      i = paramInt + 2;
      label24: return i;
    }
    if ((contains(paramString, paramInt + 1, 2, "ZO", "ZI", "ZA")) || ((paramBoolean) && (paramInt > 0) && (charAt(paramString, paramInt - 1) != 'T')))
    {
      paramDoubleMetaphoneResult.append("S", "TS");
      label78: if (charAt(paramString, paramInt + 1) != 'Z')
        break label108;
    }
    for (int i = paramInt + 2; ; i = paramInt + 1)
    {
      break label24:
      paramDoubleMetaphoneResult.append('S');
      label108: break label78:
    }
  }

  private boolean isSilentStart(String paramString)
  {
    for (int i = 0; ; ++i)
    {
      int j = SILENT_START.length;
      int k = 0;
      if (i < j)
      {
        if (!(paramString.startsWith(SILENT_START[i])))
          continue;
        k = 1;
      }
      return k;
    }
  }

  private boolean isSlavoGermanic(String paramString)
  {
    if ((paramString.indexOf(87) > -1) || (paramString.indexOf(75) > -1) || (paramString.indexOf("CZ") > -1) || (paramString.indexOf("WITZ") > -1));
    for (int i = 1; ; i = 0)
      return i;
  }

  private boolean isVowel(char paramChar)
  {
    if ("AEIOUY".indexOf(paramChar) != -1);
    for (int i = 1; ; i = 0)
      return i;
  }

  protected char charAt(String paramString, int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= paramString.length()));
    for (int i = 0; ; i = paramString.charAt(paramInt))
      return i;
  }

  public String doubleMetaphone(String paramString)
  {
    return doubleMetaphone(paramString, false);
  }

  public String doubleMetaphone(String paramString, boolean paramBoolean)
  {
    String str1 = cleanInput(paramString);
    if (str1 == null);
    DoubleMetaphoneResult localDoubleMetaphoneResult;
    for (String str2 = null; ; str2 = localDoubleMetaphoneResult.getPrimary())
      while (true)
      {
        return str2;
        boolean bool = isSlavoGermanic(str1);
        int i;
        if (isSilentStart(str1))
        {
          i = 1;
          localDoubleMetaphoneResult = new DoubleMetaphoneResult(getMaxCodeLen());
        }
        while ((!(localDoubleMetaphoneResult.isComplete())) && (i <= -1 + str1.length()))
        {
          switch (str1.charAt(i))
          {
          default:
            ++i;
            continue;
            i = 0;
            break;
          case 'A':
          case 'E':
          case 'I':
          case 'O':
          case 'U':
          case 'Y':
            i = handleAEIOUY(localDoubleMetaphoneResult, i);
            break;
          case 'B':
            localDoubleMetaphoneResult.append('P');
            if (charAt(str1, i + 1) == 'B')
              i += 2;
            while (true)
            {
              break label48:
              ++i;
            }
          case 'Ç':
            localDoubleMetaphoneResult.append('S');
            ++i;
            break;
          case 'C':
            i = handleC(str1, localDoubleMetaphoneResult, i);
            break;
          case 'D':
            i = handleD(str1, localDoubleMetaphoneResult, i);
            break;
          case 'F':
            localDoubleMetaphoneResult.append('F');
            if (charAt(str1, i + 1) == 'F')
              i += 2;
            while (true)
            {
              break label48:
              ++i;
            }
          case 'G':
            i = handleG(str1, localDoubleMetaphoneResult, i, bool);
            break;
          case 'H':
            i = handleH(str1, localDoubleMetaphoneResult, i);
            break;
          case 'J':
            i = handleJ(str1, localDoubleMetaphoneResult, i, bool);
            break;
          case 'K':
            localDoubleMetaphoneResult.append('K');
            if (charAt(str1, i + 1) == 'K')
              i += 2;
            while (true)
            {
              break label48:
              ++i;
            }
          case 'L':
            i = handleL(str1, localDoubleMetaphoneResult, i);
            break;
          case 'M':
            localDoubleMetaphoneResult.append('M');
            if (conditionM0(str1, i))
              i += 2;
            while (true)
            {
              break label48:
              ++i;
            }
          case 'N':
            localDoubleMetaphoneResult.append('N');
            if (charAt(str1, i + 1) == 'N')
              i += 2;
            while (true)
            {
              break label48:
              ++i;
            }
          case 'Ñ':
            localDoubleMetaphoneResult.append('N');
            ++i;
            break;
          case 'P':
            i = handleP(str1, localDoubleMetaphoneResult, i);
            break;
          case 'Q':
            localDoubleMetaphoneResult.append('K');
            if (charAt(str1, i + 1) == 'Q')
              i += 2;
            while (true)
            {
              break label48:
              ++i;
            }
          case 'R':
            i = handleR(str1, localDoubleMetaphoneResult, i, bool);
            break;
          case 'S':
            i = handleS(str1, localDoubleMetaphoneResult, i, bool);
            break;
          case 'T':
            i = handleT(str1, localDoubleMetaphoneResult, i);
            break;
          case 'V':
            localDoubleMetaphoneResult.append('F');
            if (charAt(str1, i + 1) == 'V')
              i += 2;
            while (true)
            {
              break label48:
              ++i;
            }
          case 'W':
            i = handleW(str1, localDoubleMetaphoneResult, i);
            break;
          case 'X':
            label48: i = handleX(str1, localDoubleMetaphoneResult, i);
            break;
          case 'Z':
          }
          i = handleZ(str1, localDoubleMetaphoneResult, i, bool);
        }
        if (!(paramBoolean))
          break;
        str2 = localDoubleMetaphoneResult.getAlternate();
      }
  }

  public Object encode(Object paramObject)
    throws EncoderException
  {
    if (!(paramObject instanceof String))
      throw new EncoderException("DoubleMetaphone encode parameter is not of type String");
    return doubleMetaphone((String)paramObject);
  }

  public String encode(String paramString)
  {
    return doubleMetaphone(paramString);
  }

  public int getMaxCodeLen()
  {
    return this.maxCodeLen;
  }

  public boolean isDoubleMetaphoneEqual(String paramString1, String paramString2)
  {
    return isDoubleMetaphoneEqual(paramString1, paramString2, false);
  }

  public boolean isDoubleMetaphoneEqual(String paramString1, String paramString2, boolean paramBoolean)
  {
    return doubleMetaphone(paramString1, paramBoolean).equals(doubleMetaphone(paramString2, paramBoolean));
  }

  public void setMaxCodeLen(int paramInt)
  {
    this.maxCodeLen = paramInt;
  }

  public class DoubleMetaphoneResult
  {
    private StringBuffer alternate = new StringBuffer(DoubleMetaphone.this.getMaxCodeLen());
    private int maxLength;
    private StringBuffer primary = new StringBuffer(DoubleMetaphone.this.getMaxCodeLen());

    public DoubleMetaphoneResult(int paramInt)
    {
      this.maxLength = paramInt;
    }

    public void append(char paramChar)
    {
      appendPrimary(paramChar);
      appendAlternate(paramChar);
    }

    public void append(char paramChar1, char paramChar2)
    {
      appendPrimary(paramChar1);
      appendAlternate(paramChar2);
    }

    public void append(String paramString)
    {
      appendPrimary(paramString);
      appendAlternate(paramString);
    }

    public void append(String paramString1, String paramString2)
    {
      appendPrimary(paramString1);
      appendAlternate(paramString2);
    }

    public void appendAlternate(char paramChar)
    {
      if (this.alternate.length() >= this.maxLength)
        return;
      this.alternate.append(paramChar);
    }

    public void appendAlternate(String paramString)
    {
      int i = this.maxLength - this.alternate.length();
      if (paramString.length() <= i)
        this.alternate.append(paramString);
      while (true)
      {
        return;
        this.alternate.append(paramString.substring(0, i));
      }
    }

    public void appendPrimary(char paramChar)
    {
      if (this.primary.length() >= this.maxLength)
        return;
      this.primary.append(paramChar);
    }

    public void appendPrimary(String paramString)
    {
      int i = this.maxLength - this.primary.length();
      if (paramString.length() <= i)
        this.primary.append(paramString);
      while (true)
      {
        return;
        this.primary.append(paramString.substring(0, i));
      }
    }

    public String getAlternate()
    {
      return this.alternate.toString();
    }

    public String getPrimary()
    {
      return this.primary.toString();
    }

    public boolean isComplete()
    {
      if ((this.primary.length() >= this.maxLength) && (this.alternate.length() >= this.maxLength));
      for (int i = 1; ; i = 0)
        return i;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.codec.language.DoubleMetaphone
 * JD-Core Version:    0.5.3
 */