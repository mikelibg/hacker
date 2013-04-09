package com.revmob.ads.banner;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import com.revmob.ads.EnvironmentConfig;
import com.revmob.ads.internal.Ad;
import com.revmob.ads.internal.AdWithImageFetcher;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class BannerFetcher extends AdWithImageFetcher
{
  private String size;

  public BannerFetcher(Activity paramActivity, String paramString1, String paramString2)
  {
    super(paramActivity, paramString1);
    this.size = paramString2;
  }

  public Ad build(String paramString)
  {
    String str1;
    String str2;
    Drawable localDrawable;
    label85: BannerAd localBannerAd;
    try
    {
      JSONArray localJSONArray1 = new JSONObject(paramString).getJSONArray("banners");
      int i = 0;
      if (i >= localJSONArray1.length())
        break label113;
      JSONArray localJSONArray2 = ((JSONObject)localJSONArray1.get(i)).getJSONArray("links");
      str1 = getClickUrl(localJSONArray2);
      str2 = getLinkByRel(localJSONArray2, "html");
      localDrawable = null;
      if (str2 != null)
        break label122;
      localDrawable = downloadImage(getImageUrl(localJSONArray2));
      break label122:
      localBannerAd = new BannerAd(this.activity, localDrawable, str2, str1);
      label103: return localBannerAd;
      label113: label122: ++i;
    }
    catch (JSONException localJSONException)
    {
      localBannerAd = null;
      break label103:
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      break label113:
      if (str1 != null);
      if (str2 == null);
      if (localDrawable != null);
      break label85:
    }
  }

  public JSONObject getFetchEntity()
  {
    JSONObject localJSONObject;
    try
    {
      localJSONObject = EnvironmentConfig.defaultJsonPayload(this.activity);
      localJSONObject.put("ad", new JSONObject().put("size", this.size));
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      localJSONObject = null;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.banner.BannerFetcher
 * JD-Core Version:    0.5.3
 */