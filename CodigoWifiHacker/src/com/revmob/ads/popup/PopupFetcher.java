package com.revmob.ads.popup;

import android.app.Activity;
import com.revmob.ads.internal.Ad;
import com.revmob.ads.internal.AdFetcher;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class PopupFetcher extends AdFetcher
{
  public PopupFetcher(Activity paramActivity, String paramString)
  {
    super(paramActivity, paramString);
  }

  public Ad build(String paramString)
  {
    Popup localPopup;
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      String str1 = localJSONObject.getJSONObject("pop_up").getString("message");
      String str2 = localJSONObject.getJSONObject("pop_up").getJSONArray("links").getJSONObject(0).getString("href");
      localPopup = new Popup(this.activity, str1, str2);
      return localPopup;
    }
    catch (JSONException localJSONException)
    {
      localPopup = null;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.popup.PopupFetcher
 * JD-Core Version:    0.5.3
 */