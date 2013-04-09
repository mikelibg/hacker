package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.impl.client.DefaultHttpClient;

public class MraidView extends WebView
{
  public static final int AD_CONTAINER_LAYOUT_ID = 102;
  private static final String LOGTAG = "MraidView";
  public static final int MODAL_CONTAINER_LAYOUT_ID = 101;
  public static final int PLACEHOLDER_VIEW_ID = 100;
  private MraidBrowserController mBrowserController;
  private MraidDisplayController mDisplayController;
  private boolean mHasFiredReadyEvent;
  private MraidListenerInfo mListenerInfo;
  private final PlacementType mPlacementType;
  private WebChromeClient mWebChromeClient;
  private WebViewClient mWebViewClient;

  public MraidView(Context paramContext)
  {
    this(paramContext, ExpansionStyle.ENABLED, NativeCloseButtonStyle.AD_CONTROLLED, PlacementType.INLINE);
  }

  MraidView(Context paramContext, ExpansionStyle paramExpansionStyle, NativeCloseButtonStyle paramNativeCloseButtonStyle, PlacementType paramPlacementType)
  {
    super(paramContext);
    this.mPlacementType = paramPlacementType;
    initialize(paramExpansionStyle, paramNativeCloseButtonStyle);
  }

  // ERROR //
  private String copyRawResourceToFilesDir(int paramInt, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 87	com/mopub/mobileads/MraidView:getContext	()Landroid/content/Context;
    //   4: invokevirtual 93	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   7: iload_1
    //   8: invokevirtual 99	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   11: astore_3
    //   12: new 101	java/lang/StringBuilder
    //   15: dup
    //   16: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   19: aload_0
    //   20: invokevirtual 87	com/mopub/mobileads/MraidView:getContext	()Landroid/content/Context;
    //   23: invokevirtual 108	android/content/Context:getFilesDir	()Ljava/io/File;
    //   26: invokevirtual 114	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   29: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: getstatic 121	java/io/File:separator	Ljava/lang/String;
    //   35: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: aload_2
    //   39: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: astore 4
    //   47: new 110	java/io/File
    //   50: dup
    //   51: aload 4
    //   53: invokespecial 127	java/io/File:<init>	(Ljava/lang/String;)V
    //   56: astore 5
    //   58: new 129	java/io/FileOutputStream
    //   61: dup
    //   62: aload 5
    //   64: invokespecial 132	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   67: astore 6
    //   69: sipush 8192
    //   72: newarray byte
    //   74: astore 7
    //   76: aload_3
    //   77: aload 7
    //   79: invokevirtual 138	java/io/InputStream:read	([B)I
    //   82: istore 12
    //   84: iload 12
    //   86: iconst_m1
    //   87: if_icmpeq +43 -> 130
    //   90: aload 6
    //   92: aload 7
    //   94: iconst_0
    //   95: iload 12
    //   97: invokevirtual 142	java/io/FileOutputStream:write	([BII)V
    //   100: goto -24 -> 76
    //   103: astore 10
    //   105: ldc 144
    //   107: astore 4
    //   109: aload_3
    //   110: invokevirtual 147	java/io/InputStream:close	()V
    //   113: aload 6
    //   115: invokevirtual 148	java/io/FileOutputStream:close	()V
    //   118: aload 4
    //   120: areturn
    //   121: astore 14
    //   123: ldc 144
    //   125: astore 4
    //   127: goto -9 -> 118
    //   130: aload_3
    //   131: invokevirtual 147	java/io/InputStream:close	()V
    //   134: aload 6
    //   136: invokevirtual 148	java/io/FileOutputStream:close	()V
    //   139: goto -21 -> 118
    //   142: astore 13
    //   144: goto -26 -> 118
    //   147: astore 8
    //   149: aload_3
    //   150: invokevirtual 147	java/io/InputStream:close	()V
    //   153: aload 6
    //   155: invokevirtual 148	java/io/FileOutputStream:close	()V
    //   158: aload 8
    //   160: athrow
    //   161: astore 9
    //   163: goto -5 -> 158
    //   166: astore 11
    //   168: goto -50 -> 118
    //
    // Exception table:
    //   from	to	target	type
    //   76	100	103	java/io/IOException
    //   58	69	121	java/io/FileNotFoundException
    //   130	139	142	java/io/IOException
    //   76	100	147	finally
    //   149	158	161	java/io/IOException
    //   109	118	166	java/io/IOException
  }

