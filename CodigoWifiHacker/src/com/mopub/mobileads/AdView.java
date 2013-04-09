package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.location.Location;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings.Secure;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout.LayoutParams;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;

public class AdView extends WebView
{
  public static final String AD_ORIENTATION_BOTH = "b";
  public static final String AD_ORIENTATION_LANDSCAPE_ONLY = "l";
  public static final String AD_ORIENTATION_PORTRAIT_ONLY = "p";
  public static final String DEVICE_ORIENTATION_LANDSCAPE = "l";
  public static final String DEVICE_ORIENTATION_PORTRAIT = "p";
  public static final String DEVICE_ORIENTATION_SQUARE = "s";
  public static final String DEVICE_ORIENTATION_UNKNOWN = "u";
  public static final String EXTRA_AD_CLICK_DATA = "com.mopub.intent.extra.AD_CLICK_DATA";
  private static final int HTTP_CLIENT_TIMEOUT_MILLISECONDS = 10000;
  private static final int MINIMUM_REFRESH_TIME_MILLISECONDS = 10000;
  private AdFetcher mAdFetcher;
  private String mAdOrientation;
  private String mAdUnitId;
  private boolean mAutorefreshEnabled;
  private String mClickthroughUrl;
  private String mFailUrl;
  private final Handler mHandler = new Handler();
  private int mHeight;
  private String mImpressionUrl;
  private boolean mIsDestroyed;
  private boolean mIsLoading;
  private String mKeywords;
  private Location mLocation;
  protected MoPubView mMoPubView;
  private String mRedirectUrl;
  private Handler mRefreshHandler = new Handler();
  private Runnable mRefreshRunnable = new Runnable()
  {
    public void run()
    {
      AdView.this.loadAd();
    }
  };
  private int mRefreshTimeMilliseconds = 60000;
  private String mResponseString;
  private int mTimeoutMilliseconds = 10000;
  private String mUrl;
  private String mUserAgent;
  private int mWidth;

  public AdView(Context paramContext, MoPubView paramMoPubView)
  {
    super(paramContext.getApplicationContext());
    this.mMoPubView = paramMoPubView;
    this.mAutorefreshEnabled = true;
    this.mUserAgent = getSettings().getUserAgentString();
    this.mAdFetcher = new AdFetcher(this, this.mUserAgent);
    disableScrollingAndZoom();
    getSettings().setJavaScriptEnabled(true);
    getSettings().setPluginsEnabled(true);
    setBackgroundColor(0);
    setWebViewClient(new AdWebViewClient(null));
    addMoPubUriJavascriptInterface();
  }

  private void adDidClose()
  {
    this.mMoPubView.adClosed();
  }

  private void adDidFail()
  {
    Log.i("MoPub", "Ad failed to load.");
    this.mIsLoading = false;
    scheduleRefreshTimerIfEnabled();
    this.mMoPubView.adFailed();
  }

  private void adDidLoad()
  {
    Log.i("MoPub", "Ad successfully loaded.");
    this.mIsLoading = false;
    scheduleRefreshTimerIfEnabled();
    setAdContentView(this);
    this.mMoPubView.adLoaded();
  }

  private void addMoPubUriJavascriptInterface()
  {
    addJavascriptInterface(new Object()
    {
      public boolean fireFinishLoad()
      {
        AdView.this.postHandlerRunnable(new Runnable()
        {
          public void run()
          {
            AdView.this.adDidLoad();
          }
        });
        return true;
      }
    }
    , "mopubUriInterface");
  }

  private void disableScrollingAndZoom()
  {
    setHorizontalScrollBarEnabled(false);
    setHorizontalScrollbarOverlay(false);
    setVerticalScrollBarEnabled(false);
    setVerticalScrollbarOverlay(false);
    getSettings().setSupportZoom(false);
  }

