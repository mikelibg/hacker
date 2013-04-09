package com.revmob.ads.internal;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.util.Log;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class AdWithImageFetcher extends AdFetcher
{
  protected Thread donwloadImageFetcher;

  public AdWithImageFetcher(Activity paramActivity, String paramString)
  {
    super(paramActivity, paramString);
  }

  public static Drawable downloadImage(String paramString)
  {
    return Drawable.createFromStream(new HTTPHelper().getAndReturnTheStream(paramString), "src");
  }

  protected String getClickUrl(JSONArray paramJSONArray)
  {
    return getLinkByRel(paramJSONArray, "clicks");
  }

  protected String getImageUrl(JSONArray paramJSONArray)
  {
    return getLinkByRel(paramJSONArray, "image");
  }

  protected String getLinkByRel(JSONArray paramJSONArray, String paramString)
  {
    int i = 0;
    while (true)
    {
      String str1;
      try
      {
        if (i >= paramJSONArray.length())
          break label62;
        if (paramJSONArray.getJSONObject(i).getString("rel").equals(paramString))
        {
          String str2 = paramJSONArray.getJSONObject(i).getString("href");
          str1 = str2;
          label43: return str1;
        }
        label62: ++i;
      }
      catch (JSONException localJSONException)
      {
        Log.w("RevMob", "Malformed JSON.");
        str1 = null;
        break label43:
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.internal.AdWithImageFetcher
 * JD-Core Version:    0.5.3
 */