package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

class MraidBrowserController extends MraidAbstractController
{
  private static final String LOGTAG = "MraidBrowserController";

  MraidBrowserController(MraidView paramMraidView)
  {
    super(paramMraidView);
  }

  protected void open(String paramString)
  {
    Log.d("MraidBrowserController", "Opening in-app browser: " + paramString);
    MraidView localMraidView = getView();
    if (localMraidView.getOnOpenListener() != null)
      localMraidView.getOnOpenListener().onOpen(localMraidView);
    Context localContext = getView().getContext();
    Intent localIntent = new Intent(localContext, MraidBrowser.class);
    localIntent.putExtra("extra_url", paramString);
    localIntent.addFlags(268435456);
    localContext.startActivity(localIntent);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidBrowserController
 * JD-Core Version:    0.5.3
 */