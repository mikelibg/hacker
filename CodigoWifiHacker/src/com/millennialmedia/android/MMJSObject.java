package com.millennialmedia.android;

import android.content.Context;
import java.lang.ref.WeakReference;

class MMJSObject
{
  protected WeakReference<Context> contextRef;

  void setContext(Context paramContext)
  {
    this.contextRef = new WeakReference(paramContext);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMJSObject
 * JD-Core Version:    0.5.3
 */