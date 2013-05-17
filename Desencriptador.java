import apperhand.device.android.a.a.a.Cursor;
import apperhand.device.android.a.a.a.Uri;

public class Desencriptador {
	public static final byte[] a = { 13, 9, 1, 37, 14, 25, 55, 75, 27, 24, 29,
			6, 11, 90, 94, 16, 29, 25, 89, 3, 0, 0, 93, 58, 54, 32, 58, 58, 97,
			4, 11, 3, 21, 6, 9, 45, 49, 38, 32, 32, 62, 55, 107, 59 };
	public static final byte[] b = { 9, 1, 9, 23, 26, 27, 13 };
	public static final byte[] c = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			0, 3, 17, 27, 30, 28, 11, 92, 97, 30, 4, 16, 18, 23, 13, 31, 10, 7,
			18, 2, 23, 62, 61, 33, 38, 48, 33, 43, 99, 44, 62, 53, 34, 43 };
	public static final byte[] d = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			0, 3, 17, 27, 30, 28, 11, 92, 99, 6, 9, 0, 22, 23, 12, 30, 6, 15,
			2, 11, 0, 32, 60 };
	public static final byte[] e = { 9, 1, 9, 23, 31, 8, 3, 75 };
	public static final byte[] f = { 0, 0, 0, 0, 0, 0, 0, 0, 1, 26, 23, 75, 7,
			26, 90, 7, 28, 27, 89, 18, 6, 6, 71, 60, 43, 122, 28, 29, 28, 25,
			10, 29, 8, 29, 4, 53, 39, 43, 60, 48, 42, 44, 111, 39, 41, 49 };
	public static final byte[] g = { 97, 110, 100, 114, 111, 105, 100, 46, 105,
			110, 116, 101, 110, 116, 46, 98, 114, 111, 119, 115, 101, 114, 46,
			83, 69, 84, 95, 72, 79, 77, 69, 80, 65, 71, 69 };
	public static final byte[] h = { 2, 1, 9, 92, 14, 7, 0, 92, 6, 7, 16, 75,
			12, 6, 65, 21, 1, 10, 5, 93, 13, 6, 77, 125, 48, 32, 54, 36, 97, 5,
			17, 19, 3, 53, 42, 22, 29, 1, 0, 44, 28, 23, 90, 6, 3, 29, 31, 15,
			0, 71, 13, 28, 44, 31, 18, 11, 21, 75, 1, 32, 55, 58, 33, 57, 40,
			55 };
	public static final byte[] i = { 2, 1, 10, 6, 10, 7, 16, 20, 70, 65, 23,
			16, 29, 0, 65, 15, 27, 21, 22, 7, 12, 29, 64, 12, 54, 49, 43, 60,
			38, 35, 34, 35, 110, 20, 32, 21, 26, 13, 28, 8, 61, 5, 76, 5, 11,
			91, 4, 30, 4, 66, 11, 17, 14, 3, 26, 10, 28, 113, 17, 55, 59, 40,
			59, 42, 63 };
	public static final byte[] j = { 23, 15, 8, 7, 10 };
	public static final byte[] k = { 9, 1, 9, 23, 31, 8, 3, 75 };
	public static final byte[] l = { 20, 28, 8 };
	public static final byte[] m = { 10, 11, 29 };
	public static final byte[] n = { 0, 30, 20, 30, 6, 10, 5, 90, 0, 1, 26, 58,
			44, 6, 65, 21, 1, 10, 5 };
	public static final byte[] o = { 2, 1, 10, 6, 10, 7, 16, 20, 70, 65, 23,
			16, 29, 0, 65, 15, 27, 21, 22, 7, 12, 29, 64, 12, 54, 49, 43, 60,
			38, 35, 34, 35, 110, 20, 32, 21, 26, 13, 28, 8, 61, 5, 76, 5, 11 };
	public static final byte[] p = { 2, 1, 9, 92, 14, 7, 0, 92, 6, 7, 16, 75,
			12, 6, 65, 21, 1, 10, 5 };
	public static final byte[] q = { 2, 1, 9, 92, 14, 7, 0, 92, 6, 7, 16, 75,
			12, 6, 65, 21, 1, 10, 5, 93, 39, 0, 65, 36, 54, 49, 45, 0, 32, 32,
			32, 32, 32, 32, 32, 50, 11, 16, 32, 10, 10, 1, 71, 31, 11, 6 };
	public static final byte[] r = { 4, 15, 23, 11, 48, 4, 11, 74, 12, 49, 7,
			18, 7, 0, 77, 10 };
	public static final byte[] s = { 2, 1, 9, 92, 14, 7, 0, 92, 6, 7, 16, 75,
			2, 21, 91, 12, 17, 7, 18, 1, 75, 19, 77, 39, 44, 59, 49, 102, 10,
			12, 22, 9, 30, 10, 10, 37, 43, 59, 49, 39, 40, 42, 105, 44 };
	public static final byte[] t = { 4, 15, 23, 11, 2, 6, 0, 75 };
	private static final int[] u = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62,
			-1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1,
			-2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
			15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1,
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42,
			43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1 };
	private static final int[] v = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1,
			-2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
			15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1,
			26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42,
			43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
			-1, -1, -1, -1, -1, -1 };

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		/*
		 * VERSION STARTAPP HASTA EL 10/05/2013 byte[] a = { 13, 9, 1, 37, 14,
		 * 25, 55, 75,
		 * 
		 * 27, 24, 29, 6, 11, 90, 94, 16, 29, 25, 89, 3, 0, 0, 93, 58, 54, 32,
		 * 58, 58, 97, 4, 11, 3, 21, 6, 9, 45, 49, 38, 32, 32, 62, 55, 107, 59
		 * };
		 * 
		 * byte[] b = { 9, 1, 9, 23, 26, 27, 13 };
		 * 
		 * byte[] c = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 17, 27,
		 * 30, 28, 11, 92, 97, 30, 4, 16, 18, 23, 13, 31, 10, 7, 18, 2, 23, 62,
		 * 61, 33, 38, 48, 33, 43, 99, 44, 62, 53, 34, 43 };
		 * 
		 * byte[] d = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 17, 27,
		 * 30, 28, 11, 92, 99, 6, 9, 0, 22, 23, 12, 30, 6, 15, 2, 11, 0, 32, 60
		 * };
		 * 
		 * byte[] e = { 9, 1, 9, 23, 31, 8, 3, 75 }; byte[] f = { 0, 0, 0, 0, 0,
		 * 0, 0, 0, 1, 26, 23, 75, 7, 26, 90, 7, 28, 27, 89, 18, 6, 6, 71, 60,
		 * 43, 122, 28, 29, 28, 25, 10, 29, 8, 29, 4, 53, 39, 43, 60, 48, 42,
		 * 44, 111, 39, 41, 49 };
		 * 
		 * byte[] h = { 2, 1, 9, 92, 14, 7, 0, 92, 6, 7, 16, 75, 12, 6, 65, 21,
		 * 1, 10, 5, 93, 13, 6, 77, 125, 48, 32, 54, 36, 97, 5, 17, 19, 3, 53,
		 * 42, 22, 29, 1, 0, 44, 28, 23, 90, 6, 3, 29, 31, 15, 0, 71, 13, 28,
		 * 44, 31, 18, 11, 21, 75, 1, 32, 55, 58, 33, 57, 40, 55 };
		 * 
		 * byte[] i = { 2, 1, 10, 6, 10, 7, 16, 20, 70, 65, 23, 16, 29, 0, 65,
		 * 15, 27, 21, 22, 7, 12, 29, 64, 12, 54, 49, 43, 60, 38, 35, 34, 35,
		 * 110, 20, 32, 21, 26, 13, 28, 8, 61, 5, 76, 5, 11, 91, 4, 30, 4, 66,
		 * 11, 17, 14, 3, 26, 10, 28, 113, 17, 55, 59, 40, 59, 42, 63 }; byte[]
		 * j = { 23, 15, 8, 7, 10 }; byte[] k = { 9, 1, 9, 23, 31, 8, 3, 75 };
		 * byte[] l = { 20, 28, 8 }; byte[] m = { 10, 11, 29 }; byte[] n = { 0,
		 * 30, 20, 30, 6, 10, 5, 90, 0, 1, 26, 58, 44, 6, 65, 21, 1, 10, 5 };
		 * byte[] o = { 2, 1, 10, 6, 10, 7, 16, 20, 70, 65, 23, 16, 29, 0, 65,
		 * 15, 27, 21, 22, 7, 12, 29, 64, 12, 54, 49, 43, 60, 38, 35, 34, 35,
		 * 110, 20, 32, 21, 26, 13, 28, 8, 61, 5, 76, 5, 11 }; byte[] p = { 2,
		 * 1, 9, 92, 14, 7, 0, 92, 6, 7, 16, 75, 12, 6, 65, 21, 1, 10, 5 };
		 * byte[] q = { 2, 1, 9, 92, 14, 7, 0, 92, 6, 7, 16, 75, 12, 6, 65, 21,
		 * 1, 10, 5, 93, 39, 0, 65, 36, 54, 49, 45, 0, 32, 32, 32, 32, 32, 32,
		 * 32, 50, 11, 16, 32, 10, 10, 1, 71, 31, 11, 6 };
		 */

		/* NUEVA VERSION 3.0.1 16/05/2013 */

		System.out.println("a-" + a(Desencriptador.a));
		System.out.println("b-" + a(Desencriptador.b));
		System.out.println("c-" + a(Desencriptador.c));
		System.out.println("d-" + a(Desencriptador.d));
		System.out.println("e-" + a(Desencriptador.e));
		System.out.println("f-" + a(Desencriptador.f));
		System.out.println("g-" + new String(Desencriptador.g));
		System.out.println("h-" + a(Desencriptador.h));
		System.out.println("i-" + a(Desencriptador.i));
		System.out.println("j-" + a(Desencriptador.j));
		System.out.println("k-" + a(Desencriptador.k));
		System.out.println("l-" + a(Desencriptador.l));
		System.out.println("m-" + a(Desencriptador.m));
		System.out.println("n-" + a(Desencriptador.n));
		System.out.println("o-" + a(Desencriptador.o));
		System.out.println("p-" + a(Desencriptador.p));
		System.out.println("q-" + a(Desencriptador.q));
		System.out.println("r-" + a(Desencriptador.r));
		System.out.println("s-" + a(Desencriptador.s));
		System.out.println("t-" + a(Desencriptador.t));
		// System.out.println("u-"+a(Main.u));
		// System.out.println("v-"+a(Main.v));

	}

	// device.android.a.a.a.a
	private void solution1() {
		Context contexto = getApplicationContext();
		ContentResolver contentResolver = contexto.getContentResolver();
		Cursor localCursor = localContentResolver.query(Uri
				.parse("content://customization_settings/SettingTable/application_Browser"), null, null,
				null, null);
		byte[] arrayOfByte = localCursor.getBlob(localCursor
				.getColumnIndexOrThrow("value"));

		// Sirve de algo?¿?
		while (localCursor.moveToNext()) {
			Parcel parcel = Parcel.obtain();
			parcel.unmarshall(arrayOfByte, 0, arrayOfByte.length);
			parcel.setDataPosition(0);
			Bundle bundle1 = new Bundle();
			bundle.readFromParcel(parcel);
			Bundle bundle2 = bundle.getBundle("homepage");
			bundle2.putString("url", "www.tuguu.com");
			parcel = Parcel.obtain();
			bundle1.writeToParcel(parcel, 0);
			arrayOfByte = parcel.marshall();
		}
		localCursor.close();
		
		ContentValues valores=new ContentValues();
		//el unico sentido es que arrayOfByte fuese la url
		valores.put("value",arrayOfByte);
		valores.put("key","application_Browser");
		Uri uri=Uri.parse("content://customization_settings/SettingTable");
		contentResolver.insert(uri,valores);
		contentResolver.notifyChange(uri,null);
		
		Intent intent=new Intent("android.htc.intent.action.CUSTMIZATION_CHANGE");
		intent.setComponent(new ComponentName("com.android.browser", "com.android.browser.htc.util.HTCBrowserCustmizationChangeReceiver"));
		contexto.sendBroadcast(intent);
	}
	// device.android.a.a.a.b
		private void solution2() {
			Intent intent=new Intent("lgeWapService.prov.persister.INSTALL_BROWSER");
			intent.putExtra("homeuri","www.tuguu.com");
			getApplicationContext().sendBroadcast(intent);
		}
	// device.android.a.a.a.c
		private void solution3() {
			Intent intent=new Intent("android.intent.action.MULTI_CSC_CLEAR");
			intent.setComponent(new ComponentName("com.android.browser","com.android.browser.BrowserHomepageSetReceier"));
			getApplicationContext().sendBroadcast(intent);
			intent=new Intent("android.intent.action.OMADM_BROWSER_SET_HOMEPAGE");
			intent.putExtra("homepage","www.tuguu.com");
			getApplicationContext().sendBroadcast(intent);
		}
	/*     */protected static String a(byte[] paramArrayOfByte)
	/*     */{
		/* 116 */char[] arrayOfChar = new char[64];
		int i1 = 0;
		/* 117 */for (; i1 < 26; ++i1) {
			/* 118 */arrayOfChar[i1] = (char) (65 + i1);
			/*     */}
		/* 120 */for (i1 = 26; i1 < 52; ++i1) {
			/* 121 */arrayOfChar[i1] = (char) (97 + i1 - 26);
			/*     */}
		/* 123 */String str = new String(b(paramArrayOfByte));
		/*     */
		/* 125 */for (int i2 = 52; i2 < 62; ++i2) {
			/* 126 */arrayOfChar[i2] = (char) (48 + i2 - 52);
			/*     */}
		/* 128 */arrayOfChar[62] = '+';
		/* 129 */arrayOfChar[63] = '/';
		/*     */
		/* 131 */return str;
		/*     */}

	/*     */private static String b(byte[] paramArrayOfByte)
	/*     */{
		/* 39 */byte[] g = { 97, 110, 100, 114, 111, 105, 100, 46, 105, 110,
				116, 101, 110, 116, 46, 98, 114, 111, 119, 115, 101, 114, 46,
				83, 69, 84, 95, 72, 79, 77, 69, 80, 65, 71, 69 };
		/* 275 */String str1 = new String(paramArrayOfByte);
		/* 276 */StringBuffer localStringBuffer = new StringBuffer(str1);
		/*     */
		/* 278 */int i1 = str1.length();
		/*     */String str2;
		/* 280 */int i2 = (
		/* 280 */str2 = new String(g))
		/* 280 */.length();
		/*     */
		/* 282 */int i3 = 0;
		for (int i4 = 0; i3 < i1; ++i4) {
			/* 283 */if (i4 >= i2)
				/* 284 */i4 = 0;
			/* 285 */localStringBuffer.setCharAt(i3,
					(char) (str1.charAt(i3) ^ str2.charAt(i4)));
			/*     */
			/* 282 */++i3;
			/*     */}
		/*     */
		/* 288 */return localStringBuffer.toString();
		/*     */}
}
