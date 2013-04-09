package com.millennialmedia.android;

import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.HashMap;

class MMCommand
  implements Runnable
{
  private HashMap<String, String> arguments;
  private String callback;
  private Class cls;
  private Method method;
  private WeakReference<WebView> webViewRef;

  MMCommand(WebView paramWebView, String paramString)
  {
    this.webViewRef = new WeakReference(paramWebView);
    while (true)
    {
      int j;
      try
      {
        String[] arrayOfString1 = Uri.parse(paramString).getHost().split("\\.");
        if (arrayOfString1.length >= 2)
        {
          String str1 = arrayOfString1[(-2 + arrayOfString1.length)];
          String str2 = arrayOfString1[(-1 + arrayOfString1.length)];
          this.arguments = new HashMap();
          String[] arrayOfString2 = paramString.substring(1 + paramString.indexOf(63)).split("&");
          int i = arrayOfString2.length;
          j = 0;
          if (j < i)
          {
            String[] arrayOfString3 = arrayOfString2[j].split("=");
            if (arrayOfString3.length < 2)
              break label278;
            this.arguments.put(Uri.decode(arrayOfString3[0]), Uri.decode(arrayOfString3[1]));
            if (!(arrayOfString3[0].equalsIgnoreCase("callback")))
              break label278;
            this.callback = Uri.decode(arrayOfString3[1]);
            break label278:
          }
          this.cls = Class.forName("com.millennialmedia.android." + str1);
          Class localClass = this.cls;
          Class[] arrayOfClass = new Class[1];
          arrayOfClass[0] = this.arguments.getClass();
          this.method = localClass.getMethod(str2, arrayOfClass);
        }
      }
      catch (Exception localException)
      {
        Log.e("MillennialMediaSDK", "Exception while executing javascript call " + paramString + " " + localException.getMessage());
      }
      return;
      label278: ++j;
    }
  }

  public void run()
  {
    if ((this.cls != null) && (this.method != null));
    try
    {
      WebView localWebView1 = (WebView)this.webViewRef.get();
      if (localWebView1 != null)
      {
        MMJSObject localMMJSObject = (MMJSObject)this.cls.newInstance();
        localMMJSObject.setContext(((View)localWebView1.getParent()).getContext());
        Method localMethod = this.method;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = this.arguments;
        MMJSResponse localMMJSResponse = (MMJSResponse)localMethod.invoke(localMMJSObject, arrayOfObject1);
        if ((this.callback != null) && (this.callback.length() > 0))
        {
          WebView localWebView2 = (WebView)this.webViewRef.get();
          if (localWebView2 != null)
          {
            if (localMMJSResponse == null)
              localMMJSResponse = MMJSResponse.responseWithError(this.method.getName());
            if (localMMJSResponse.methodName == null)
              localMMJSResponse.methodName = this.method.getName();
            if (localMMJSResponse.className == null)
              localMMJSResponse.className = this.cls.getSimpleName();
            Object[] arrayOfObject2 = new Object[2];
            arrayOfObject2[0] = this.callback;
            arrayOfObject2[1] = localMMJSResponse.toJSONString();
            String str = String.format("%s(%s);", arrayOfObject2);
            MMAdViewSDK.Log.v("Executing JS bridge callback: " + str);
            localWebView2.post(new Runnable(localWebView2, str)
            {
              public void run()
              {
                this.val$webView2.loadUrl("javascript:" + this.val$call);
              }
            });
          }
        }
      }
      return;
    }
    catch (Exception localException)
    {
      Log.e("MillennialMediaSDK", "Exception while executing javascript call " + this.method.toString() + " " + localException.getMessage());
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMCommand
 * JD-Core Version:    0.5.3
 */