package com.applovin.impl.sdk;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

class v
{
  private static final char[] a = new char[27];
  private static final Map b;
  private String c;

  static
  {
    a[0] = '2';
    a[1] = '2';
    a[2] = '2';
    a[3] = '3';
    a[4] = '3';
    a[5] = '3';
    a[6] = '4';
    a[7] = '4';
    a[8] = '4';
    a[9] = '5';
    a[10] = '5';
    a[11] = '5';
    a[12] = '6';
    a[13] = '6';
    a[14] = '6';
    a[15] = '7';
    a[16] = '7';
    a[17] = '7';
    a[18] = '7';
    a[19] = '8';
    a[20] = '8';
    a[21] = '8';
    a[22] = '9';
    a[23] = '9';
    a[24] = '9';
    a[25] = '9';
    b = new HashMap(280);
    b.put("US", Integer.valueOf(1));
    b.put("AG", Integer.valueOf(1));
    b.put("AI", Integer.valueOf(1));
    b.put("AS", Integer.valueOf(1));
    b.put("BB", Integer.valueOf(1));
    b.put("BM", Integer.valueOf(1));
    b.put("BS", Integer.valueOf(1));
    b.put("CA", Integer.valueOf(1));
    b.put("DM", Integer.valueOf(1));
    b.put("DO", Integer.valueOf(1));
    b.put("GD", Integer.valueOf(1));
    b.put("GU", Integer.valueOf(1));
    b.put("JM", Integer.valueOf(1));
    b.put("KN", Integer.valueOf(1));
    b.put("KY", Integer.valueOf(1));
    b.put("LC", Integer.valueOf(1));
    b.put("MP", Integer.valueOf(1));
    b.put("MS", Integer.valueOf(1));
    b.put("PR", Integer.valueOf(1));
    b.put("SX", Integer.valueOf(1));
    b.put("TC", Integer.valueOf(1));
    b.put("TT", Integer.valueOf(1));
    b.put("VC", Integer.valueOf(1));
    b.put("VG", Integer.valueOf(1));
    b.put("VI", Integer.valueOf(1));
    b.put("RU", Integer.valueOf(7));
    b.put("KZ", Integer.valueOf(7));
    b.put("EG", Integer.valueOf(20));
    b.put("ZA", Integer.valueOf(27));
    b.put("NL", Integer.valueOf(31));
    b.put("GR", Integer.valueOf(30));
    b.put("ES", Integer.valueOf(34));
    b.put("BE", Integer.valueOf(32));
    b.put("FR", Integer.valueOf(33));
    b.put("IT", Integer.valueOf(39));
    b.put("HU", Integer.valueOf(36));
    b.put("AT", Integer.valueOf(43));
    b.put("RO", Integer.valueOf(40));
    b.put("CH", Integer.valueOf(41));
    b.put("SE", Integer.valueOf(46));
    b.put("NO", Integer.valueOf(47));
    b.put("SJ", Integer.valueOf(47));
    b.put("GB", Integer.valueOf(44));
    b.put("GG", Integer.valueOf(44));
    b.put("IM", Integer.valueOf(44));
    b.put("JE", Integer.valueOf(44));
    b.put("DK", Integer.valueOf(45));
    b.put("PE", Integer.valueOf(51));
    b.put("DE", Integer.valueOf(49));
    b.put("PL", Integer.valueOf(48));
    b.put("BR", Integer.valueOf(55));
    b.put("AR", Integer.valueOf(54));
    b.put("CU", Integer.valueOf(53));
    b.put("MX", Integer.valueOf(52));
    b.put("VE", Integer.valueOf(58));
    b.put("CO", Integer.valueOf(57));
    b.put("CL", Integer.valueOf(56));
    b.put("PH", Integer.valueOf(63));
    b.put("ID", Integer.valueOf(62));
    b.put("AU", Integer.valueOf(61));
    b.put("CC", Integer.valueOf(61));
    b.put("CX", Integer.valueOf(61));
    b.put("MY", Integer.valueOf(60));
    b.put("NZ", Integer.valueOf(64));
    b.put("SG", Integer.valueOf(65));
    b.put("TH", Integer.valueOf(66));
    b.put("VN", Integer.valueOf(84));
    b.put("CN", Integer.valueOf(86));
    b.put("JP", Integer.valueOf(81));
    b.put("KR", Integer.valueOf(82));
    b.put("AF", Integer.valueOf(93));
    b.put("PK", Integer.valueOf(92));
    b.put("MM", Integer.valueOf(95));
    b.put("LK", Integer.valueOf(94));
    b.put("IN", Integer.valueOf(91));
    b.put("TR", Integer.valueOf(90));
    b.put("IR", Integer.valueOf(98));
    b.put("GP", Integer.valueOf(590));
    b.put("BL", Integer.valueOf(590));
    b.put("MF", Integer.valueOf(590));
    b.put("BO", Integer.valueOf(591));
    b.put("EC", Integer.valueOf(593));
    b.put("GY", Integer.valueOf(592));
    b.put("PY", Integer.valueOf(595));
    b.put("GF", Integer.valueOf(594));
    b.put("SR", Integer.valueOf(597));
    b.put("MQ", Integer.valueOf(596));
    b.put("AN", Integer.valueOf(599));
    b.put("UY", Integer.valueOf(598));
    b.put("NC", Integer.valueOf(687));
    b.put("KI", Integer.valueOf(686));
    b.put("WS", Integer.valueOf(685));
    b.put("NU", Integer.valueOf(683));
    b.put("CK", Integer.valueOf(682));
    b.put("WF", Integer.valueOf(681));
    b.put("PW", Integer.valueOf(680));
    b.put("FJ", Integer.valueOf(679));
    b.put("VU", Integer.valueOf(678));
    b.put("SB", Integer.valueOf(677));
    b.put("TO", Integer.valueOf(676));
    b.put("PG", Integer.valueOf(675));
    b.put("NR", Integer.valueOf(674));
    b.put("BN", Integer.valueOf(673));
    b.put("NF", Integer.valueOf(672));
    b.put("MH", Integer.valueOf(692));
    b.put("TK", Integer.valueOf(690));
    b.put("FM", Integer.valueOf(691));
    b.put("TV", Integer.valueOf(688));
    b.put("PF", Integer.valueOf(689));
    b.put("TL", Integer.valueOf(670));
    b.put("GM", Integer.valueOf(220));
    b.put("SN", Integer.valueOf(221));
    b.put("MR", Integer.valueOf(222));
    b.put("ML", Integer.valueOf(223));
    b.put("TN", Integer.valueOf(216));
    b.put("LY", Integer.valueOf(218));
    b.put("MA", Integer.valueOf(212));
    b.put("DZ", Integer.valueOf(213));
    b.put("ST", Integer.valueOf(239));
    b.put("CV", Integer.valueOf(238));
    b.put("CM", Integer.valueOf(237));
    b.put("CF", Integer.valueOf(236));
    b.put("TD", Integer.valueOf(235));
    b.put("NG", Integer.valueOf(234));
    b.put("GH", Integer.valueOf(233));
    b.put("SL", Integer.valueOf(232));
    b.put("LR", Integer.valueOf(231));
    b.put("MU", Integer.valueOf(230));
    b.put("BJ", Integer.valueOf(229));
    b.put("TG", Integer.valueOf(228));
    b.put("NE", Integer.valueOf(227));
    b.put("BF", Integer.valueOf(226));
    b.put("CI", Integer.valueOf(225));
    b.put("GN", Integer.valueOf(224));
    b.put("KE", Integer.valueOf(254));
    b.put("TZ", Integer.valueOf(255));
    b.put("SO", Integer.valueOf(252));
    b.put("DJ", Integer.valueOf(253));
    b.put("RW", Integer.valueOf(250));
    b.put("ET", Integer.valueOf(251));
    b.put("SC", Integer.valueOf(248));
    b.put("SD", Integer.valueOf(249));
    b.put("IO", Integer.valueOf(246));
    b.put("AC", Integer.valueOf(247));
    b.put("AO", Integer.valueOf(244));
    b.put("GW", Integer.valueOf(245));
    b.put("CG", Integer.valueOf(242));
    b.put("CD", Integer.valueOf(243));
    b.put("GQ", Integer.valueOf(240));
    b.put("GA", Integer.valueOf(241));
    b.put("MZ", Integer.valueOf(258));
    b.put("UG", Integer.valueOf(256));
    b.put("BI", Integer.valueOf(257));
    b.put("001", Integer.valueOf(800));
    b.put("RE", Integer.valueOf(262));
    b.put("YT", Integer.valueOf(262));
    b.put("ZW", Integer.valueOf(263));
    b.put("ZM", Integer.valueOf(260));
    b.put("MG", Integer.valueOf(261));
    b.put("LS", Integer.valueOf(266));
    b.put("BW", Integer.valueOf(267));
    b.put("NA", Integer.valueOf(264));
    b.put("MW", Integer.valueOf(265));
    b.put("001", Integer.valueOf(808));
    b.put("SZ", Integer.valueOf(268));
    b.put("KM", Integer.valueOf(269));
    b.put("SH", Integer.valueOf(290));
    b.put("ER", Integer.valueOf(291));
    b.put("AW", Integer.valueOf(297));
    b.put("FO", Integer.valueOf(298));
    b.put("GL", Integer.valueOf(299));
    b.put("BD", Integer.valueOf(880));
    b.put("001", Integer.valueOf(883));
    b.put("TW", Integer.valueOf(886));
    b.put("PT", Integer.valueOf(351));
    b.put("001", Integer.valueOf(888));
    b.put("GI", Integer.valueOf(350));
    b.put("MD", Integer.valueOf(373));
    b.put("KP", Integer.valueOf(850));
    b.put("EE", Integer.valueOf(372));
    b.put("BY", Integer.valueOf(375));
    b.put("AM", Integer.valueOf(374));
    b.put("KH", Integer.valueOf(855));
    b.put("MO", Integer.valueOf(853));
    b.put("LV", Integer.valueOf(371));
    b.put("HK", Integer.valueOf(852));
    b.put("LT", Integer.valueOf(370));
    b.put("RS", Integer.valueOf(381));
    b.put("UA", Integer.valueOf(380));
    b.put("LA", Integer.valueOf(856));
    b.put("ME", Integer.valueOf(382));
    b.put("MC", Integer.valueOf(377));
    b.put("AD", Integer.valueOf(376));
    b.put("VA", Integer.valueOf(379));
    b.put("SM", Integer.valueOf(378));
    b.put("MT", Integer.valueOf(356));
    b.put("CY", Integer.valueOf(357));
    b.put("FI", Integer.valueOf(358));
    b.put("AX", Integer.valueOf(358));
    b.put("BG", Integer.valueOf(359));
    b.put("LU", Integer.valueOf(352));
    b.put("IE", Integer.valueOf(353));
    b.put("IS", Integer.valueOf(354));
    b.put("AL", Integer.valueOf(355));
    b.put("BA", Integer.valueOf(387));
    b.put("SI", Integer.valueOf(386));
    b.put("HR", Integer.valueOf(385));
    b.put("MK", Integer.valueOf(389));
    b.put("SK", Integer.valueOf(421));
    b.put("CZ", Integer.valueOf(420));
    b.put("LI", Integer.valueOf(423));
    b.put("TM", Integer.valueOf(993));
    b.put("TJ", Integer.valueOf(992));
    b.put("GE", Integer.valueOf(995));
    b.put("AZ", Integer.valueOf(994));
    b.put("KG", Integer.valueOf(996));
    b.put("UZ", Integer.valueOf(998));
    b.put("PM", Integer.valueOf(508));
    b.put("HT", Integer.valueOf(509));
    b.put("HN", Integer.valueOf(504));
    b.put("NI", Integer.valueOf(505));
    b.put("CR", Integer.valueOf(506));
    b.put("PA", Integer.valueOf(507));
    b.put("FK", Integer.valueOf(500));
    b.put("001", Integer.valueOf(979));
    b.put("BZ", Integer.valueOf(501));
    b.put("MN", Integer.valueOf(976));
    b.put("GT", Integer.valueOf(502));
    b.put("NP", Integer.valueOf(977));
    b.put("SV", Integer.valueOf(503));
    b.put("AE", Integer.valueOf(971));
    b.put("PS", Integer.valueOf(970));
    b.put("OM", Integer.valueOf(968));
    b.put("BT", Integer.valueOf(975));
    b.put("QA", Integer.valueOf(974));
    b.put("BH", Integer.valueOf(973));
    b.put("IL", Integer.valueOf(972));
    b.put("SY", Integer.valueOf(963));
    b.put("JO", Integer.valueOf(962));
    b.put("LB", Integer.valueOf(961));
    b.put("MV", Integer.valueOf(960));
    b.put("YE", Integer.valueOf(967));
    b.put("SA", Integer.valueOf(966));
    b.put("KW", Integer.valueOf(965));
    b.put("IQ", Integer.valueOf(964));
  }

