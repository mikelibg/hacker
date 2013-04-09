package com.chartboost.sdk;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.RelativeLayout.LayoutParams;
import org.json.JSONObject;

public class CBWebView extends WebView
{
  private JSONObject responseContext;
  private CBViewState state;
  private CBViewType type;

  public CBWebView(Context paramContext, CBViewType paramCBViewType)
  {
    super(paramContext);
    setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    if (paramCBViewType == CBViewType.CBViewTypeMoreApps)
      setBackgroundColor(-13421773);
    while (true)
    {
      getSettings().setJavaScriptEnabled(true);
      this.type = paramCBViewType;
      if (paramCBViewType == CBViewType.CBViewTypeInterstitial)
        setOnTouchListener(new View.OnTouchListener()
        {
          public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
          {
            if (paramMotionEvent.getAction() == 2);
            for (int i = 1; ; i = 0)
              return i;
          }
        });
      return;
      setBackgroundColor(-1728053248);
    }
  }

  public JSONObject getResponseContext()
  {
    return this.responseContext;
  }

  public CBViewState getState()
  {
    return this.state;
  }

  public CBViewType getType()
  {
    return this.type;
  }

  public void setResponseContext(JSONObject paramJSONObject)
  {
    this.responseContext = paramJSONObject;
  }

  public void setState(CBViewState paramCBViewState)
  {
    this.state = paramCBViewState;
  }

  public void setType(CBViewType paramCBViewType)
  {
    this.type = paramCBViewType;
  }

  public static enum CBViewState
  {
    static
    {
      CBViewStateDisplayedByDefaultController = new CBViewState("CBViewStateDisplayedByDefaultController", 2);
      CBViewStateWaitingForDismissal = new CBViewState("CBViewStateWaitingForDismissal", 3);
      CBViewState[] arrayOfCBViewState = new CBViewState[4];
      arrayOfCBViewState[0] = CBViewStateOther;
      arrayOfCBViewState[1] = CBViewStateWaitingForDisplay;
      arrayOfCBViewState[2] = CBViewStateDisplayedByDefaultController;
      arrayOfCBViewState[3] = CBViewStateWaitingForDismissal;
      ENUM$VALUES = arrayOfCBViewState;
    }
  }

  public static enum CBViewType
  {
    static
    {
      CBViewType[] arrayOfCBViewType = new CBViewType[2];
      arrayOfCBViewType[0] = CBViewTypeInterstitial;
      arrayOfCBViewType[1] = CBViewTypeMoreApps;
      ENUM$VALUES = arrayOfCBViewType;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.chartboost.sdk.CBWebView
 * JD-Core Version:    0.5.3
 */