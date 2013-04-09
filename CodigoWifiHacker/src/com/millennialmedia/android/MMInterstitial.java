package com.millennialmedia.android;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import java.lang.ref.WeakReference;
import java.util.HashMap;

class MMInterstitial extends MMJSObject
{
  public MMJSResponse close(HashMap<String, String> paramHashMap)
  {
    Activity localActivity = (Activity)this.contextRef.get();
    if (localActivity != null)
      localActivity.finish();
    for (MMJSResponse localMMJSResponse = MMJSResponse.responseWithSuccess(); ; localMMJSResponse = null)
      return localMMJSResponse;
  }

  public MMJSResponse show(HashMap<String, String> paramHashMap)
  {
    String str = (String)paramHashMap.get("url");
    Activity localActivity = (Activity)this.contextRef.get();
    if ((str != null) && (localActivity != null))
    {
      Intent localIntent = new Intent(localActivity, MMAdViewOverlayActivity.class);
      localIntent.setData(Uri.parse(str));
      localActivity.startActivityForResult(localIntent, 0);
    }
    for (MMJSResponse localMMJSResponse = MMJSResponse.responseWithSuccess(); ; localMMJSResponse = null)
      return localMMJSResponse;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMInterstitial
 * JD-Core Version:    0.5.3
 */