  v(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager != null)
    {
      String str = localTelephonyManager.getSimCountryIso();
      if (str != null)
        this.c = str.toUpperCase();
    }
    if (this.c == null)
    {
      Locale localLocale = Locale.getDefault();
      if (localLocale != null)
        this.c = localLocale.getCountry().toUpperCase();
    }
    if (this.c != null)
      return;
    this.c = "";
  }

  String a(String paramString)
  {
    if ((paramString == null) || (paramString.length() < 4));
    label16: StringBuilder localStringBuilder;
    for (String str1 = ""; ; str1 = localStringBuilder.toString())
      while (true)
      {
        return str1;
        String str2 = ad.c(paramString);
        localStringBuilder = new StringBuilder();
        int i = 0;
        if (i < str2.length())
        {
          label35: char c1 = str2.charAt(i);
          char c2 = Character.toLowerCase(c1);
          if ((c2 >= '0') && (c2 <= '9'))
            localStringBuilder.append(c2);
          while (true)
          {
            ++i;
            break label35:
            if ((c2 >= 'a') && (c2 <= 'z'))
              localStringBuilder.append(a[(c2 - 'a')]);
            if ((c1 != '+') || (i != 0))
              continue;
            localStringBuilder.append(c1);
          }
        }
        Integer localInteger;
        String str3;
        if ((this.c != null) && (b.containsKey(this.c)))
        {
          localInteger = (Integer)b.get(this.c);
          if ((localInteger != null) && (localInteger.intValue() > 0))
            str3 = String.valueOf(localInteger);
        }
        String str4;
        while (true)
        {
          str4 = localStringBuilder.toString();
          if (localStringBuilder.length() >= 4)
            break;
          str1 = "";
          break label16:
          str3 = "";
          continue;
          str3 = "";
          localInteger = Integer.valueOf(0);
        }
        if (localStringBuilder.charAt(0) == '+')
          str1 = localStringBuilder.toString();
        if (str4.startsWith("00"))
          str1 = localStringBuilder.replace(0, 2, "+").toString();
        if (localStringBuilder.length() < 8)
          str1 = localStringBuilder.toString();
        if ((localInteger.intValue() == 91) && (str4.startsWith("91")))
        {
          if ((str4.length() <= 10) && (str3.length() > 0))
            str1 = localStringBuilder.insert(0, str3).insert(0, "+").toString();
          str1 = localStringBuilder.insert(0, "+").toString();
        }
        if ((str3.length() > 0) && (!(str4.startsWith(str3))))
          str1 = localStringBuilder.insert(0, str3).insert(0, "+").toString();
        if ((str3.length() <= 0) || (!(str4.startsWith(str3))))
          break;
        str1 = localStringBuilder.insert(0, "+").toString();
      }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.v
 * JD-Core Version:    0.5.3
 */