  private String generateAdUrl()
  {
    StringBuilder localStringBuilder = new StringBuilder("http://ads.mopub.com/m/ad");
    localStringBuilder.append("?v=6&id=" + this.mAdUnitId);
    localStringBuilder.append("&nv=1.6.0.1");
    String str1 = Settings.Secure.getString(getContext().getContentResolver(), "android_id");
    String str2;
    label69: int i;
    String str3;
    if (str1 == null)
    {
      str2 = "";
      localStringBuilder.append("&udid=sha:" + str2);
      if (this.mKeywords != null)
        localStringBuilder.append("&q=" + Uri.encode(this.mKeywords));
      if (this.mLocation != null)
        localStringBuilder.append("&ll=" + this.mLocation.getLatitude() + "," + this.mLocation.getLongitude());
      localStringBuilder.append("&z=" + getTimeZoneOffsetString());
      i = getResources().getConfiguration().orientation;
      str3 = "u";
      if (i != 1)
        break label370;
      str3 = "p";
    }
    while (true)
    {
      localStringBuilder.append("&o=" + str3);
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
      localStringBuilder.append("&sc_a=" + localDisplayMetrics.density);
      int j = 1;
      try
      {
        Class.forName("com.mopub.mraid.MraidView", false, ClassLoader.getSystemClassLoader());
        if (j != 0)
          label342: localStringBuilder.append("&mr=1");
        return localStringBuilder.toString();
        str2 = Utils.sha1(str1);
        break label69:
        if (i == 2)
          label370: str3 = "l";
        if (i == 3);
        str3 = "s";
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        j = 0;
        break label342:
      }
    }
  }

