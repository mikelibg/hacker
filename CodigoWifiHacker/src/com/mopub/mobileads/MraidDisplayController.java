package com.mopub.mobileads;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.StateListDrawable;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.util.ArrayList;

class MraidDisplayController extends MraidAbstractController
{
  private static final int CLOSE_BUTTON_SIZE_DP = 50;
  private static final String LOGTAG = "MraidDisplayController";
  private static final long VIEWABILITY_TIMER_MILLIS = 3000L;
  private boolean mAdWantsCustomCloseButton;
  private Runnable mCheckViewabilityTask = new Runnable()
  {
    public void run()
    {
      boolean bool = MraidDisplayController.this.checkViewable();
      if (MraidDisplayController.this.mIsViewable != bool)
      {
        MraidDisplayController.access$002(MraidDisplayController.this, bool);
        MraidDisplayController.this.getView().fireChangeEventForProperty(MraidViewableProperty.createWithViewable(MraidDisplayController.this.mIsViewable));
      }
      MraidDisplayController.this.mHandler.postDelayed(this, 3000L);
    }
  };
  private ImageView mCloseButton;
  protected float mDensity;
  private final MraidView.ExpansionStyle mExpansionStyle;
  private Handler mHandler = new Handler();
  private boolean mIsViewable;
  private final MraidView.NativeCloseButtonStyle mNativeCloseButtonStyle;
  private BroadcastReceiver mOrientationBroadcastReceiver = new BroadcastReceiver()
  {
    private int mLastRotation;

    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if (!(paramIntent.getAction().equals("android.intent.action.CONFIGURATION_CHANGED")))
        return;
      int i = MraidDisplayController.this.getDisplayRotation();
      if (i == this.mLastRotation)
        return;
      this.mLastRotation = i;
      MraidDisplayController.this.onOrientationChanged(this.mLastRotation);
    }
  };
  private final int mOriginalRequestedOrientation;
  FrameLayout mPlaceholderView;
  private FrameLayout mRootView;
  protected int mScreenHeight;
  protected int mScreenWidth;
  private MraidView mTwoPartExpansionView;
  private int mViewIndexInParent;
  private MraidView.ViewState mViewState = MraidView.ViewState.HIDDEN;

  MraidDisplayController(MraidView paramMraidView, MraidView.ExpansionStyle paramExpansionStyle, MraidView.NativeCloseButtonStyle paramNativeCloseButtonStyle)
  {
    super(paramMraidView);
    this.mScreenWidth = i;
    this.mScreenHeight = i;
    this.mExpansionStyle = paramExpansionStyle;
    this.mNativeCloseButtonStyle = paramNativeCloseButtonStyle;
    Context localContext = getView().getContext();
    if (localContext instanceof Activity)
      i = ((Activity)localContext).getRequestedOrientation();
    this.mOriginalRequestedOrientation = i;
    initialize();
  }

  private ViewGroup createExpansionViewContainer(View paramView, int paramInt1, int paramInt2)
  {
    int i = (int)(0.5F + 50.0F * this.mDensity);
    if (paramInt1 < i)
      paramInt1 = i;
    if (paramInt2 < i)
      paramInt2 = i;
    RelativeLayout localRelativeLayout = new RelativeLayout(getView().getContext());
    localRelativeLayout.setId(101);
    View localView = new View(getView().getContext());
    localView.setBackgroundColor(0);
    localView.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
      {
        return true;
      }
    });
    localRelativeLayout.addView(localView, new RelativeLayout.LayoutParams(-1, -1));
    FrameLayout localFrameLayout = new FrameLayout(getView().getContext());
    localFrameLayout.setId(102);
    localFrameLayout.addView(paramView, new RelativeLayout.LayoutParams(-1, -1));
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(paramInt1, paramInt2);
    localLayoutParams.addRule(13);
    localRelativeLayout.addView(localFrameLayout, localLayoutParams);
    return localRelativeLayout;
  }

  private int getDisplayRotation()
  {
    return ((WindowManager)getView().getContext().getSystemService("window")).getDefaultDisplay().getOrientation();
  }

  private void initialize()
  {
    this.mViewState = MraidView.ViewState.LOADING;
    initializeScreenMetrics();
    initializeViewabilityTimer();
    getView().getContext().registerReceiver(this.mOrientationBroadcastReceiver, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
  }

  private void initializeScreenMetrics()
  {
    Context localContext = getView().getContext();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)localContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.mDensity = localDisplayMetrics.density;
    boolean bool = localContext instanceof Activity;
    int i = 0;
    int j = 0;
    if (bool)
    {
      Window localWindow = ((Activity)localContext).getWindow();
      Rect localRect = new Rect();
      localWindow.getDecorView().getWindowVisibleDisplayFrame(localRect);
      i = localRect.top;
      j = localWindow.findViewById(16908290).getTop() - i;
    }
    int k = localDisplayMetrics.widthPixels;
    int l = localDisplayMetrics.heightPixels - i - j;
    this.mScreenWidth = (int)(k * 160.0D / localDisplayMetrics.densityDpi);
    this.mScreenHeight = (int)(l * 160.0D / localDisplayMetrics.densityDpi);
  }

  private void initializeViewabilityTimer()
  {
    this.mHandler.removeCallbacks(this.mCheckViewabilityTask);
    this.mHandler.post(this.mCheckViewabilityTask);
  }

  private void onOrientationChanged(int paramInt)
  {
    initializeScreenMetrics();
    getView().fireChangeEventForProperty(MraidScreenSizeProperty.createWithSize(this.mScreenWidth, this.mScreenHeight));
  }

  private void resetViewToDefaultState()
  {
    FrameLayout localFrameLayout = (FrameLayout)this.mRootView.findViewById(102);
    RelativeLayout localRelativeLayout = (RelativeLayout)this.mRootView.findViewById(101);
    setNativeCloseButtonEnabled(false);
    localFrameLayout.removeAllViewsInLayout();
    this.mRootView.removeView(localRelativeLayout);
    getView().requestLayout();
    ViewGroup localViewGroup = (ViewGroup)this.mPlaceholderView.getParent();
    localViewGroup.addView(getView(), this.mViewIndexInParent);
    localViewGroup.removeView(this.mPlaceholderView);
    localViewGroup.invalidate();
  }

  private void setOrientationLockEnabled(boolean paramBoolean)
  {
    Context localContext = getView().getContext();
    try
    {
      Activity localActivity = (Activity)localContext;
      if (paramBoolean)
      {
        i = localActivity.getResources().getConfiguration().orientation;
        localActivity.setRequestedOrientation(i);
        return;
      }
      int i = this.mOriginalRequestedOrientation;
    }
    catch (ClassCastException localClassCastException)
    {
      Log.d("MraidDisplayController", "Unable to modify device orientation.");
    }
  }

  private void swapViewWithPlaceholderView()
  {
    ViewGroup localViewGroup = (ViewGroup)getView().getParent();
    if (localViewGroup == null)
      label15: return;
    this.mPlaceholderView = new FrameLayout(getView().getContext());
    int i = localViewGroup.getChildCount();
    for (int j = 0; ; ++j)
    {
      if ((j < i) && (localViewGroup.getChildAt(j) != getView()))
        continue;
      this.mViewIndexInParent = j;
      localViewGroup.addView(this.mPlaceholderView, j, new ViewGroup.LayoutParams(getView().getWidth(), getView().getHeight()));
      localViewGroup.removeView(getView());
      break label15:
    }
  }

  protected boolean checkViewable()
  {
    return true;
  }

  protected void close()
  {
    if (this.mViewState == MraidView.ViewState.EXPANDED)
    {
      resetViewToDefaultState();
      setOrientationLockEnabled(false);
      this.mViewState = MraidView.ViewState.DEFAULT;
      getView().fireChangeEventForProperty(MraidStateProperty.createWithViewState(this.mViewState));
    }
    while (true)
    {
      if (getView().getOnCloseListener() != null)
        getView().getOnCloseListener().onClose(getView(), this.mViewState);
      return;
      if (this.mViewState != MraidView.ViewState.DEFAULT)
        continue;
      getView().setVisibility(4);
      this.mViewState = MraidView.ViewState.HIDDEN;
      getView().fireChangeEventForProperty(MraidStateProperty.createWithViewState(this.mViewState));
    }
  }

  public void destroy()
  {
    this.mHandler.removeCallbacks(this.mCheckViewabilityTask);
    try
    {
      getView().getContext().unregisterReceiver(this.mOrientationBroadcastReceiver);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      if (!(localIllegalArgumentException.getMessage().contains("Receiver not registered")));
      throw localIllegalArgumentException;
    }
  }

  protected void expand(String paramString, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.mExpansionStyle == MraidView.ExpansionStyle.DISABLED);
    while (true)
    {
      return;
      if ((paramString != null) && (!(URLUtil.isValidUrl(paramString))))
        getView().fireErrorEvent("expand", "URL passed to expand() was invalid.");
      this.mRootView = ((FrameLayout)getView().getRootView().findViewById(16908290));
      useCustomClose(paramBoolean1);
      setOrientationLockEnabled(paramBoolean2);
      swapViewWithPlaceholderView();
      MraidView localMraidView = getView();
      if (paramString != null)
      {
        this.mTwoPartExpansionView = new MraidView(getView().getContext(), MraidView.ExpansionStyle.DISABLED, MraidView.NativeCloseButtonStyle.AD_CONTROLLED, MraidView.PlacementType.INLINE);
        this.mTwoPartExpansionView.setOnCloseListener(new MraidView.OnCloseListener()
        {
          public void onClose(MraidView paramMraidView, MraidView.ViewState paramViewState)
          {
            MraidDisplayController.this.close();
          }
        });
        this.mTwoPartExpansionView.loadUrl(paramString);
        localMraidView = this.mTwoPartExpansionView;
      }
      ViewGroup localViewGroup = createExpansionViewContainer(localMraidView, (int)(paramInt1 * this.mDensity), (int)(paramInt2 * this.mDensity));
      this.mRootView.addView(localViewGroup, new RelativeLayout.LayoutParams(-1, -1));
      if ((this.mNativeCloseButtonStyle == MraidView.NativeCloseButtonStyle.ALWAYS_VISIBLE) || ((!(this.mAdWantsCustomCloseButton)) && (this.mNativeCloseButtonStyle != MraidView.NativeCloseButtonStyle.ALWAYS_HIDDEN)))
        setNativeCloseButtonEnabled(true);
      this.mViewState = MraidView.ViewState.EXPANDED;
      getView().fireChangeEventForProperty(MraidStateProperty.createWithViewState(this.mViewState));
      if (getView().getOnExpandListener() == null)
        continue;
      getView().getOnExpandListener().onExpand(getView());
    }
  }

  protected void initializeJavaScriptState()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(MraidScreenSizeProperty.createWithSize(this.mScreenWidth, this.mScreenHeight));
    localArrayList.add(MraidViewableProperty.createWithViewable(this.mIsViewable));
    getView().fireChangeEventForProperties(localArrayList);
    this.mViewState = MraidView.ViewState.DEFAULT;
    getView().fireChangeEventForProperty(MraidStateProperty.createWithViewState(this.mViewState));
  }

  protected boolean isExpanded()
  {
    if (this.mViewState == MraidView.ViewState.EXPANDED);
    for (int i = 1; ; i = 0)
      return i;
  }

  protected void setNativeCloseButtonEnabled(boolean paramBoolean)
  {
    if (this.mRootView == null)
      label7: return;
    FrameLayout localFrameLayout = (FrameLayout)this.mRootView.findViewById(102);
    if (paramBoolean)
    {
      if (this.mCloseButton == null)
      {
        StateListDrawable localStateListDrawable = new StateListDrawable();
        localStateListDrawable.addState(new int[] { -16842919 }, getView().getResources().getDrawable(R.drawable.close_button_normal));
        localStateListDrawable.addState(new int[] { 16842919 }, getView().getResources().getDrawable(R.drawable.close_button_pressed));
        this.mCloseButton = new ImageButton(getView().getContext());
        this.mCloseButton.setImageDrawable(localStateListDrawable);
        this.mCloseButton.setBackgroundDrawable(null);
        this.mCloseButton.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramView)
          {
            MraidDisplayController.this.close();
          }
        });
      }
      int i = (int)(0.5F + 50.0F * this.mDensity);
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(i, i, 5);
      localFrameLayout.addView(this.mCloseButton, localLayoutParams);
    }
    while (true)
    {
      MraidView localMraidView = getView();
      if (localMraidView.getOnCloseButtonStateChangeListener() != null);
      localMraidView.getOnCloseButtonStateChangeListener().onCloseButtonStateChange(localMraidView, paramBoolean);
      break label7:
      localFrameLayout.removeView(this.mCloseButton);
    }
  }

  protected void useCustomClose(boolean paramBoolean)
  {
    this.mAdWantsCustomCloseButton = paramBoolean;
    MraidView localMraidView = getView();
    if (!(paramBoolean));
    for (boolean bool = true; ; bool = false)
    {
      if (localMraidView.getOnCloseButtonStateChangeListener() != null)
        localMraidView.getOnCloseButtonStateChangeListener().onCloseButtonStateChange(localMraidView, bool);
      return;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidDisplayController
 * JD-Core Version:    0.5.3
 */