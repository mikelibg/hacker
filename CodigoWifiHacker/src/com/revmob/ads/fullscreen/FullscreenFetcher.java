package com.revmob.ads.fullscreen;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import com.revmob.ads.internal.Ad;
import com.revmob.ads.internal.AdWithImageFetcher;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class FullscreenFetcher extends AdWithImageFetcher
{
  public FullscreenFetcher(Activity paramActivity, String paramString)
  {
    super(paramActivity, paramString);
  }

  public Ad build(String paramString)
  {
    Object localObject = null;
    try
    {
      JSONArray localJSONArray = new JSONObject(paramString).getJSONObject("fullscreen").getJSONArray("links");
      String str1 = getClickUrl(localJSONArray);
      if (str1 == null)
      {
        localObject = null;
        break label102:
      }
      String str2 = getLinkByRel(localJSONArray, "html");
      Drawable localDrawable = null;
      if (str2 == null)
        localDrawable = downloadImage(getImageUrl(localJSONArray));
      FullscreenAd localFullscreenAd = new FullscreenAd(this.activity, localDrawable, str2, str1);
      localObject = localFullscreenAd;
    }
    catch (JSONException localJSONException)
    {
      localObject = null;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
    }
    label102: return localObject;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.fullscreen.FullscreenFetcher
 * JD-Core Version:    0.5.3
 */