  // ERROR //
  private Location getLastKnownLocation()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 92	com/mopub/mobileads/AdView:mMoPubView	Lcom/mopub/mobileads/MoPubView;
    //   4: invokevirtual 382	com/mopub/mobileads/MoPubView:getLocationAwareness	()Lcom/mopub/mobileads/MoPubView$LocationAwareness;
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 92	com/mopub/mobileads/AdView:mMoPubView	Lcom/mopub/mobileads/MoPubView;
    //   12: invokevirtual 386	com/mopub/mobileads/MoPubView:getLocationPrecision	()I
    //   15: istore_2
    //   16: aload_1
    //   17: getstatic 392	com/mopub/mobileads/MoPubView$LocationAwareness:LOCATION_AWARENESS_DISABLED	Lcom/mopub/mobileads/MoPubView$LocationAwareness;
    //   20: if_acmpne +9 -> 29
    //   23: aconst_null
    //   24: astore 11
    //   26: aload 11
    //   28: areturn
    //   29: aload_0
    //   30: invokevirtual 255	com/mopub/mobileads/AdView:getContext	()Landroid/content/Context;
    //   33: ldc_w 394
    //   36: invokevirtual 330	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   39: checkcast 396	android/location/LocationManager
    //   42: astore_3
    //   43: aload_3
    //   44: ldc_w 398
    //   47: invokevirtual 401	android/location/LocationManager:getLastKnownLocation	(Ljava/lang/String;)Landroid/location/Location;
    //   50: astore 17
    //   52: aload 17
    //   54: astore 6
    //   56: aload_3
    //   57: ldc_w 403
    //   60: invokevirtual 401	android/location/LocationManager:getLastKnownLocation	(Ljava/lang/String;)Landroid/location/Location;
    //   63: astore 14
    //   65: aload 14
    //   67: astore 9
    //   69: aload 6
    //   71: ifnonnull +82 -> 153
    //   74: aload 9
    //   76: ifnonnull +77 -> 153
    //   79: aconst_null
    //   80: astore 11
    //   82: goto -56 -> 26
    //   85: astore 15
    //   87: ldc 180
    //   89: ldc_w 405
    //   92: invokestatic 408	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   95: pop
    //   96: aconst_null
    //   97: astore 6
    //   99: goto -43 -> 56
    //   102: astore 4
    //   104: ldc 180
    //   106: ldc_w 410
    //   109: invokestatic 408	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   112: pop
    //   113: aconst_null
    //   114: astore 6
    //   116: goto -60 -> 56
    //   119: astore 12
    //   121: ldc 180
    //   123: ldc_w 412
    //   126: invokestatic 408	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   129: pop
    //   130: aconst_null
    //   131: astore 9
    //   133: goto -64 -> 69
    //   136: astore 7
    //   138: ldc 180
    //   140: ldc_w 414
    //   143: invokestatic 408	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   146: pop
    //   147: aconst_null
    //   148: astore 9
    //   150: goto -81 -> 69
    //   153: aload 6
    //   155: ifnull +89 -> 244
    //   158: aload 9
    //   160: ifnull +84 -> 244
    //   163: aload 6
    //   165: invokevirtual 418	android/location/Location:getTime	()J
    //   168: aload 9
    //   170: invokevirtual 418	android/location/Location:getTime	()J
    //   173: lcmp
    //   174: ifle +63 -> 237
    //   177: aload 6
    //   179: astore 10
    //   181: aload_1
    //   182: getstatic 421	com/mopub/mobileads/MoPubView$LocationAwareness:LOCATION_AWARENESS_TRUNCATED	Lcom/mopub/mobileads/MoPubView$LocationAwareness;
    //   185: if_acmpne +45 -> 230
    //   188: aload 10
    //   190: aload 10
    //   192: invokevirtual 291	android/location/Location:getLatitude	()D
    //   195: invokestatic 427	java/math/BigDecimal:valueOf	(D)Ljava/math/BigDecimal;
    //   198: iload_2
    //   199: iconst_5
    //   200: invokevirtual 431	java/math/BigDecimal:setScale	(II)Ljava/math/BigDecimal;
    //   203: invokevirtual 434	java/math/BigDecimal:doubleValue	()D
    //   206: invokevirtual 438	android/location/Location:setLatitude	(D)V
    //   209: aload 10
    //   211: aload 10
    //   213: invokevirtual 299	android/location/Location:getLongitude	()D
    //   216: invokestatic 427	java/math/BigDecimal:valueOf	(D)Ljava/math/BigDecimal;
    //   219: iload_2
    //   220: iconst_5
    //   221: invokevirtual 431	java/math/BigDecimal:setScale	(II)Ljava/math/BigDecimal;
    //   224: invokevirtual 434	java/math/BigDecimal:doubleValue	()D
    //   227: invokevirtual 441	android/location/Location:setLongitude	(D)V
    //   230: aload 10
    //   232: astore 11
    //   234: goto -208 -> 26
    //   237: aload 9
    //   239: astore 10
    //   241: goto -60 -> 181
    //   244: aload 6
    //   246: ifnull +10 -> 256
    //   249: aload 6
    //   251: astore 10
    //   253: goto -72 -> 181
    //   256: aload 9
    //   258: astore 10
    //   260: goto -79 -> 181
    //
    // Exception table:
    //   from	to	target	type
    //   43	52	85	java/lang/SecurityException
    //   43	52	102	java/lang/IllegalArgumentException
    //   56	65	119	java/lang/SecurityException
    //   56	65	136	java/lang/IllegalArgumentException
  }

  private String getTimeZoneOffsetString()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("Z");
    localSimpleDateFormat.setTimeZone(TimeZone.getDefault());
    return localSimpleDateFormat.format(new Date());
  }

  private void handleCustomIntentFromUri(Uri paramUri)
  {
    registerClick();
    String str1 = paramUri.getQueryParameter("fnc");
    String str2 = paramUri.getQueryParameter("data");
    Intent localIntent = new Intent(str1);
    localIntent.addFlags(268435456);
    if (str2 != null)
      localIntent.putExtra("com.mopub.intent.extra.AD_CLICK_DATA", str2);
    try
    {
      getContext().startActivity(localIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      Log.w("MoPub", "Could not handle custom intent: " + str1 + ". Is your intent spelled correctly?");
    }
  }

  private boolean isNetworkAvailable()
  {
    int i = 1;
    if (getContext().checkCallingPermission("android.permission.ACCESS_NETWORK_STATE") == -1);
    while (true)
    {
      return i;
      NetworkInfo localNetworkInfo = ((ConnectivityManager)getContext().getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
        continue;
      i = 0;
    }
  }

  private void postHandlerRunnable(Runnable paramRunnable)
  {
    this.mHandler.post(paramRunnable);
  }

  private void setWebViewScrollingEnabled(boolean paramBoolean)
  {
    if (paramBoolean)
      setOnTouchListener(null);
    while (true)
    {
      return;
      setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
        {
          if (paramMotionEvent.getAction() == 2);
          for (int i = 1; ; i = 0)
            return i;
        }
      });
    }
  }

  private void showBrowserForUrl(String paramString)
  {
    if (isDestroyed());
    while (true)
    {
      label7: return;
      if ((paramString == null) || (paramString.equals("")))
        paramString = "about:blank";
      Log.d("MoPub", "Final URI to show in browser: " + paramString);
      Context localContext = getContext();
      Intent localIntent = new Intent(localContext, MraidBrowser.class);
      localIntent.putExtra("extra_url", paramString);
      localIntent.addFlags(268435456);
      try
      {
        localContext.startActivity(localIntent);
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        String str = localIntent.getAction();
        if ((str != null) && (str.startsWith("market://")))
          Log.w("MoPub", "Could not handle market action: " + str + ". Perhaps you're running in the emulator, which does not have " + "the Android Market?");
        while (true)
        {
          getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("about:blank")).addFlags(268435456));
          break label7:
          Log.w("MoPub", "Could not handle intent action: " + str + ". Perhaps you forgot to declare com.mopub.mobileads.MraidBrowser" + " in your Android manifest file.");
        }
      }
    }
  }

  protected void adAppeared()
  {
    loadUrl("javascript:webviewDidAppear();");
  }

  protected void cancelRefreshTimer()
  {
    this.mRefreshHandler.removeCallbacks(this.mRefreshRunnable);
  }

  protected void cleanup()
  {
    if (this.mIsDestroyed);
    while (true)
    {
      return;
      setAutorefreshEnabled(false);
      cancelRefreshTimer();
      destroy();
      this.mAdFetcher.cleanup();
      this.mAdFetcher = null;
      this.mResponseString = null;
      this.mMoPubView.removeView(this);
      this.mMoPubView = null;
      this.mIsDestroyed = true;
    }
  }

  protected void configureAdViewUsingHeadersFromHttpResponse(HttpResponse paramHttpResponse)
  {
    Header localHeader1 = paramHttpResponse.getFirstHeader("X-Networktype");
    if (localHeader1 != null)
      Log.i("MoPub", "Fetching ad network type: " + localHeader1.getValue());
    Header localHeader2 = paramHttpResponse.getFirstHeader("X-Launchpage");
    label69: label96: label123: Header localHeader10;
    if (localHeader2 != null)
    {
      this.mRedirectUrl = localHeader2.getValue();
      Header localHeader3 = paramHttpResponse.getFirstHeader("X-Clickthrough");
      if (localHeader3 == null)
        break label350;
      this.mClickthroughUrl = localHeader3.getValue();
      Header localHeader4 = paramHttpResponse.getFirstHeader("X-Failurl");
      if (localHeader4 == null)
        break label358;
      this.mFailUrl = localHeader4.getValue();
      Header localHeader5 = paramHttpResponse.getFirstHeader("X-Imptracker");
      if (localHeader5 == null)
        break label366;
      this.mImpressionUrl = localHeader5.getValue();
      label150: Header localHeader6 = paramHttpResponse.getFirstHeader("X-Scrollable");
      boolean bool = false;
      if (localHeader6 != null)
        bool = localHeader6.getValue().equals("1");
      setWebViewScrollingEnabled(bool);
      Header localHeader7 = paramHttpResponse.getFirstHeader("X-Width");
      Header localHeader8 = paramHttpResponse.getFirstHeader("X-Height");
      if ((localHeader7 == null) || (localHeader8 == null))
        break label374;
      this.mWidth = Integer.parseInt(localHeader7.getValue().trim());
      this.mHeight = Integer.parseInt(localHeader8.getValue().trim());
      label256: Header localHeader9 = paramHttpResponse.getFirstHeader("X-Refreshtime");
      if (localHeader9 == null)
        break label387;
      this.mRefreshTimeMilliseconds = (1000 * Integer.valueOf(localHeader9.getValue()).intValue());
      if (this.mRefreshTimeMilliseconds < 10000)
        this.mRefreshTimeMilliseconds = 10000;
      label310: localHeader10 = paramHttpResponse.getFirstHeader("X-Orientation");
      if (localHeader10 == null)
        break label395;
    }
    for (String str = localHeader10.getValue(); ; str = null)
    {
      this.mAdOrientation = str;
      return;
      this.mRedirectUrl = null;
      break label69:
      label350: this.mClickthroughUrl = null;
      break label96:
      label358: this.mFailUrl = null;
      break label123:
      label366: this.mImpressionUrl = null;
      break label150:
      label374: this.mWidth = 0;
      this.mHeight = 0;
      break label256:
      label387: this.mRefreshTimeMilliseconds = 0;
      label395: break label310:
    }
  }

  public void customEventActionWillBegin()
  {
    registerClick();
  }

  public void customEventDidFailToLoadAd()
  {
    loadFailUrl();
  }

  public void customEventDidLoadAd()
  {
    this.mIsLoading = false;
    trackImpression();
    scheduleRefreshTimerIfEnabled();
  }

  public int getAdHeight()
  {
    return this.mHeight;
  }

  public String getAdOrientation()
  {
    return this.mAdOrientation;
  }

  public String getAdUnitId()
  {
    return this.mAdUnitId;
  }

  public int getAdWidth()
  {
    return this.mWidth;
  }

  public boolean getAutorefreshEnabled()
  {
    return this.mAutorefreshEnabled;
  }

  public String getClickthroughUrl()
  {
    return this.mClickthroughUrl;
  }

  public String getKeywords()
  {
    return this.mKeywords;
  }

  public Location getLocation()
  {
    return this.mLocation;
  }

  public String getRedirectUrl()
  {
    return this.mRedirectUrl;
  }

  public String getResponseString()
  {
    return this.mResponseString;
  }

  protected boolean isDestroyed()
  {
    return this.mIsDestroyed;
  }

  public void loadAd()
  {
    if (this.mAdUnitId == null)
      Log.d("MoPub", "Can't load an ad in this ad view because the ad unit ID is null. Did you forget to call setAdUnitId()?");
    while (true)
    {
      return;
      if (!(isNetworkAvailable()))
      {
        Log.d("MoPub", "Can't load an ad because there is no network connectivity.");
        scheduleRefreshTimerIfEnabled();
      }
      if (this.mLocation == null)
        this.mLocation = getLastKnownLocation();
      String str = generateAdUrl();
      this.mMoPubView.adWillLoad(str);
      loadUrl(str);
    }
  }

  public void loadFailUrl()
  {
    this.mIsLoading = false;
    if (this.mFailUrl != null)
    {
      Log.d("MoPub", "Loading failover url: " + this.mFailUrl);
      loadUrl(this.mFailUrl);
    }
    while (true)
    {
      return;
      adDidFail();
    }
  }

  protected void loadResponseString(String paramString)
  {
    loadDataWithBaseURL("http://ads.mopub.com/", paramString, "text/html", "utf-8", null);
  }

  public void loadUrl(String paramString)
  {
    if (paramString.startsWith("javascript:"))
      super.loadUrl(paramString);
    while (true)
    {
      return;
      if (this.mIsLoading)
        Log.i("MoPub", "Already loading an ad for " + this.mAdUnitId + ", wait to finish.");
      this.mUrl = paramString;
      this.mIsLoading = true;
      this.mAdFetcher.fetchAdForUrl(this.mUrl);
    }
  }

  protected void registerClick()
  {
    if (this.mClickthroughUrl == null);
    while (true)
    {
      return;
      new Thread(new Runnable()
      {
        public void run()
        {
          DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
          HttpGet localHttpGet = new HttpGet(AdView.this.mClickthroughUrl);
          localHttpGet.addHeader("User-Agent", AdView.this.mUserAgent);
          try
          {
            localDefaultHttpClient.execute(localHttpGet);
            return;
          }
          catch (ClientProtocolException localClientProtocolException)
          {
            Log.i("MoPub", "Click tracking failed: " + AdView.this.mClickthroughUrl);
          }
          catch (IOException localIOException)
          {
            Log.i("MoPub", "Click tracking failed: " + AdView.this.mClickthroughUrl);
          }
          finally
          {
            localDefaultHttpClient.getConnectionManager().shutdown();
          }
        }
      }).start();
    }
  }

  public void reload()
  {
    Log.d("MoPub", "Reload ad: " + this.mUrl);
    loadUrl(this.mUrl);
  }

  protected void scheduleRefreshTimerIfEnabled()
  {
    cancelRefreshTimer();
    if ((!(this.mAutorefreshEnabled)) || (this.mRefreshTimeMilliseconds <= 0));
    while (true)
    {
      return;
      this.mRefreshHandler.postDelayed(this.mRefreshRunnable, this.mRefreshTimeMilliseconds);
    }
  }

  public void setAdContentView(View paramView)
  {
    this.mMoPubView.removeAllViews();
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
    this.mMoPubView.addView(paramView, localLayoutParams);
  }

  public void setAdUnitId(String paramString)
  {
    this.mAdUnitId = paramString;
  }

  public void setAutorefreshEnabled(boolean paramBoolean)
  {
    this.mAutorefreshEnabled = paramBoolean;
    Log.d("MoPub", "Automatic refresh for " + this.mAdUnitId + " set to: " + paramBoolean + ".");
    if (!(this.mAutorefreshEnabled))
      cancelRefreshTimer();
    while (true)
    {
      return;
      scheduleRefreshTimerIfEnabled();
    }
  }

  public void setClickthroughUrl(String paramString)
  {
    this.mClickthroughUrl = paramString;
  }

  protected void setIsLoading(boolean paramBoolean)
  {
    this.mIsLoading = paramBoolean;
  }

  public void setKeywords(String paramString)
  {
    this.mKeywords = paramString;
  }

  public void setLocation(Location paramLocation)
  {
    this.mLocation = paramLocation;
  }

  protected void setResponseString(String paramString)
  {
    this.mResponseString = paramString;
  }

  public void setTimeout(int paramInt)
  {
    this.mTimeoutMilliseconds = paramInt;
  }

  protected void trackImpression()
  {
    if (this.mImpressionUrl == null);
    while (true)
    {
      return;
      new Thread(new Runnable()
      {
        public void run()
        {
          DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
          try
          {
            HttpGet localHttpGet = new HttpGet(AdView.this.mImpressionUrl);
            localHttpGet.addHeader("User-Agent", AdView.this.mUserAgent);
            localDefaultHttpClient.execute(localHttpGet);
            return;
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            Log.d("MoPub", "Impression tracking failed (IllegalArgumentException): " + AdView.this.mImpressionUrl);
          }
          catch (ClientProtocolException localClientProtocolException)
          {
            Log.d("MoPub", "Impression tracking failed (ClientProtocolException): " + AdView.this.mImpressionUrl);
          }
          catch (IOException localIOException)
          {
            Log.d("MoPub", "Impression tracking failed (IOException): " + AdView.this.mImpressionUrl);
          }
          finally
          {
            localDefaultHttpClient.getConnectionManager().shutdown();
          }
        }
      }).start();
    }
  }

  private class AdWebViewClient extends WebViewClient
  {
    private String urlWithClickTrackingRedirect(AdView paramAdView, String paramString)
    {
      String str1 = paramAdView.getClickthroughUrl();
      if (str1 == null);
      while (true)
      {
        return paramString;
        String str2 = Uri.encode(paramString);
        paramString = str1 + "&r=" + str2;
      }
    }

    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      AdView localAdView = (AdView)paramWebView;
      String str1 = localAdView.getRedirectUrl();
      if ((str1 == null) || (!(paramString.startsWith(str1))))
        return;
      String str2 = urlWithClickTrackingRedirect(localAdView, paramString);
      paramWebView.stopLoading();
      AdView.this.showBrowserForUrl(str2);
    }

    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      AdView localAdView = (AdView)paramWebView;
      Uri localUri;
      String str2;
      if (paramString.startsWith("mopub://"))
      {
        localUri = Uri.parse(paramString);
        str2 = localUri.getHost();
        if (str2.equals("finishLoad"))
          localAdView.adDidLoad();
      }
      while (true)
      {
        return true;
        if (str2.equals("close"))
          localAdView.adDidClose();
        if (str2.equals("failLoad"))
          localAdView.loadFailUrl();
        if (!(str2.equals("custom")))
          continue;
        localAdView.handleCustomIntentFromUri(localUri);
        continue;
        if ((paramString.startsWith("tel:")) || (paramString.startsWith("voicemail:")) || (paramString.startsWith("sms:")) || (paramString.startsWith("mailto:")) || (paramString.startsWith("geo:")) || (paramString.startsWith("google.streetview:")))
        {
          Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
          localIntent.addFlags(268435456);
          try
          {
            AdView.this.getContext().startActivity(localIntent);
            AdView.this.registerClick();
          }
          catch (ActivityNotFoundException localActivityNotFoundException)
          {
            Log.w("MoPub", "Could not handle intent with URI: " + paramString + ". Is this intent unsupported on your phone?");
          }
        }
        String str1 = urlWithClickTrackingRedirect(localAdView, paramString);
        Log.d("MoPub", "Ad clicked. Click URL: " + str1);
        AdView.this.mMoPubView.adClicked();
        AdView.this.showBrowserForUrl(str1);
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.AdView
 * JD-Core Version:    0.5.3
 */