  private void initialize(ExpansionStyle paramExpansionStyle, NativeCloseButtonStyle paramNativeCloseButtonStyle)
  {
    setScrollContainer(false);
    setBackgroundColor(0);
    setVerticalScrollBarEnabled(false);
    setHorizontalScrollBarEnabled(false);
    setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
      {
        switch (paramMotionEvent.getAction())
        {
        default:
        case 0:
        case 1:
        }
        while (true)
        {
          return false;
          if (paramView.hasFocus())
            continue;
          paramView.requestFocus();
        }
      }
    });
    getSettings().setJavaScriptEnabled(true);
    this.mBrowserController = new MraidBrowserController(this);
    this.mDisplayController = new MraidDisplayController(this, paramExpansionStyle, paramNativeCloseButtonStyle);
    this.mWebViewClient = new MraidWebViewClient(null);
    setWebViewClient(this.mWebViewClient);
    this.mWebChromeClient = new MraidWebChromeClient(null);
    setWebChromeClient(this.mWebChromeClient);
    this.mListenerInfo = new MraidListenerInfo();
  }

  private void notifyOnFailureListener()
  {
    if (this.mListenerInfo.mOnFailureListener == null)
      return;
    this.mListenerInfo.mOnFailureListener.onFailure(this);
  }

  private boolean tryCommand(URI paramURI)
  {
    String str = paramURI.getHost();
    List localList = URLEncodedUtils.parse(paramURI, "UTF-8");
    HashMap localHashMap = new HashMap();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      NameValuePair localNameValuePair = (NameValuePair)localIterator.next();
      localHashMap.put(localNameValuePair.getName(), localNameValuePair.getValue());
    }
    MraidCommand localMraidCommand = MraidCommandRegistry.createCommand(str, localHashMap, this);
    if (localMraidCommand == null)
      fireNativeCommandCompleteEvent(str);
    for (int i = 0; ; i = 1)
    {
      return i;
      localMraidCommand.execute();
      fireNativeCommandCompleteEvent(str);
    }
  }

  public void destroy()
  {
    this.mDisplayController.destroy();
    super.destroy();
  }

  protected void fireChangeEventForProperties(ArrayList<MraidProperty> paramArrayList)
  {
    String str1 = paramArrayList.toString();
    if (str1.length() < 2);
    while (true)
    {
      return;
      String str2 = "{" + str1.substring(1, -1 + str1.length()) + "}";
      injectJavaScript("window.mraidbridge.fireChangeEvent(" + str2 + ");");
      Log.d("MraidView", "Fire changes: " + str2);
    }
  }

  protected void fireChangeEventForProperty(MraidProperty paramMraidProperty)
  {
    String str = "{" + paramMraidProperty.toString() + "}";
    injectJavaScript("window.mraidbridge.fireChangeEvent(" + str + ");");
    Log.d("MraidView", "Fire change: " + str);
  }

  protected void fireErrorEvent(String paramString1, String paramString2)
  {
    injectJavaScript("window.mraidbridge.fireErrorEvent('" + paramString1 + "', '" + paramString2 + "');");
  }

  protected void fireNativeCommandCompleteEvent(String paramString)
  {
    injectJavaScript("window.mraidbridge.nativeCallComplete('" + paramString + "');");
  }

  protected void fireReadyEvent()
  {
    injectJavaScript("window.mraidbridge.fireReadyEvent();");
  }

  protected MraidBrowserController getBrowserController()
  {
    return this.mBrowserController;
  }

  protected MraidDisplayController getDisplayController()
  {
    return this.mDisplayController;
  }

  public OnCloseButtonStateChangeListener getOnCloseButtonStateChangeListener()
  {
    return this.mListenerInfo.mOnCloseButtonListener;
  }

  public OnCloseListener getOnCloseListener()
  {
    return this.mListenerInfo.mOnCloseListener;
  }

  public OnExpandListener getOnExpandListener()
  {
    return this.mListenerInfo.mOnExpandListener;
  }

  public OnFailureListener getOnFailureListener()
  {
    return this.mListenerInfo.mOnFailureListener;
  }

  public OnOpenListener getOnOpenListener()
  {
    return this.mListenerInfo.mOnOpenListener;
  }

  public OnReadyListener getOnReadyListener()
  {
    return this.mListenerInfo.mOnReadyListener;
  }

  protected void injectJavaScript(String paramString)
  {
    if (paramString == null)
      return;
    super.loadUrl("javascript:" + paramString);
  }

  public void loadHtmlData(String paramString)
  {
    if (paramString.indexOf("<html>") == -1)
      paramString = "<html><head></head><body style='margin:0;padding:0;'>" + paramString + "</body></html>";
    String str = "file://" + copyRawResourceToFilesDir(R.raw.mraid, "mraid.js");
    loadDataWithBaseURL(null, paramString.replace("<head>", "<head><script src='" + str + "'></script>"), "text/html", "UTF-8", null);
  }

  public void loadUrl(String paramString)
  {
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      HttpEntity localHttpEntity = localDefaultHttpClient.execute(new HttpGet(paramString)).getEntity();
      if (localHttpEntity == null)
        break label145;
      InputStream localInputStream = localHttpEntity.getContent();
      byte[] arrayOfByte = new byte[4096];
      int i = localInputStream.read(arrayOfByte);
      if (i == -1)
        break label145;
      label145: label126: localStringBuffer.append(new String(arrayOfByte, 0, i));
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.d("MoPub", "Mraid loadUrl failed (IllegalArgumentException): " + paramString);
      notifyOnFailureListener();
      return;
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      notifyOnFailureListener();
      break label126:
    }
    catch (IOException localIOException)
    {
      notifyOnFailureListener();
      break label126:
      loadHtmlData(localStringBuffer.toString());
      break label126:
    }
  }

  public void setOnCloseButtonStateChange(OnCloseButtonStateChangeListener paramOnCloseButtonStateChangeListener)
  {
    MraidListenerInfo.access$602(this.mListenerInfo, paramOnCloseButtonStateChangeListener);
  }

  public void setOnCloseListener(OnCloseListener paramOnCloseListener)
  {
    MraidListenerInfo.access$402(this.mListenerInfo, paramOnCloseListener);
  }

  public void setOnExpandListener(OnExpandListener paramOnExpandListener)
  {
    MraidListenerInfo.access$302(this.mListenerInfo, paramOnExpandListener);
  }

  public void setOnFailureListener(OnFailureListener paramOnFailureListener)
  {
    MraidListenerInfo.access$202(this.mListenerInfo, paramOnFailureListener);
  }

  public void setOnOpenListener(OnOpenListener paramOnOpenListener)
  {
    MraidListenerInfo.access$702(this.mListenerInfo, paramOnOpenListener);
  }

  public void setOnReadyListener(OnReadyListener paramOnReadyListener)
  {
    MraidListenerInfo.access$502(this.mListenerInfo, paramOnReadyListener);
  }

  static enum ExpansionStyle
  {
    static
    {
      DISABLED = new ExpansionStyle("DISABLED", 1);
      ExpansionStyle[] arrayOfExpansionStyle = new ExpansionStyle[2];
      arrayOfExpansionStyle[0] = ENABLED;
      arrayOfExpansionStyle[1] = DISABLED;
      $VALUES = arrayOfExpansionStyle;
    }
  }

  static class MraidListenerInfo
  {
    private MraidView.OnCloseButtonStateChangeListener mOnCloseButtonListener;
    private MraidView.OnCloseListener mOnCloseListener;
    private MraidView.OnExpandListener mOnExpandListener;
    private MraidView.OnFailureListener mOnFailureListener;
    private MraidView.OnOpenListener mOnOpenListener;
    private MraidView.OnReadyListener mOnReadyListener;
  }

  private class MraidWebChromeClient extends WebChromeClient
  {
    public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
    {
      Log.d("MraidView", paramString2);
      return false;
    }
  }

  private class MraidWebViewClient extends WebViewClient
  {
    public void onLoadResource(WebView paramWebView, String paramString)
    {
      Log.d("MraidView", "Loaded resource: " + paramString);
    }

    public void onPageFinished(WebView paramWebView, String paramString)
    {
      if (MraidView.this.mHasFiredReadyEvent)
        return;
      MraidView.this.mDisplayController.initializeJavaScriptState();
      MraidView.this.fireChangeEventForProperty(MraidPlacementTypeProperty.createWithType(MraidView.this.mPlacementType));
      MraidView.this.fireReadyEvent();
      if (MraidView.this.getOnReadyListener() != null)
        MraidView.this.getOnReadyListener().onReady(MraidView.this);
      MraidView.access$902(MraidView.this, true);
    }

    public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
    {
      Log.d("MraidView", "Error: " + paramString1);
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    }

    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      int i = 1;
      String str = Uri.parse(paramString).getScheme();
      if (str.equals("mopub"));
      while (true)
      {
        return i;
        if (str.equals("mraid"))
          MraidView.this.tryCommand(URI.create(paramString));
        Intent localIntent = new Intent();
        localIntent.setAction("android.intent.action.VIEW");
        localIntent.setData(Uri.parse(paramString));
        localIntent.addFlags(268435456);
        try
        {
          MraidView.this.getContext().startActivity(localIntent);
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          i = 0;
        }
      }
    }
  }

  static enum NativeCloseButtonStyle
  {
    static
    {
      ALWAYS_HIDDEN = new NativeCloseButtonStyle("ALWAYS_HIDDEN", 1);
      AD_CONTROLLED = new NativeCloseButtonStyle("AD_CONTROLLED", 2);
      NativeCloseButtonStyle[] arrayOfNativeCloseButtonStyle = new NativeCloseButtonStyle[3];
      arrayOfNativeCloseButtonStyle[0] = ALWAYS_VISIBLE;
      arrayOfNativeCloseButtonStyle[1] = ALWAYS_HIDDEN;
      arrayOfNativeCloseButtonStyle[2] = AD_CONTROLLED;
      $VALUES = arrayOfNativeCloseButtonStyle;
    }
  }

  public static abstract interface OnCloseButtonStateChangeListener
  {
    public abstract void onCloseButtonStateChange(MraidView paramMraidView, boolean paramBoolean);
  }

  public static abstract interface OnCloseListener
  {
    public abstract void onClose(MraidView paramMraidView, MraidView.ViewState paramViewState);
  }

  public static abstract interface OnExpandListener
  {
    public abstract void onExpand(MraidView paramMraidView);
  }

  public static abstract interface OnFailureListener
  {
    public abstract void onFailure(MraidView paramMraidView);
  }

  public static abstract interface OnOpenListener
  {
    public abstract void onOpen(MraidView paramMraidView);
  }

  public static abstract interface OnReadyListener
  {
    public abstract void onReady(MraidView paramMraidView);
  }

  static enum PlacementType
  {
    static
    {
      PlacementType[] arrayOfPlacementType = new PlacementType[2];
      arrayOfPlacementType[0] = INLINE;
      arrayOfPlacementType[1] = INTERSTITIAL;
      $VALUES = arrayOfPlacementType;
    }
  }

  public static enum ViewState
  {
    static
    {
      DEFAULT = new ViewState("DEFAULT", 1);
      EXPANDED = new ViewState("EXPANDED", 2);
      HIDDEN = new ViewState("HIDDEN", 3);
      ViewState[] arrayOfViewState = new ViewState[4];
      arrayOfViewState[0] = LOADING;
      arrayOfViewState[1] = DEFAULT;
      arrayOfViewState[2] = EXPANDED;
      arrayOfViewState[3] = HIDDEN;
      $VALUES = arrayOfViewState;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidView
 * JD-Core Version:    0.5.3
 */