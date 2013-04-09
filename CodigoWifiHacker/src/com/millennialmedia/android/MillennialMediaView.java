package com.millennialmedia.android;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.MediaController;
import android.widget.MediaController.MediaPlayerControl;
import java.io.IOException;
import java.util.Map;

public class MillennialMediaView extends SurfaceView
  implements MediaController.MediaPlayerControl
{
  private static final int STATE_ERROR = -1;
  private static final int STATE_IDLE = 0;
  private static final int STATE_PAUSED = 4;
  private static final int STATE_PLAYBACK_COMPLETED = 5;
  private static final int STATE_PLAYING = 3;
  private static final int STATE_PREPARED = 2;
  private static final int STATE_PREPARING = 1;
  private static final int STATE_RESUME = 7;
  private static final int STATE_SUSPEND = 6;
  private static final int STATE_SUSPEND_UNSUPPORTED = 8;
  private String TAG;
  private MediaPlayer.OnBufferingUpdateListener mBufferingUpdateListener;
  private boolean mCanPause;
  private boolean mCanSeekBack;
  private boolean mCanSeekForward;
  private MediaPlayer.OnCompletionListener mCompletionListener;
  private Context mContext;
  private int mCurrentBufferPercentage;
  private int mCurrentState;
  private int mDuration;
  private MediaPlayer.OnErrorListener mErrorListener;
  private Map<String, String> mHeaders;
  private MediaPlayer.OnInfoListener mInfoListener;
  private MediaController mMediaController;
  private MediaPlayer mMediaPlayer;
  private MediaPlayer.OnCompletionListener mOnCompletionListener;
  private MediaPlayer.OnErrorListener mOnErrorListener;
  private MediaPlayer.OnPreparedListener mOnPreparedListener;
  MediaPlayer.OnPreparedListener mPreparedListener;
  SurfaceHolder.Callback mSHCallback;
  private int mSeekWhenPrepared;
  MediaPlayer.OnVideoSizeChangedListener mSizeChangedListener;
  private int mStateWhenSuspended;
  private int mSurfaceHeight;
  private SurfaceHolder mSurfaceHolder;
  private int mSurfaceWidth;
  private int mTargetState;
  private Uri mUri;
  private int mVideoHeight;
  private int mVideoWidth;

  public MillennialMediaView(Context paramContext)
  {
    super(paramContext);
    this.TAG = "VideoView";
    this.mCurrentState = 0;
    this.mTargetState = 0;
    this.mSurfaceHolder = null;
    this.mMediaPlayer = null;
    this.mSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener()
    {
      public void onVideoSizeChanged(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
      {
        MillennialMediaView.access$002(MillennialMediaView.this, paramMediaPlayer.getVideoWidth());
        MillennialMediaView.access$102(MillennialMediaView.this, paramMediaPlayer.getVideoHeight());
        if ((MillennialMediaView.this.mVideoWidth == 0) || (MillennialMediaView.this.mVideoHeight == 0))
          return;
        MillennialMediaView.this.getHolder().setFixedSize(MillennialMediaView.this.mVideoWidth, MillennialMediaView.this.mVideoHeight);
      }
    };
    this.mPreparedListener = new MediaPlayer.OnPreparedListener()
    {
      public void onPrepared(MediaPlayer paramMediaPlayer)
      {
        MillennialMediaView.access$202(MillennialMediaView.this, 2);
        MillennialMediaView.access$302(MillennialMediaView.this, MillennialMediaView.access$402(MillennialMediaView.this, MillennialMediaView.access$502(MillennialMediaView.this, true)));
        if (MillennialMediaView.this.mOnPreparedListener != null)
          MillennialMediaView.this.mOnPreparedListener.onPrepared(MillennialMediaView.this.mMediaPlayer);
        if (MillennialMediaView.this.mMediaController != null)
          MillennialMediaView.this.mMediaController.setEnabled(true);
        MillennialMediaView.access$002(MillennialMediaView.this, paramMediaPlayer.getVideoWidth());
        MillennialMediaView.access$102(MillennialMediaView.this, paramMediaPlayer.getVideoHeight());
        int i = MillennialMediaView.this.mSeekWhenPrepared;
        if (i != 0)
          MillennialMediaView.this.seekTo(i);
        if ((MillennialMediaView.this.mVideoWidth != 0) && (MillennialMediaView.this.mVideoHeight != 0))
        {
          MillennialMediaView.this.getHolder().setFixedSize(MillennialMediaView.this.mVideoWidth, MillennialMediaView.this.mVideoHeight);
          if ((MillennialMediaView.this.mSurfaceWidth == MillennialMediaView.this.mVideoWidth) && (MillennialMediaView.this.mSurfaceHeight == MillennialMediaView.this.mVideoHeight))
          {
            if (MillennialMediaView.this.mTargetState != 3)
              break label248;
            MillennialMediaView.this.start();
            if (MillennialMediaView.this.mMediaController != null)
              MillennialMediaView.this.mMediaController.show();
          }
        }
        while (true)
        {
          return;
          label248: if ((MillennialMediaView.this.isPlaying()) || ((i == 0) && (MillennialMediaView.this.getCurrentPosition() <= 0)) || (MillennialMediaView.this.mMediaController == null))
            continue;
          MillennialMediaView.this.mMediaController.show(0);
          continue;
          if (MillennialMediaView.this.mTargetState != 3)
            continue;
          MillennialMediaView.this.start();
        }
      }
    };
    this.mInfoListener = new MediaPlayer.OnInfoListener()
    {
      public boolean onInfo(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
      {
        if (paramInt1 == 801)
          MillennialMediaView.access$402(MillennialMediaView.this, MillennialMediaView.access$502(MillennialMediaView.this, false));
        return false;
      }
    };
    this.mCompletionListener = new MediaPlayer.OnCompletionListener()
    {
      public void onCompletion(MediaPlayer paramMediaPlayer)
      {
        MillennialMediaView.access$202(MillennialMediaView.this, 5);
        MillennialMediaView.access$1202(MillennialMediaView.this, 5);
        if (MillennialMediaView.this.mMediaController != null)
          MillennialMediaView.this.mMediaController.hide();
        if (MillennialMediaView.this.mOnCompletionListener == null)
          return;
        MillennialMediaView.this.mOnCompletionListener.onCompletion(MillennialMediaView.this.mMediaPlayer);
      }
    };
    this.mErrorListener = new MediaPlayer.OnErrorListener()
    {
      public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
      {
        MMAdViewSDK.Log.d("Error: " + paramInt1 + "," + paramInt2);
        MillennialMediaView.access$202(MillennialMediaView.this, -1);
        MillennialMediaView.access$1202(MillennialMediaView.this, -1);
        if (MillennialMediaView.this.mMediaController != null)
          MillennialMediaView.this.mMediaController.hide();
        if ((MillennialMediaView.this.mOnErrorListener != null) && (MillennialMediaView.this.mOnErrorListener.onError(MillennialMediaView.this.mMediaPlayer, paramInt1, paramInt2)));
        do
          label103: return true;
        while (MillennialMediaView.this.getWindowToken() == null);
        MillennialMediaView.this.mContext.getResources();
        if (paramInt1 == 200);
        for (int i = 17039381; ; i = 17039377)
        {
          new AlertDialog.Builder(MillennialMediaView.this.mContext).setTitle("Sorry").setMessage(i).setPositiveButton("OK", new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramDialogInterface, int paramInt)
            {
              if (MillennialMediaView.this.mOnCompletionListener == null)
                return;
              MillennialMediaView.this.mOnCompletionListener.onCompletion(MillennialMediaView.this.mMediaPlayer);
            }
          }).setCancelable(false).show();
          break label103:
        }
      }
    };
    this.mBufferingUpdateListener = new MediaPlayer.OnBufferingUpdateListener()
    {
      public void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
      {
        MillennialMediaView.access$1602(MillennialMediaView.this, paramInt);
      }
    };
    this.mSHCallback = new SurfaceHolder.Callback()
    {
      public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
      {
        MillennialMediaView.access$1002(MillennialMediaView.this, paramInt2);
        MillennialMediaView.access$1102(MillennialMediaView.this, paramInt3);
        int i;
        if (MillennialMediaView.this.mTargetState == 3)
        {
          i = 1;
          label33: if ((MillennialMediaView.this.mVideoWidth != paramInt2) || (MillennialMediaView.this.mVideoHeight != paramInt3))
            break label160;
        }
        for (int j = 1; ; j = 0)
        {
          if ((MillennialMediaView.this.mMediaPlayer != null) && (i != 0) && (j != 0))
          {
            if (MillennialMediaView.this.mSeekWhenPrepared != 0)
              MillennialMediaView.this.seekTo(MillennialMediaView.this.mSeekWhenPrepared);
            MillennialMediaView.this.start();
            if (MillennialMediaView.this.mMediaController != null)
            {
              if (MillennialMediaView.this.mMediaController.isShowing())
                MillennialMediaView.this.mMediaController.hide();
              MillennialMediaView.this.mMediaController.show();
            }
          }
          return;
          i = 0;
          label160: break label33:
        }
      }

      public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
      {
        MillennialMediaView.access$1702(MillennialMediaView.this, paramSurfaceHolder);
        if ((MillennialMediaView.this.mMediaPlayer != null) && (MillennialMediaView.this.mCurrentState == 6) && (MillennialMediaView.this.mTargetState == 7))
          MillennialMediaView.this.mMediaPlayer.setDisplay(MillennialMediaView.this.mSurfaceHolder);
        while (true)
        {
          return;
          MillennialMediaView.this.openVideo();
        }
      }

      public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
      {
        MillennialMediaView.access$1702(MillennialMediaView.this, null);
        if (MillennialMediaView.this.mMediaController != null)
          MillennialMediaView.this.mMediaController.hide();
        if (MillennialMediaView.this.mCurrentState == 6)
          return;
        MillennialMediaView.this.release(true);
      }
    };
    this.mContext = paramContext;
    initVideoView();
  }

  public MillennialMediaView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
    this.mContext = paramContext;
    initVideoView();
  }

  public MillennialMediaView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.TAG = "VideoView";
    this.mCurrentState = 0;
    this.mTargetState = 0;
    this.mSurfaceHolder = null;
    this.mMediaPlayer = null;
    this.mSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener()
    {
      public void onVideoSizeChanged(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
      {
        MillennialMediaView.access$002(MillennialMediaView.this, paramMediaPlayer.getVideoWidth());
        MillennialMediaView.access$102(MillennialMediaView.this, paramMediaPlayer.getVideoHeight());
        if ((MillennialMediaView.this.mVideoWidth == 0) || (MillennialMediaView.this.mVideoHeight == 0))
          return;
        MillennialMediaView.this.getHolder().setFixedSize(MillennialMediaView.this.mVideoWidth, MillennialMediaView.this.mVideoHeight);
      }
    };
    this.mPreparedListener = new MediaPlayer.OnPreparedListener()
    {
      public void onPrepared(MediaPlayer paramMediaPlayer)
      {
        MillennialMediaView.access$202(MillennialMediaView.this, 2);
        MillennialMediaView.access$302(MillennialMediaView.this, MillennialMediaView.access$402(MillennialMediaView.this, MillennialMediaView.access$502(MillennialMediaView.this, true)));
        if (MillennialMediaView.this.mOnPreparedListener != null)
          MillennialMediaView.this.mOnPreparedListener.onPrepared(MillennialMediaView.this.mMediaPlayer);
        if (MillennialMediaView.this.mMediaController != null)
          MillennialMediaView.this.mMediaController.setEnabled(true);
        MillennialMediaView.access$002(MillennialMediaView.this, paramMediaPlayer.getVideoWidth());
        MillennialMediaView.access$102(MillennialMediaView.this, paramMediaPlayer.getVideoHeight());
        int i = MillennialMediaView.this.mSeekWhenPrepared;
        if (i != 0)
          MillennialMediaView.this.seekTo(i);
        if ((MillennialMediaView.this.mVideoWidth != 0) && (MillennialMediaView.this.mVideoHeight != 0))
        {
          MillennialMediaView.this.getHolder().setFixedSize(MillennialMediaView.this.mVideoWidth, MillennialMediaView.this.mVideoHeight);
          if ((MillennialMediaView.this.mSurfaceWidth == MillennialMediaView.this.mVideoWidth) && (MillennialMediaView.this.mSurfaceHeight == MillennialMediaView.this.mVideoHeight))
          {
            if (MillennialMediaView.this.mTargetState != 3)
              break label248;
            MillennialMediaView.this.start();
            if (MillennialMediaView.this.mMediaController != null)
              MillennialMediaView.this.mMediaController.show();
          }
        }
        while (true)
        {
          return;
          label248: if ((MillennialMediaView.this.isPlaying()) || ((i == 0) && (MillennialMediaView.this.getCurrentPosition() <= 0)) || (MillennialMediaView.this.mMediaController == null))
            continue;
          MillennialMediaView.this.mMediaController.show(0);
          continue;
          if (MillennialMediaView.this.mTargetState != 3)
            continue;
          MillennialMediaView.this.start();
        }
      }
    };
    this.mInfoListener = new MediaPlayer.OnInfoListener()
    {
      public boolean onInfo(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
      {
        if (paramInt1 == 801)
          MillennialMediaView.access$402(MillennialMediaView.this, MillennialMediaView.access$502(MillennialMediaView.this, false));
        return false;
      }
    };
    this.mCompletionListener = new MediaPlayer.OnCompletionListener()
    {
      public void onCompletion(MediaPlayer paramMediaPlayer)
      {
        MillennialMediaView.access$202(MillennialMediaView.this, 5);
        MillennialMediaView.access$1202(MillennialMediaView.this, 5);
        if (MillennialMediaView.this.mMediaController != null)
          MillennialMediaView.this.mMediaController.hide();
        if (MillennialMediaView.this.mOnCompletionListener == null)
          return;
        MillennialMediaView.this.mOnCompletionListener.onCompletion(MillennialMediaView.this.mMediaPlayer);
      }
    };
    this.mErrorListener = new MediaPlayer.OnErrorListener()
    {
      public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
      {
        MMAdViewSDK.Log.d("Error: " + paramInt1 + "," + paramInt2);
        MillennialMediaView.access$202(MillennialMediaView.this, -1);
        MillennialMediaView.access$1202(MillennialMediaView.this, -1);
        if (MillennialMediaView.this.mMediaController != null)
          MillennialMediaView.this.mMediaController.hide();
        if ((MillennialMediaView.this.mOnErrorListener != null) && (MillennialMediaView.this.mOnErrorListener.onError(MillennialMediaView.this.mMediaPlayer, paramInt1, paramInt2)));
        do
          label103: return true;
        while (MillennialMediaView.this.getWindowToken() == null);
        MillennialMediaView.this.mContext.getResources();
        if (paramInt1 == 200);
        for (int i = 17039381; ; i = 17039377)
        {
          new AlertDialog.Builder(MillennialMediaView.this.mContext).setTitle("Sorry").setMessage(i).setPositiveButton("OK", new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramDialogInterface, int paramInt)
            {
              if (MillennialMediaView.this.mOnCompletionListener == null)
                return;
              MillennialMediaView.this.mOnCompletionListener.onCompletion(MillennialMediaView.this.mMediaPlayer);
            }
          }).setCancelable(false).show();
          break label103:
        }
      }
    };
    this.mBufferingUpdateListener = new MediaPlayer.OnBufferingUpdateListener()
    {
      public void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
      {
        MillennialMediaView.access$1602(MillennialMediaView.this, paramInt);
      }
    };
    this.mSHCallback = new SurfaceHolder.Callback()
    {
      public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
      {
        MillennialMediaView.access$1002(MillennialMediaView.this, paramInt2);
        MillennialMediaView.access$1102(MillennialMediaView.this, paramInt3);
        int i;
        if (MillennialMediaView.this.mTargetState == 3)
        {
          i = 1;
          label33: if ((MillennialMediaView.this.mVideoWidth != paramInt2) || (MillennialMediaView.this.mVideoHeight != paramInt3))
            break label160;
        }
        for (int j = 1; ; j = 0)
        {
          if ((MillennialMediaView.this.mMediaPlayer != null) && (i != 0) && (j != 0))
          {
            if (MillennialMediaView.this.mSeekWhenPrepared != 0)
              MillennialMediaView.this.seekTo(MillennialMediaView.this.mSeekWhenPrepared);
            MillennialMediaView.this.start();
            if (MillennialMediaView.this.mMediaController != null)
            {
              if (MillennialMediaView.this.mMediaController.isShowing())
                MillennialMediaView.this.mMediaController.hide();
              MillennialMediaView.this.mMediaController.show();
            }
          }
          return;
          i = 0;
          label160: break label33:
        }
      }

      public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
      {
        MillennialMediaView.access$1702(MillennialMediaView.this, paramSurfaceHolder);
        if ((MillennialMediaView.this.mMediaPlayer != null) && (MillennialMediaView.this.mCurrentState == 6) && (MillennialMediaView.this.mTargetState == 7))
          MillennialMediaView.this.mMediaPlayer.setDisplay(MillennialMediaView.this.mSurfaceHolder);
        while (true)
        {
          return;
          MillennialMediaView.this.openVideo();
        }
      }

      public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
      {
        MillennialMediaView.access$1702(MillennialMediaView.this, null);
        if (MillennialMediaView.this.mMediaController != null)
          MillennialMediaView.this.mMediaController.hide();
        if (MillennialMediaView.this.mCurrentState == 6)
          return;
        MillennialMediaView.this.release(true);
      }
    };
    this.mContext = paramContext;
    initVideoView();
  }

  private void attachMediaController()
  {
    if ((this.mMediaPlayer != null) && (this.mMediaController != null))
    {
      this.mMediaController.setMediaPlayer(this);
      if (!(getParent() instanceof View))
        break label60;
    }
    for (Object localObject = (View)getParent(); ; localObject = this)
    {
      this.mMediaController.setAnchorView((View)localObject);
      this.mMediaController.setEnabled(isInPlaybackState());
      label60: return;
    }
  }

  private void initVideoView()
  {
    this.mVideoWidth = 0;
    this.mVideoHeight = 0;
    getHolder().addCallback(this.mSHCallback);
    getHolder().setType(3);
    setFocusable(true);
    setFocusableInTouchMode(true);
    requestFocus();
    this.mCurrentState = 0;
    this.mTargetState = 0;
  }

  private boolean isInPlaybackState()
  {
    int i = 1;
    if ((this.mMediaPlayer != null) && (this.mCurrentState != -1) && (this.mCurrentState != 0) && (this.mCurrentState != i));
    while (true)
    {
      return i;
      i = 0;
    }
  }

  private void release(boolean paramBoolean)
  {
    if (this.mMediaPlayer == null)
      return;
    this.mMediaPlayer.reset();
    this.mMediaPlayer.release();
    this.mMediaPlayer = null;
    this.mCurrentState = 0;
    if (!(paramBoolean))
      return;
    this.mTargetState = 0;
  }

  private void toggleMediaControlsVisiblity()
  {
    if (this.mMediaController.isShowing())
      this.mMediaController.hide();
    while (true)
    {
      return;
      this.mMediaController.show();
    }
  }

  public boolean canPause()
  {
    return this.mCanPause;
  }

  public boolean canSeekBackward()
  {
    return this.mCanSeekBack;
  }

  public boolean canSeekForward()
  {
    return this.mCanSeekForward;
  }

  public int getBufferPercentage()
  {
    if (this.mMediaPlayer != null);
    for (int i = this.mCurrentBufferPercentage; ; i = 0)
      return i;
  }

  public int getCurrentPosition()
  {
    if (isInPlaybackState());
    for (int i = this.mMediaPlayer.getCurrentPosition(); ; i = 0)
      return i;
  }

  public int getDuration()
  {
    if (isInPlaybackState())
      if (this.mDuration <= 0);
    for (int i = this.mDuration; ; i = this.mDuration)
    {
      while (true)
      {
        return i;
        this.mDuration = this.mMediaPlayer.getDuration();
        i = this.mDuration;
      }
      this.mDuration = -1;
    }
  }

  public boolean isInErrorState()
  {
    if (this.mCurrentState == -1);
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean isPlaying()
  {
    if ((isInPlaybackState()) && (this.mMediaPlayer.isPlaying()));
    for (int i = 1; ; i = 0)
      return i;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool1 = true;
    boolean bool2;
    if ((paramInt != 4) && (paramInt != 24) && (paramInt != 25) && (paramInt != 82) && (paramInt != 5) && (paramInt != 6))
    {
      bool2 = bool1;
      label39: if ((!(isInPlaybackState())) || (!(bool2)) || (this.mMediaController == null))
        break label140;
      if ((paramInt != 79) && (paramInt != 85))
        break label113;
      if (!(this.mMediaPlayer.isPlaying()))
        break label99;
      pause();
      this.mMediaController.show();
    }
    while (true)
    {
      label91: return bool1;
      bool2 = false;
      break label39:
      label99: start();
      this.mMediaController.hide();
    }
    if ((paramInt == 86) && (this.mMediaPlayer.isPlaying()))
    {
      label113: pause();
      this.mMediaController.show();
    }
    while (true)
    {
      label140: bool1 = super.onKeyDown(paramInt, paramKeyEvent);
      break label91:
      toggleMediaControlsVisiblity();
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = getDefaultSize(this.mVideoWidth, paramInt1);
    int j = getDefaultSize(this.mVideoHeight, paramInt2);
    if ((this.mVideoWidth > 0) && (this.mVideoHeight > 0))
    {
      if (j * this.mVideoWidth <= i * this.mVideoHeight)
        break label70;
      j = i * this.mVideoHeight / this.mVideoWidth;
    }
    while (true)
    {
      setMeasuredDimension(i, j);
      return;
      label70: if (j * this.mVideoWidth >= i * this.mVideoHeight)
        continue;
      i = j * this.mVideoWidth / this.mVideoHeight;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((isInPlaybackState()) && (this.mMediaController != null))
      toggleMediaControlsVisiblity();
    return false;
  }

  public boolean onTrackballEvent(MotionEvent paramMotionEvent)
  {
    if ((isInPlaybackState()) && (this.mMediaController != null))
      toggleMediaControlsVisiblity();
    return false;
  }

  public void openVideo()
  {
    if ((this.mUri == null) || (this.mSurfaceHolder == null));
    while (true)
    {
      return;
      Intent localIntent = new Intent("com.android.music.musicservicecommand");
      localIntent.putExtra("command", "pause");
      this.mContext.sendBroadcast(localIntent);
      release(false);
      try
      {
        this.mMediaPlayer = new MediaPlayer();
        this.mMediaPlayer.setOnPreparedListener(this.mPreparedListener);
        this.mMediaPlayer.setOnVideoSizeChangedListener(this.mSizeChangedListener);
        this.mDuration = -1;
        this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
        this.mMediaPlayer.setOnErrorListener(this.mErrorListener);
        this.mMediaPlayer.setOnBufferingUpdateListener(this.mBufferingUpdateListener);
        this.mCurrentBufferPercentage = 0;
        this.mMediaPlayer.setDataSource(this.mContext, this.mUri);
        this.mMediaPlayer.setDisplay(this.mSurfaceHolder);
        this.mMediaPlayer.setAudioStreamType(3);
        this.mMediaPlayer.setScreenOnWhilePlaying(true);
        this.mMediaPlayer.prepareAsync();
        this.mCurrentState = 1;
        attachMediaController();
      }
      catch (IOException localIOException)
      {
        Log.w(this.TAG, "Unable to open content: " + this.mUri, localIOException);
        this.mCurrentState = -1;
        this.mTargetState = -1;
        this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        Log.w(this.TAG, "Unable to open content: " + this.mUri, localIllegalArgumentException);
        this.mCurrentState = -1;
        this.mTargetState = -1;
        this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
      }
    }
  }

  public void pause()
  {
    if ((isInPlaybackState()) && (this.mMediaPlayer.isPlaying()))
    {
      this.mMediaPlayer.pause();
      this.mCurrentState = 4;
    }
    this.mTargetState = 4;
  }

  public int resolveAdjustedSize(int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    int j = View.MeasureSpec.getMode(paramInt2);
    int k = View.MeasureSpec.getSize(paramInt2);
    switch (j)
    {
    default:
    case 0:
    case -2147483648:
    case 1073741824:
    }
    while (true)
    {
      return i;
      i = paramInt1;
      continue;
      i = Math.min(paramInt1, k);
      continue;
      i = k;
    }
  }

  public void seekTo(int paramInt)
  {
    if (isInPlaybackState())
      this.mMediaPlayer.seekTo(paramInt);
    for (this.mSeekWhenPrepared = 0; ; this.mSeekWhenPrepared = paramInt)
      return;
  }

  public void setMediaController(MediaController paramMediaController)
  {
    if (this.mMediaController != null)
      this.mMediaController.hide();
    this.mMediaController = paramMediaController;
    attachMediaController();
  }

  public void setOnCompletionListener(MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    this.mOnCompletionListener = paramOnCompletionListener;
  }

  public void setOnErrorListener(MediaPlayer.OnErrorListener paramOnErrorListener)
  {
    this.mOnErrorListener = paramOnErrorListener;
  }

  public void setOnPreparedListener(MediaPlayer.OnPreparedListener paramOnPreparedListener)
  {
    this.mOnPreparedListener = paramOnPreparedListener;
  }

  public void setVideoPath(String paramString)
  {
    setVideoURI(Uri.parse(paramString));
  }

  public void setVideoURI(Uri paramUri)
  {
    setVideoURI(paramUri, null);
  }

  public void setVideoURI(Uri paramUri, Map<String, String> paramMap)
  {
    this.mUri = paramUri;
    this.mHeaders = paramMap;
    this.mSeekWhenPrepared = 0;
    openVideo();
    requestLayout();
    invalidate();
  }

  public void start()
  {
    if (isInPlaybackState())
    {
      this.mMediaPlayer.start();
      this.mCurrentState = 3;
    }
    this.mTargetState = 3;
  }

  public void stopPlayback()
  {
    if (this.mMediaPlayer == null)
      return;
    this.mMediaPlayer.stop();
    this.mMediaPlayer.release();
    this.mUri = null;
    this.mMediaPlayer = null;
    this.mCurrentState = 0;
    this.mTargetState = 0;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MillennialMediaView
 * JD-Core Version:    0.5.3
 */