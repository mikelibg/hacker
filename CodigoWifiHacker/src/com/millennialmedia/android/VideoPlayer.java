package com.millennialmedia.android;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ServerSocket;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class VideoPlayer extends Activity
  implements Handler.Callback
{
  private static final int MESSAGE_DELAYED_BUTTON = 3;
  private static final int MESSAGE_EVENTLOG_CHECK = 2;
  private static final int MESSAGE_INACTIVITY_ANIMATION = 1;
  private RelativeLayout buttonsLayout;
  private RelativeLayout controlsLayout;
  private String current;
  private int currentVideoPosition = 0;
  private Handler handler;
  private TextView hudSeconds;
  private TextView hudStaticText;
  private boolean isCachedAd;
  private int lastVideoPosition;
  private EventLogSet logSet;
  private Button mPausePlay;
  private Button mRewind;
  private Button mStop;
  private MillennialMediaView mVideoView;
  private boolean paused = false;
  private ScreenReceiver receiver;
  private RelativeLayout relLayout;
  private boolean showBottomBar = true;
  private boolean showCountdownHud = true;
  private VideoAd videoAd;
  private boolean videoCompleted;
  private boolean videoCompletedOnce;
  protected VideoServer videoServer;
  private boolean waitForUserPresent;

  private boolean canFadeButtons()
  {
    if ((this.videoAd.stayInPlayer) && (this.videoCompleted));
    for (int i = 0; ; i = 1)
      return i;
  }

  private void dismiss()
  {
    MMAdViewSDK.Log.d("Video ad player closed");
    if (this.mVideoView != null)
      this.mVideoView.stopPlayback();
    finish();
  }

  private void dispatchButtonClick(String paramString1, String paramString2)
  {
    MMAdViewSDK.Log.d("Button Clicked: " + paramString1);
    String str5;
    if (paramString1 != null)
    {
      if (!(paramString1.startsWith("mmsdk")))
        break label553;
      str5 = paramString1.substring(8);
      if (str5 == null)
        break label391;
      if (!(str5.equalsIgnoreCase("restartVideo")))
        break label338;
      if ((this.isCachedAd) && (this.videoAd != null))
      {
        ArrayList localArrayList = this.videoAd.buttons;
        if ((this.buttonsLayout != null) && (localArrayList != null))
        {
          this.handler.removeMessages(1);
          this.handler.removeMessages(2);
          this.handler.removeMessages(3);
          this.lastVideoPosition = 0;
          for (int i = 0; i < localArrayList.size(); ++i)
          {
            MMAdViewSDK.Log.d("i: " + i);
            VideoImage localVideoImage = (VideoImage)localArrayList.get(i);
            if (localVideoImage == null)
              continue;
            if (localVideoImage.appearanceDelay > 0L)
            {
              ImageButton localImageButton = localVideoImage.button;
              this.buttonsLayout.removeView(localImageButton);
              Message localMessage2 = Message.obtain(this.handler, 3, localVideoImage);
              this.handler.sendMessageDelayed(localMessage2, localVideoImage.appearanceDelay);
            }
            if (localVideoImage.inactivityTimeout > 0L)
            {
              Message localMessage1 = Message.obtain(this.handler, 1, localVideoImage);
              this.handler.sendMessageDelayed(localMessage1, localVideoImage.inactivityTimeout + localVideoImage.appearanceDelay + localVideoImage.fadeDuration);
            }
            if (this.showCountdownHud)
              showHud(true);
            if (this.handler == null)
              continue;
            this.handler.sendMessageDelayed(Message.obtain(this.handler, 2), 1000L);
          }
        }
      }
      if (this.mVideoView == null)
        break label391;
      playVideo(0);
    }
    while (true)
    {
      label337: return;
      if (str5.equalsIgnoreCase("endVideo"))
      {
        label338: MMAdViewSDK.Log.d("End");
        if (this.mVideoView == null)
          break label391;
        this.current = null;
        this.mVideoView.stopPlayback();
        if (this.videoAd == null)
          continue;
        dismiss();
      }
      MMAdViewSDK.Log.v("Unrecognized mmsdk:// URL");
      label391: String str3;
      String str2;
      label438: Uri localUri;
      try
      {
        while (true)
        {
          while (true)
          {
            NetworkingThread localNetworkingThread = new NetworkingThread();
            localNetworkingThread.urlString = paramString1;
            localNetworkingThread.setPriority(10);
            localNetworkingThread.start();
            localNetworkingThread.join();
            str3 = localNetworkingThread.mimeTypeString;
            str2 = localNetworkingThread.locationString;
            MMAdViewSDK.Log.v("locationString: " + str2);
            if (str2 != null);
            localUri = Uri.parse(str2);
            if (str3 == null)
              str3 = "";
            try
            {
              if (!(localUri.getScheme().equalsIgnoreCase("mmsdk")))
                break label635;
              if ((localUri.getHost().equalsIgnoreCase("endVideo")) && (this.mVideoView != null));
              this.current = null;
              this.mVideoView.stopPlayback();
              dismiss();
            }
            catch (ActivityNotFoundException localActivityNotFoundException2)
            {
              Log.e("MillennialMediaSDK", localActivityNotFoundException2.getMessage());
            }
          }
          break label337:
          label553: if (!(paramString1.startsWith("mmbrowser")))
            continue;
          String str1 = paramString1.substring(12);
          if (str1 == null)
            continue;
          MMAdViewSDK.Log.v("Launch browser");
          try
          {
            Intent localIntent1 = new Intent("android.intent.action.VIEW", Uri.parse(str1));
            localIntent1.setFlags(603979776);
            startActivity(localIntent1);
          }
          catch (ActivityNotFoundException localActivityNotFoundException1)
          {
            localActivityNotFoundException1.printStackTrace();
          }
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        str2 = null;
        str3 = null;
        break label438:
        if ((((localUri.getScheme().equalsIgnoreCase("http")) || (localUri.getScheme().equalsIgnoreCase("https")))) && (str3.equalsIgnoreCase("text/html")))
        {
          label635: Intent localIntent2 = new Intent(this, MMAdViewOverlayActivity.class);
          localIntent2.setFlags(603979776);
          localIntent2.setData(localUri);
          localIntent2.putExtra("cachedAdView", true);
          localIntent2.putExtra("overlayOrientation", paramString2);
          startActivityForResult(localIntent2, 0);
        }
        if (localUri.getScheme().equalsIgnoreCase("market"))
        {
          MMAdViewSDK.Log.v("Android Market URL, launch the Market Application");
          Intent localIntent7 = new Intent("android.intent.action.VIEW", localUri);
          localIntent7.setFlags(603979776);
          startActivity(localIntent7);
        }
        if ((!(localUri.getScheme().equalsIgnoreCase("rtsp"))) && (((!(localUri.getScheme().equalsIgnoreCase("http"))) || ((!(str3.equalsIgnoreCase("video/mp4"))) && (!(str3.equalsIgnoreCase("video/3gpp")))))))
          break label844;
        playVideo(0);
      }
      continue;
      if (localUri.getScheme().equalsIgnoreCase("tel"))
      {
        label844: MMAdViewSDK.Log.v("Telephone Number, launch the phone");
        Intent localIntent6 = new Intent("android.intent.action.DIAL", localUri);
        localIntent6.setFlags(603979776);
        startActivity(localIntent6);
      }
      if (localUri.getScheme().equalsIgnoreCase("http"))
      {
        Intent localIntent3 = new Intent(this, MMAdViewOverlayActivity.class);
        localIntent3.setFlags(603979776);
        localIntent3.setData(localUri);
        localIntent3.putExtra("cachedAdView", true);
        localIntent3.putExtra("overlayOrientation", paramString2);
        startActivityForResult(localIntent3, 0);
      }
      if (localUri.getScheme().equalsIgnoreCase("mmbrowser"))
      {
        String str4 = paramString1.substring(12);
        if (str4 == null)
          continue;
        MMAdViewSDK.Log.v("Launch browser");
        Intent localIntent5 = new Intent("android.intent.action.VIEW", Uri.parse(str4));
        localIntent5.setFlags(603979776);
        startActivity(localIntent5);
      }
      MMAdViewSDK.Log.v("Uncertain about content, launch to browser");
      Intent localIntent4 = new Intent("android.intent.action.VIEW", localUri);
      localIntent4.setFlags(603979776);
      startActivity(localIntent4);
    }
  }

  private void hideHud()
  {
    if (this.hudStaticText != null)
      this.hudStaticText.setVisibility(4);
    if (this.hudSeconds == null)
      return;
    this.hudSeconds.setVisibility(4);
  }

  private void pauseVideo()
  {
    if (this.mVideoView != null)
    {
      if (this.mVideoView.isPlaying())
      {
        this.mVideoView.pause();
        this.paused = true;
        MMAdViewSDK.Log.v("Video paused");
      }
      this.currentVideoPosition = this.mVideoView.getCurrentPosition();
    }
    if (!(this.isCachedAd))
      return;
    this.handler.removeMessages(1);
    this.handler.removeMessages(2);
    this.handler.removeMessages(3);
    stopServer();
  }

  private void playVideo(int paramInt)
  {
    String str;
    try
    {
      str = getIntent().getData().toString();
      MMAdViewSDK.Log.d("playVideo path: " + str);
      if ((str == null) || (str.length() == 0))
      {
        Toast.makeText(this, "Sorry. There was a problem playing the video", 1).show();
        if (this.videoAd == null)
          return;
        HttpGetRequest.log(this.videoAd.videoError);
        return;
      }
      SharedPreferences.Editor localEditor2 = getSharedPreferences("MillennialMediaSettings", 0).edit();
      localEditor2.putBoolean("lastAdViewed", true);
      localEditor2.commit();
      this.videoCompleted = false;
      if ((!(str.equals(this.current))) || (this.mVideoView == null))
        break label405;
      if (!(this.isCachedAd))
        break label374;
      if (this.videoAd == null)
        return;
      if (!(this.videoAd.storedOnSdCard))
        break label363;
      this.mVideoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener()
      {
        public void onCompletion(MediaPlayer paramMediaPlayer)
        {
          MMAdViewSDK.Log.d("Video Playing Complete");
          if (VideoPlayer.this.showCountdownHud)
            VideoPlayer.this.hideHud();
          if (VideoPlayer.this.videoAd == null)
            return;
          VideoPlayer.this.videoPlayerOnCompletion(VideoPlayer.this.videoAd.onCompletionUrl);
        }
      });
      this.mVideoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener()
      {
        public void onPrepared(MediaPlayer paramMediaPlayer)
        {
          MMAdViewSDK.Log.d("Video Prepared");
        }
      });
      this.mVideoView.setOnErrorListener(new MediaPlayer.OnErrorListener()
      {
        public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
        {
          if (VideoPlayer.this.videoAd != null)
            HttpGetRequest.log(VideoPlayer.this.videoAd.videoError);
          return false;
        }
      });
      this.mVideoView.setVideoURI(Uri.parse(str));
      this.mVideoView.requestFocus();
      this.mVideoView.seekTo(paramInt);
      this.mVideoView.start();
      label405: label363: label374: this.paused = false;
    }
    catch (Exception localException)
    {
      Log.e("MillennialMediaSDK", "error: " + localException.getMessage(), localException);
      SharedPreferences.Editor localEditor1 = getSharedPreferences("MillennialMediaSettings", 0).edit();
      localEditor1.putBoolean("lastAdViewed", true);
      localEditor1.commit();
      Toast.makeText(this, "Sorry. There was a problem playing the video", 1).show();
      if (this.mVideoView != null)
        this.mVideoView.stopPlayback();
      if (this.videoAd == null)
        return;
      HttpGetRequest.log(this.videoAd.videoError);
      return;
      startServer(str, paramInt, false);
      return;
      this.mVideoView.requestFocus();
      this.mVideoView.seekTo(paramInt);
      this.mVideoView.start();
      this.paused = false;
      return;
      this.current = str;
      if (this.mVideoView != null)
        if (this.isCachedAd)
        {
          if (this.videoAd == null)
            return;
          if (!(this.videoAd.storedOnSdCard))
          {
            MMAdViewSDK.Log.d("Cached Ad. Starting Server");
            startServer(str, paramInt, false);
          }
          else
          {
            this.mVideoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener()
            {
              public void onCompletion(MediaPlayer paramMediaPlayer)
              {
                MMAdViewSDK.Log.d("Video Playing Complete");
                if (VideoPlayer.this.showCountdownHud)
                  VideoPlayer.this.hideHud();
                if (VideoPlayer.this.videoAd == null)
                  return;
                VideoPlayer.this.videoPlayerOnCompletion(VideoPlayer.this.videoAd.onCompletionUrl);
              }
            });
            this.mVideoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener()
            {
              public void onPrepared(MediaPlayer paramMediaPlayer)
              {
                MMAdViewSDK.Log.d("Video Prepared");
              }
            });
            this.mVideoView.setOnErrorListener(new MediaPlayer.OnErrorListener()
            {
              public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
              {
                if (VideoPlayer.this.videoAd != null)
                  HttpGetRequest.log(VideoPlayer.this.videoAd.videoError);
                return false;
              }
            });
            this.mVideoView.setVideoURI(Uri.parse(str));
            this.mVideoView.requestFocus();
            this.mVideoView.seekTo(paramInt);
            this.mVideoView.start();
            this.paused = false;
          }
        }
        else
        {
          this.mVideoView.setVideoURI(Uri.parse(str));
          this.mVideoView.requestFocus();
          this.mVideoView.seekTo(paramInt);
          this.mVideoView.start();
          this.paused = false;
        }
      else
        Log.e("MillennialMediaSDK", "Video Player is Null");
    }
  }

  private void resumeVideo()
  {
    if ((this.mVideoView == null) || (this.mVideoView.isPlaying()) || (this.videoCompleted))
      return;
    if ((this.isCachedAd) && (!(this.handler.hasMessages(2))) && (this.videoAd != null))
    {
      this.handler.sendMessageDelayed(Message.obtain(this.handler, 2), 1000L);
      if (this.showCountdownHud)
      {
        long l2 = (this.videoAd.duration - this.currentVideoPosition) / 1000L;
        if (l2 <= 0L)
          break label273;
        if (this.hudSeconds != null)
          this.hudSeconds.setText(String.valueOf(l2));
      }
      while (true)
      {
        for (int i = 0; ; ++i)
        {
          if (i >= this.videoAd.buttons.size())
            break label280;
          VideoImage localVideoImage = (VideoImage)this.videoAd.buttons.get(i);
          long l1 = 0L;
          if ((localVideoImage.appearanceDelay > 0L) && (this.buttonsLayout.indexOfChild(localVideoImage.button) == -1))
          {
            Message localMessage2 = Message.obtain(this.handler, 3, localVideoImage);
            l1 = localVideoImage.appearanceDelay - this.currentVideoPosition;
            if (l1 < 0L)
              l1 = 500L;
            this.handler.sendMessageDelayed(localMessage2, l1);
          }
          if (localVideoImage.inactivityTimeout <= 0L)
            continue;
          Message localMessage1 = Message.obtain(this.handler, 1, localVideoImage);
          this.handler.sendMessageDelayed(localMessage1, l1 + localVideoImage.inactivityTimeout + localVideoImage.fadeDuration);
        }
        label273: hideHud();
      }
    }
    label280: playVideo(this.currentVideoPosition);
  }

  private void setButtonAlpha(ImageButton paramImageButton, float paramFloat)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(paramFloat, paramFloat);
    localAlphaAnimation.setDuration(0L);
    localAlphaAnimation.setFillEnabled(true);
    localAlphaAnimation.setFillBefore(true);
    localAlphaAnimation.setFillAfter(true);
    paramImageButton.startAnimation(localAlphaAnimation);
  }

  private void showHud(boolean paramBoolean)
  {
    if ((this.hudStaticText == null) || (this.hudSeconds == null))
    {
      RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
      RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
      this.hudStaticText = new TextView(this);
      this.hudStaticText.setText(" seconds remaining ...");
      this.hudStaticText.setTextColor(-1);
      this.hudStaticText.setPadding(0, 0, 5, 0);
      this.hudSeconds = new TextView(this);
      if (paramBoolean)
        if (this.videoAd != null)
          this.hudSeconds.setText(String.valueOf(this.videoAd.duration / 1000L));
      while (true)
      {
        this.hudSeconds.setTextColor(-1);
        this.hudSeconds.setId(401);
        this.hudStaticText.setId(402);
        localLayoutParams1.addRule(10);
        localLayoutParams1.addRule(11);
        this.buttonsLayout.addView(this.hudStaticText, localLayoutParams1);
        localLayoutParams2.addRule(10);
        localLayoutParams2.addRule(0, this.hudStaticText.getId());
        this.buttonsLayout.addView(this.hudSeconds, localLayoutParams2);
        label205: return;
        if (this.currentVideoPosition != 0)
          this.hudSeconds.setText(String.valueOf(this.currentVideoPosition / 1000));
        if (this.videoAd == null)
          continue;
        this.hudSeconds.setText(String.valueOf(this.videoAd.duration / 1000L));
      }
    }
    if (paramBoolean)
    {
      if (this.videoAd == null)
        break label316;
      this.hudSeconds.setText(String.valueOf(this.videoAd.duration / 1000L));
    }
    while (true)
    {
      this.hudStaticText.setVisibility(0);
      this.hudSeconds.setVisibility(0);
      break label205:
      label316: this.hudSeconds.setText("");
    }
  }

  private void videoPlayerOnCompletion(String paramString)
  {
    this.videoCompletedOnce = true;
    this.videoCompleted = true;
    if (!(this.mVideoView.isInErrorState()))
      logEndEvent(this.logSet);
    stopServer();
    MMAdViewSDK.Log.v("Video player on complete");
    if (paramString != null)
      dispatchButtonClick(paramString, null);
    if (this.videoAd != null)
    {
      if (this.videoAd.stayInPlayer)
        break label70;
      dismiss();
    }
    while (true)
    {
      return;
      if (this.videoAd.buttons != null)
        for (int i = 0; i < this.videoAd.buttons.size(); ++i)
        {
          label70: VideoImage localVideoImage = (VideoImage)this.videoAd.buttons.get(i);
          setButtonAlpha(localVideoImage.button, localVideoImage.fromAlpha);
          if (localVideoImage.button.getParent() == null)
            this.buttonsLayout.addView(localVideoImage.button, localVideoImage.layoutParams);
          for (int j = 0; j < this.videoAd.buttons.size(); ++j)
            this.buttonsLayout.bringChildToFront(((VideoImage)this.videoAd.buttons.get(j)).button);
          MMAdViewSDK.Log.v("Button: " + i + " alpha: " + localVideoImage.fromAlpha);
        }
      this.handler.removeMessages(1);
      this.handler.removeMessages(2);
      this.handler.removeMessages(3);
    }
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.videoAd != null)
    {
      if (this.handler != null)
        this.handler.removeMessages(1);
      int i = 0;
      if (i < this.videoAd.buttons.size())
      {
        label24: VideoImage localVideoImage = (VideoImage)this.videoAd.buttons.get(i);
        setButtonAlpha(localVideoImage.button, localVideoImage.fromAlpha);
        if (localVideoImage.inactivityTimeout > 0L)
        {
          Message localMessage = Message.obtain(this.handler, 1, localVideoImage);
          this.handler.sendMessageDelayed(localMessage, localVideoImage.inactivityTimeout);
        }
        while (true)
        {
          ++i;
          break label24:
          if (paramMotionEvent.getAction() == 1)
          {
            if (!(canFadeButtons()))
              continue;
            AlphaAnimation localAlphaAnimation = new AlphaAnimation(localVideoImage.fromAlpha, localVideoImage.toAlpha);
            localAlphaAnimation.setDuration(localVideoImage.fadeDuration);
            localAlphaAnimation.setFillEnabled(true);
            localAlphaAnimation.setFillBefore(true);
            localAlphaAnimation.setFillAfter(true);
            localVideoImage.button.startAnimation(localAlphaAnimation);
          }
          if (paramMotionEvent.getAction() != 0)
            continue;
          setButtonAlpha(localVideoImage.button, localVideoImage.fromAlpha);
        }
      }
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }

  public boolean handleMessage(Message paramMessage)
  {
    label32: VideoImage localVideoImage1;
    switch (paramMessage.what)
    {
    default:
    case 1:
      while (true)
      {
        return true;
        if (!(canFadeButtons()))
          continue;
        VideoImage localVideoImage2 = (VideoImage)paramMessage.obj;
        AlphaAnimation localAlphaAnimation2 = new AlphaAnimation(localVideoImage2.fromAlpha, localVideoImage2.toAlpha);
        localAlphaAnimation2.setDuration(localVideoImage2.fadeDuration);
        localAlphaAnimation2.setFillEnabled(true);
        localAlphaAnimation2.setFillBefore(true);
        localAlphaAnimation2.setFillAfter(true);
        localVideoImage2.button.startAnimation(localAlphaAnimation2);
      }
    case 3:
      localVideoImage1 = (VideoImage)paramMessage.obj;
    case 2:
    }
    while (true)
    {
      label152: int i;
      try
      {
        if (this.buttonsLayout.indexOfChild(localVideoImage1.button) == -1)
          this.buttonsLayout.addView(localVideoImage1.button, localVideoImage1.layoutParams);
        AlphaAnimation localAlphaAnimation1 = new AlphaAnimation(localVideoImage1.toAlpha, localVideoImage1.fromAlpha);
        localAlphaAnimation1.setDuration(localVideoImage1.fadeDuration);
        localAlphaAnimation1.setAnimationListener(new DelayedAnimationListener(localVideoImage1.button, localVideoImage1.layoutParams));
        localAlphaAnimation1.setFillEnabled(true);
        localAlphaAnimation1.setFillBefore(true);
        localAlphaAnimation1.setFillAfter(true);
        MMAdViewSDK.Log.v("Beginning animation to visibility. Fade duration: " + localVideoImage1.fadeDuration + " Button: " + localVideoImage1.name + " Time: " + System.currentTimeMillis());
        label444: localVideoImage1.button.startAnimation(localAlphaAnimation1);
      }
      catch (IllegalStateException localIllegalStateException2)
      {
        localIllegalStateException2.printStackTrace();
        break label152:
        VideoLogEvent localVideoLogEvent;
        int k;
        try
        {
          if (!(this.mVideoView.isPlaying()))
            break label530;
          i = this.mVideoView.getCurrentPosition();
          if (i <= this.lastVideoPosition)
            break label480;
          if (this.videoAd == null)
            break label474;
          if (this.lastVideoPosition != 0)
            break label559;
          logBeginEvent(this.logSet);
          break label559:
          if (j >= this.videoAd.activities.size())
            break label474;
          localVideoLogEvent = (VideoLogEvent)this.videoAd.activities.get(j);
          if ((localVideoLogEvent == null) || (localVideoLogEvent.position < this.lastVideoPosition) || (localVideoLogEvent.position >= i))
            break label468;
          k = 0;
          int i1 = localVideoLogEvent.activities.length;
          if (k >= i1)
            break label468;
        }
        catch (IllegalStateException localIllegalStateException1)
        {
          try
          {
            logEvent(localVideoLogEvent.activities[k]);
            ++k;
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            localUnsupportedEncodingException.printStackTrace();
            break label444:
            localIllegalStateException1 = localIllegalStateException1;
            localIllegalStateException1.printStackTrace();
          }
        }
      }
      break label32:
      label468: ++j;
      continue;
      label474: this.lastVideoPosition = i;
      if (this.showCountdownHud)
      {
        label480: long l = (this.videoAd.duration - i) / 1000L;
        if (l <= 0L)
          break label552;
        if (this.hudSeconds != null)
          this.hudSeconds.setText(String.valueOf(l));
      }
      while (true)
      {
        label530: this.handler.sendMessageDelayed(Message.obtain(this.handler, 2), 1000L);
        break label32:
        label552: hideHud();
      }
      label559: int j = 0;
    }
  }

  protected void logBeginEvent(EventLogSet paramEventLogSet)
  {
    if ((paramEventLogSet == null) || (paramEventLogSet.startActivity == null))
      return;
    try
    {
      MMAdViewSDK.Log.d("Cached video begin event logged");
      int i = 0;
      if (i >= paramEventLogSet.startActivity.length)
        return;
      logEvent(paramEventLogSet.startActivity[i]);
      ++i;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
  }

  protected void logButtonEvent(VideoImage paramVideoImage)
  {
    MMAdViewSDK.Log.d("Cached video button event logged");
    int i = 0;
    while (true)
      try
      {
        if (i >= paramVideoImage.activity.length)
          return;
        logEvent(paramVideoImage.activity[i]);
        ++i;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
  }

  protected void logEndEvent(EventLogSet paramEventLogSet)
  {
    MMAdViewSDK.Log.d("Cached video end event logged");
    int i = 0;
    while (true)
      try
      {
        if (i >= paramEventLogSet.endActivity.length)
          return;
        logEvent(paramEventLogSet.endActivity[i]);
        ++i;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localUnsupportedEncodingException.printStackTrace();
      }
  }

  protected void logEvent(String paramString)
    throws UnsupportedEncodingException
  {
    MMAdViewSDK.Log.d("Logging event to: " + paramString);
    new Thread(new Runnable(paramString)
    {
      public void run()
      {
        HttpGetRequest localHttpGetRequest = new HttpGetRequest();
        try
        {
          localHttpGetRequest.get(this.val$logString);
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }).start();
  }

  // ERROR //
  public void onCreate(Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 750
    //   4: invokevirtual 753	com/millennialmedia/android/VideoPlayer:setTheme	(I)V
    //   7: aload_0
    //   8: aload_1
    //   9: invokespecial 755	android/app/Activity:onCreate	(Landroid/os/Bundle;)V
    //   12: ldc_w 757
    //   15: invokestatic 131	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   18: aload_1
    //   19: ifnull +1155 -> 1174
    //   22: aload_0
    //   23: aload_1
    //   24: ldc_w 758
    //   27: invokevirtual 763	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   30: putfield 175	com/millennialmedia/android/VideoPlayer:isCachedAd	Z
    //   33: aload_0
    //   34: aload_1
    //   35: ldc_w 764
    //   38: invokevirtual 763	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   41: putfield 124	com/millennialmedia/android/VideoPlayer:videoCompleted	Z
    //   44: aload_0
    //   45: aload_1
    //   46: ldc_w 765
    //   49: invokevirtual 763	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   52: putfield 608	com/millennialmedia/android/VideoPlayer:videoCompletedOnce	Z
    //   55: aload_0
    //   56: aload_1
    //   57: ldc_w 767
    //   60: invokevirtual 771	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   63: putfield 58	com/millennialmedia/android/VideoPlayer:currentVideoPosition	I
    //   66: aload_0
    //   67: aload_1
    //   68: ldc_w 772
    //   71: invokevirtual 771	android/os/Bundle:getInt	(Ljava/lang/String;)I
    //   74: putfield 190	com/millennialmedia/android/VideoPlayer:lastVideoPosition	I
    //   77: new 774	com/millennialmedia/android/VideoPlayer$ScreenReceiver
    //   80: dup
    //   81: aload_0
    //   82: aconst_null
    //   83: invokespecial 777	com/millennialmedia/android/VideoPlayer$ScreenReceiver:<init>	(Lcom/millennialmedia/android/VideoPlayer;Lcom/millennialmedia/android/VideoPlayer$1;)V
    //   86: astore_2
    //   87: aload_0
    //   88: aload_2
    //   89: putfield 779	com/millennialmedia/android/VideoPlayer:receiver	Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;
    //   92: new 781	android/content/IntentFilter
    //   95: dup
    //   96: invokespecial 782	android/content/IntentFilter:<init>	()V
    //   99: astore_3
    //   100: aload_3
    //   101: ldc_w 784
    //   104: invokevirtual 787	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   107: aload_3
    //   108: ldc_w 789
    //   111: invokevirtual 787	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   114: aload_3
    //   115: ldc_w 791
    //   118: invokevirtual 787	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   121: aload_0
    //   122: aload_0
    //   123: getfield 779	com/millennialmedia/android/VideoPlayer:receiver	Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;
    //   126: aload_3
    //   127: invokevirtual 795	com/millennialmedia/android/VideoPlayer:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   130: pop
    //   131: new 217	android/widget/RelativeLayout
    //   134: dup
    //   135: aload_0
    //   136: invokespecial 796	android/widget/RelativeLayout:<init>	(Landroid/content/Context;)V
    //   139: astore 5
    //   141: aload_0
    //   142: aload 5
    //   144: putfield 798	com/millennialmedia/android/VideoPlayer:relLayout	Landroid/widget/RelativeLayout;
    //   147: aload_0
    //   148: getfield 798	com/millennialmedia/android/VideoPlayer:relLayout	Landroid/widget/RelativeLayout;
    //   151: sipush 400
    //   154: invokevirtual 799	android/widget/RelativeLayout:setId	(I)V
    //   157: aload_0
    //   158: getfield 798	com/millennialmedia/android/VideoPlayer:relLayout	Landroid/widget/RelativeLayout;
    //   161: new 801	android/view/ViewGroup$LayoutParams
    //   164: dup
    //   165: iconst_m1
    //   166: iconst_m1
    //   167: invokespecial 802	android/view/ViewGroup$LayoutParams:<init>	(II)V
    //   170: invokevirtual 806	android/widget/RelativeLayout:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   173: aload_0
    //   174: getfield 798	com/millennialmedia/android/VideoPlayer:relLayout	Landroid/widget/RelativeLayout;
    //   177: ldc_w 807
    //   180: invokevirtual 810	android/widget/RelativeLayout:setBackgroundColor	(I)V
    //   183: aload_0
    //   184: getfield 798	com/millennialmedia/android/VideoPlayer:relLayout	Landroid/widget/RelativeLayout;
    //   187: ldc_w 807
    //   190: invokevirtual 813	android/widget/RelativeLayout:setDrawingCacheBackgroundColor	(I)V
    //   193: new 217	android/widget/RelativeLayout
    //   196: dup
    //   197: aload_0
    //   198: invokespecial 796	android/widget/RelativeLayout:<init>	(Landroid/content/Context;)V
    //   201: astore 6
    //   203: aload 6
    //   205: ldc_w 807
    //   208: invokevirtual 810	android/widget/RelativeLayout:setBackgroundColor	(I)V
    //   211: aload 6
    //   213: sipush 410
    //   216: invokevirtual 799	android/widget/RelativeLayout:setId	(I)V
    //   219: new 574	android/widget/RelativeLayout$LayoutParams
    //   222: dup
    //   223: iconst_m1
    //   224: iconst_m1
    //   225: invokespecial 577	android/widget/RelativeLayout$LayoutParams:<init>	(II)V
    //   228: astore 7
    //   230: aload 7
    //   232: bipush 13
    //   234: invokevirtual 595	android/widget/RelativeLayout$LayoutParams:addRule	(I)V
    //   237: aload 6
    //   239: aload 7
    //   241: invokevirtual 806	android/widget/RelativeLayout:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   244: aload 6
    //   246: ldc_w 807
    //   249: invokevirtual 813	android/widget/RelativeLayout:setDrawingCacheBackgroundColor	(I)V
    //   252: new 574	android/widget/RelativeLayout$LayoutParams
    //   255: dup
    //   256: iconst_m1
    //   257: iconst_m1
    //   258: invokespecial 577	android/widget/RelativeLayout$LayoutParams:<init>	(II)V
    //   261: astore 8
    //   263: aload 8
    //   265: bipush 13
    //   267: invokevirtual 595	android/widget/RelativeLayout$LayoutParams:addRule	(I)V
    //   270: new 133	com/millennialmedia/android/MillennialMediaView
    //   273: dup
    //   274: aload_0
    //   275: invokespecial 814	com/millennialmedia/android/MillennialMediaView:<init>	(Landroid/content/Context;)V
    //   278: astore 9
    //   280: aload_0
    //   281: aload 9
    //   283: putfield 89	com/millennialmedia/android/VideoPlayer:mVideoView	Lcom/millennialmedia/android/MillennialMediaView;
    //   286: aload_0
    //   287: getfield 89	com/millennialmedia/android/VideoPlayer:mVideoView	Lcom/millennialmedia/android/MillennialMediaView;
    //   290: sipush 411
    //   293: invokevirtual 815	com/millennialmedia/android/MillennialMediaView:setId	(I)V
    //   296: aload_0
    //   297: getfield 89	com/millennialmedia/android/VideoPlayer:mVideoView	Lcom/millennialmedia/android/MillennialMediaView;
    //   300: invokevirtual 819	com/millennialmedia/android/MillennialMediaView:getHolder	()Landroid/view/SurfaceHolder;
    //   303: bipush 254
    //   305: invokeinterface 824 2 0
    //   310: aload 6
    //   312: aload_0
    //   313: getfield 89	com/millennialmedia/android/VideoPlayer:mVideoView	Lcom/millennialmedia/android/MillennialMediaView;
    //   316: aload 8
    //   318: invokevirtual 599	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   321: aload_0
    //   322: getfield 89	com/millennialmedia/android/VideoPlayer:mVideoView	Lcom/millennialmedia/android/MillennialMediaView;
    //   325: ldc_w 807
    //   328: invokevirtual 825	com/millennialmedia/android/MillennialMediaView:setDrawingCacheBackgroundColor	(I)V
    //   331: aload_0
    //   332: getfield 798	com/millennialmedia/android/VideoPlayer:relLayout	Landroid/widget/RelativeLayout;
    //   335: aload 6
    //   337: aload 7
    //   339: invokevirtual 599	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   342: new 574	android/widget/RelativeLayout$LayoutParams
    //   345: dup
    //   346: iconst_m1
    //   347: iconst_m1
    //   348: invokespecial 577	android/widget/RelativeLayout$LayoutParams:<init>	(II)V
    //   351: astore 10
    //   353: new 145	java/lang/StringBuilder
    //   356: dup
    //   357: invokespecial 146	java/lang/StringBuilder:<init>	()V
    //   360: ldc_w 827
    //   363: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: aload_0
    //   367: getfield 175	com/millennialmedia/android/VideoPlayer:isCachedAd	Z
    //   370: invokevirtual 830	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   373: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   376: invokestatic 255	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   379: aload_0
    //   380: getfield 175	com/millennialmedia/android/VideoPlayer:isCachedAd	Z
    //   383: ifeq +948 -> 1331
    //   386: new 185	android/os/Handler
    //   389: dup
    //   390: aload_0
    //   391: invokespecial 833	android/os/Handler:<init>	(Landroid/os/Handler$Callback;)V
    //   394: astore 11
    //   396: aload_0
    //   397: aload 11
    //   399: putfield 183	com/millennialmedia/android/VideoPlayer:handler	Landroid/os/Handler;
    //   402: aload_0
    //   403: iconst_0
    //   404: invokevirtual 836	com/millennialmedia/android/VideoPlayer:setRequestedOrientation	(I)V
    //   407: aload_1
    //   408: ifnonnull +834 -> 1242
    //   411: aload_0
    //   412: invokevirtual 405	com/millennialmedia/android/VideoPlayer:getIntent	()Landroid/content/Intent;
    //   415: ldc_w 838
    //   418: invokevirtual 842	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   421: astore 39
    //   423: aconst_null
    //   424: astore 40
    //   426: new 844	com/millennialmedia/android/AdDatabaseHelper
    //   429: dup
    //   430: aload_0
    //   431: invokespecial 845	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   434: astore 41
    //   436: aload_0
    //   437: aload 41
    //   439: aload 39
    //   441: invokevirtual 849	com/millennialmedia/android/AdDatabaseHelper:getVideoAd	(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;
    //   444: putfield 70	com/millennialmedia/android/VideoPlayer:videoAd	Lcom/millennialmedia/android/VideoAd;
    //   447: aload 41
    //   449: ifnull +1265 -> 1714
    //   452: aload 41
    //   454: invokevirtual 852	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   457: aload_0
    //   458: new 717	com/millennialmedia/android/EventLogSet
    //   461: dup
    //   462: aload_0
    //   463: getfield 70	com/millennialmedia/android/VideoPlayer:videoAd	Lcom/millennialmedia/android/VideoAd;
    //   466: invokespecial 855	com/millennialmedia/android/EventLogSet:<init>	(Lcom/millennialmedia/android/VideoAd;)V
    //   469: putfield 613	com/millennialmedia/android/VideoPlayer:logSet	Lcom/millennialmedia/android/EventLogSet;
    //   472: aload_0
    //   473: getfield 70	com/millennialmedia/android/VideoPlayer:videoAd	Lcom/millennialmedia/android/VideoAd;
    //   476: ifnull +25 -> 501
    //   479: aload_0
    //   480: aload_0
    //   481: getfield 70	com/millennialmedia/android/VideoPlayer:videoAd	Lcom/millennialmedia/android/VideoAd;
    //   484: getfield 858	com/millennialmedia/android/VideoAd:showControls	Z
    //   487: putfield 56	com/millennialmedia/android/VideoPlayer:showBottomBar	Z
    //   490: aload_0
    //   491: aload_0
    //   492: getfield 70	com/millennialmedia/android/VideoPlayer:videoAd	Lcom/millennialmedia/android/VideoAd;
    //   495: getfield 861	com/millennialmedia/android/VideoAd:showCountdown	Z
    //   498: putfield 60	com/millennialmedia/android/VideoPlayer:showCountdownHud	Z
    //   501: new 217	android/widget/RelativeLayout
    //   504: dup
    //   505: aload_0
    //   506: invokespecial 796	android/widget/RelativeLayout:<init>	(Landroid/content/Context;)V
    //   509: astore 12
    //   511: aload_0
    //   512: aload 12
    //   514: putfield 181	com/millennialmedia/android/VideoPlayer:buttonsLayout	Landroid/widget/RelativeLayout;
    //   517: aload_0
    //   518: getfield 181	com/millennialmedia/android/VideoPlayer:buttonsLayout	Landroid/widget/RelativeLayout;
    //   521: sipush 420
    //   524: invokevirtual 799	android/widget/RelativeLayout:setId	(I)V
    //   527: aload_0
    //   528: getfield 60	com/millennialmedia/android/VideoPlayer:showCountdownHud	Z
    //   531: ifeq +8 -> 539
    //   534: aload_0
    //   535: iconst_0
    //   536: invokespecial 241	com/millennialmedia/android/VideoPlayer:showHud	(Z)V
    //   539: aload_0
    //   540: getfield 70	com/millennialmedia/android/VideoPlayer:videoAd	Lcom/millennialmedia/android/VideoAd;
    //   543: astore 13
    //   545: aconst_null
    //   546: astore 14
    //   548: aload 13
    //   550: ifnull +12 -> 562
    //   553: aload_0
    //   554: getfield 70	com/millennialmedia/android/VideoPlayer:videoAd	Lcom/millennialmedia/android/VideoAd;
    //   557: getfield 179	com/millennialmedia/android/VideoAd:buttons	Ljava/util/ArrayList;
    //   560: astore 14
    //   562: aload 14
    //   564: ifnull +767 -> 1331
    //   567: iconst_0
    //   568: istore 29
    //   570: iload 29
    //   572: aload 14
    //   574: invokeinterface 196 1 0
    //   579: if_icmpge +739 -> 1318
    //   582: aload_0
    //   583: getfield 70	com/millennialmedia/android/VideoPlayer:videoAd	Lcom/millennialmedia/android/VideoAd;
    //   586: getfield 466	com/millennialmedia/android/VideoAd:storedOnSdCard	Z
    //   589: ifeq +706 -> 1295
    //   592: new 863	java/io/File
    //   595: dup
    //   596: new 145	java/lang/StringBuilder
    //   599: dup
    //   600: invokespecial 146	java/lang/StringBuilder:<init>	()V
    //   603: invokestatic 869	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   606: invokevirtual 872	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   609: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   612: ldc_w 874
    //   615: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   618: ldc_w 876
    //   621: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   624: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   627: invokespecial 878	java/io/File:<init>	(Ljava/lang/String;)V
    //   630: astore 30
    //   632: new 568	android/widget/ImageButton
    //   635: dup
    //   636: aload_0
    //   637: invokespecial 879	android/widget/ImageButton:<init>	(Landroid/content/Context;)V
    //   640: astore 31
    //   642: aload 14
    //   644: iload 29
    //   646: invokeinterface 205 2 0
    //   651: checkcast 207	com/millennialmedia/android/VideoImage
    //   654: aload 31
    //   656: putfield 215	com/millennialmedia/android/VideoImage:button	Landroid/widget/ImageButton;
    //   659: aload 31
    //   661: new 145	java/lang/StringBuilder
    //   664: dup
    //   665: invokespecial 146	java/lang/StringBuilder:<init>	()V
    //   668: aload 30
    //   670: invokevirtual 882	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   673: ldc_w 874
    //   676: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   679: aload_0
    //   680: getfield 70	com/millennialmedia/android/VideoPlayer:videoAd	Lcom/millennialmedia/android/VideoAd;
    //   683: getfield 885	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
    //   686: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   689: ldc_w 874
    //   692: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   695: aload 14
    //   697: iload 29
    //   699: invokeinterface 205 2 0
    //   704: checkcast 207	com/millennialmedia/android/VideoImage
    //   707: getfield 888	com/millennialmedia/android/VideoImage:imageUrl	Ljava/lang/String;
    //   710: invokestatic 285	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   713: invokevirtual 891	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
    //   716: ldc_w 893
    //   719: ldc_w 895
    //   722: invokevirtual 899	java/lang/String:replaceFirst	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   725: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   728: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   731: invokestatic 285	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   734: invokevirtual 902	android/widget/ImageButton:setImageURI	(Landroid/net/Uri;)V
    //   737: aload 31
    //   739: iconst_0
    //   740: iconst_0
    //   741: iconst_0
    //   742: iconst_0
    //   743: invokevirtual 903	android/widget/ImageButton:setPadding	(IIII)V
    //   746: aload 31
    //   748: iconst_0
    //   749: invokevirtual 904	android/widget/ImageButton:setBackgroundColor	(I)V
    //   752: aload_0
    //   753: aload 31
    //   755: aload 14
    //   757: iload 29
    //   759: invokeinterface 205 2 0
    //   764: checkcast 207	com/millennialmedia/android/VideoImage
    //   767: getfield 623	com/millennialmedia/android/VideoImage:fromAlpha	F
    //   770: invokespecial 625	com/millennialmedia/android/VideoPlayer:setButtonAlpha	(Landroid/widget/ImageButton;F)V
    //   773: aload 31
    //   775: iload 29
    //   777: iconst_1
    //   778: iadd
    //   779: invokevirtual 905	android/widget/ImageButton:setId	(I)V
    //   782: new 574	android/widget/RelativeLayout$LayoutParams
    //   785: dup
    //   786: bipush 254
    //   788: bipush 254
    //   790: invokespecial 577	android/widget/RelativeLayout$LayoutParams:<init>	(II)V
    //   793: astore 32
    //   795: new 145	java/lang/StringBuilder
    //   798: dup
    //   799: invokespecial 146	java/lang/StringBuilder:<init>	()V
    //   802: ldc_w 907
    //   805: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   808: iconst_m1
    //   809: aload 31
    //   811: invokevirtual 908	android/widget/ImageButton:getId	()I
    //   814: iadd
    //   815: invokevirtual 201	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   818: ldc_w 910
    //   821: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   824: aload 31
    //   826: invokevirtual 908	android/widget/ImageButton:getId	()I
    //   829: invokevirtual 201	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   832: ldc_w 912
    //   835: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   838: aload 14
    //   840: iload 29
    //   842: invokeinterface 205 2 0
    //   847: checkcast 207	com/millennialmedia/android/VideoImage
    //   850: getfield 915	com/millennialmedia/android/VideoImage:anchor	I
    //   853: invokevirtual 201	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   856: ldc_w 917
    //   859: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   862: aload 14
    //   864: iload 29
    //   866: invokeinterface 205 2 0
    //   871: checkcast 207	com/millennialmedia/android/VideoImage
    //   874: getfield 919	com/millennialmedia/android/VideoImage:position	I
    //   877: invokevirtual 201	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   880: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   883: invokestatic 255	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   886: aload 32
    //   888: aload 14
    //   890: iload 29
    //   892: invokeinterface 205 2 0
    //   897: checkcast 207	com/millennialmedia/android/VideoImage
    //   900: getfield 919	com/millennialmedia/android/VideoImage:position	I
    //   903: aload 14
    //   905: iload 29
    //   907: invokeinterface 205 2 0
    //   912: checkcast 207	com/millennialmedia/android/VideoImage
    //   915: getfield 915	com/millennialmedia/android/VideoImage:anchor	I
    //   918: invokevirtual 604	android/widget/RelativeLayout$LayoutParams:addRule	(II)V
    //   921: aload 32
    //   923: aload 14
    //   925: iload 29
    //   927: invokeinterface 205 2 0
    //   932: checkcast 207	com/millennialmedia/android/VideoImage
    //   935: getfield 922	com/millennialmedia/android/VideoImage:position2	I
    //   938: aload 14
    //   940: iload 29
    //   942: invokeinterface 205 2 0
    //   947: checkcast 207	com/millennialmedia/android/VideoImage
    //   950: getfield 925	com/millennialmedia/android/VideoImage:anchor2	I
    //   953: invokevirtual 604	android/widget/RelativeLayout$LayoutParams:addRule	(II)V
    //   956: aload 32
    //   958: aload 14
    //   960: iload 29
    //   962: invokeinterface 205 2 0
    //   967: checkcast 207	com/millennialmedia/android/VideoImage
    //   970: getfield 928	com/millennialmedia/android/VideoImage:paddingLeft	I
    //   973: aload 14
    //   975: iload 29
    //   977: invokeinterface 205 2 0
    //   982: checkcast 207	com/millennialmedia/android/VideoImage
    //   985: getfield 931	com/millennialmedia/android/VideoImage:paddingTop	I
    //   988: aload 14
    //   990: iload 29
    //   992: invokeinterface 205 2 0
    //   997: checkcast 207	com/millennialmedia/android/VideoImage
    //   1000: getfield 934	com/millennialmedia/android/VideoImage:paddingRight	I
    //   1003: aload 14
    //   1005: iload 29
    //   1007: invokeinterface 205 2 0
    //   1012: checkcast 207	com/millennialmedia/android/VideoImage
    //   1015: getfield 937	com/millennialmedia/android/VideoImage:paddingBottom	I
    //   1018: invokevirtual 940	android/widget/RelativeLayout$LayoutParams:setMargins	(IIII)V
    //   1021: aload 14
    //   1023: iload 29
    //   1025: invokeinterface 205 2 0
    //   1030: checkcast 207	com/millennialmedia/android/VideoImage
    //   1033: astore 33
    //   1035: aload 33
    //   1037: getfield 943	com/millennialmedia/android/VideoImage:linkUrl	Ljava/lang/String;
    //   1040: invokestatic 949	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1043: ifne +22 -> 1065
    //   1046: new 951	com/millennialmedia/android/VideoPlayer$1
    //   1049: dup
    //   1050: aload_0
    //   1051: aload 33
    //   1053: invokespecial 954	com/millennialmedia/android/VideoPlayer$1:<init>	(Lcom/millennialmedia/android/VideoPlayer;Lcom/millennialmedia/android/VideoImage;)V
    //   1056: astore 34
    //   1058: aload 31
    //   1060: aload 34
    //   1062: invokevirtual 958	android/widget/ImageButton:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1065: aload 33
    //   1067: getfield 211	com/millennialmedia/android/VideoImage:appearanceDelay	J
    //   1070: lconst_0
    //   1071: lcmp
    //   1072: ifle +232 -> 1304
    //   1075: aload 14
    //   1077: iload 29
    //   1079: invokeinterface 205 2 0
    //   1084: checkcast 207	com/millennialmedia/android/VideoImage
    //   1087: aload 32
    //   1089: putfield 633	com/millennialmedia/android/VideoImage:layoutParams	Landroid/widget/RelativeLayout$LayoutParams;
    //   1092: aload_0
    //   1093: getfield 183	com/millennialmedia/android/VideoPlayer:handler	Landroid/os/Handler;
    //   1096: iconst_3
    //   1097: aload 33
    //   1099: invokestatic 227	android/os/Message:obtain	(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    //   1102: astore 37
    //   1104: aload_0
    //   1105: getfield 183	com/millennialmedia/android/VideoPlayer:handler	Landroid/os/Handler;
    //   1108: aload 37
    //   1110: aload 33
    //   1112: getfield 211	com/millennialmedia/android/VideoImage:appearanceDelay	J
    //   1115: invokevirtual 231	android/os/Handler:sendMessageDelayed	(Landroid/os/Message;J)Z
    //   1118: pop
    //   1119: aload 33
    //   1121: getfield 234	com/millennialmedia/android/VideoImage:inactivityTimeout	J
    //   1124: lconst_0
    //   1125: lcmp
    //   1126: ifle +42 -> 1168
    //   1129: aload_0
    //   1130: getfield 183	com/millennialmedia/android/VideoPlayer:handler	Landroid/os/Handler;
    //   1133: iconst_1
    //   1134: aload 33
    //   1136: invokestatic 227	android/os/Message:obtain	(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    //   1139: astore 35
    //   1141: aload_0
    //   1142: getfield 183	com/millennialmedia/android/VideoPlayer:handler	Landroid/os/Handler;
    //   1145: aload 35
    //   1147: aload 33
    //   1149: getfield 234	com/millennialmedia/android/VideoImage:inactivityTimeout	J
    //   1152: aload 33
    //   1154: getfield 211	com/millennialmedia/android/VideoImage:appearanceDelay	J
    //   1157: ladd
    //   1158: aload 33
    //   1160: getfield 237	com/millennialmedia/android/VideoImage:fadeDuration	J
    //   1163: ladd
    //   1164: invokevirtual 231	android/os/Handler:sendMessageDelayed	(Landroid/os/Message;J)Z
    //   1167: pop
    //   1168: iinc 29 1
    //   1171: goto -601 -> 570
    //   1174: aload_0
    //   1175: aload_0
    //   1176: invokevirtual 405	com/millennialmedia/android/VideoPlayer:getIntent	()Landroid/content/Intent;
    //   1179: ldc_w 960
    //   1182: iconst_0
    //   1183: invokevirtual 964	android/content/Intent:getBooleanExtra	(Ljava/lang/String;Z)Z
    //   1186: putfield 175	com/millennialmedia/android/VideoPlayer:isCachedAd	Z
    //   1189: aload_0
    //   1190: iconst_0
    //   1191: putfield 58	com/millennialmedia/android/VideoPlayer:currentVideoPosition	I
    //   1194: aload_0
    //   1195: iconst_0
    //   1196: putfield 608	com/millennialmedia/android/VideoPlayer:videoCompletedOnce	Z
    //   1199: aload_0
    //   1200: iconst_0
    //   1201: putfield 124	com/millennialmedia/android/VideoPlayer:videoCompleted	Z
    //   1204: goto -1127 -> 77
    //   1207: astore 42
    //   1209: aload 42
    //   1211: invokevirtual 965	android/database/sqlite/SQLiteException:printStackTrace	()V
    //   1214: aload 40
    //   1216: ifnull -759 -> 457
    //   1219: aload 40
    //   1221: invokevirtual 852	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   1224: goto -767 -> 457
    //   1227: astore 43
    //   1229: aload 40
    //   1231: ifnull +8 -> 1239
    //   1234: aload 40
    //   1236: invokevirtual 852	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   1239: aload 43
    //   1241: athrow
    //   1242: aload_0
    //   1243: aload_1
    //   1244: ldc_w 966
    //   1247: invokevirtual 970	android/os/Bundle:getParcelable	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   1250: checkcast 119	com/millennialmedia/android/VideoAd
    //   1253: putfield 70	com/millennialmedia/android/VideoPlayer:videoAd	Lcom/millennialmedia/android/VideoAd;
    //   1256: aload_0
    //   1257: aload_1
    //   1258: ldc_w 971
    //   1261: invokevirtual 970	android/os/Bundle:getParcelable	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   1264: checkcast 717	com/millennialmedia/android/EventLogSet
    //   1267: putfield 613	com/millennialmedia/android/VideoPlayer:logSet	Lcom/millennialmedia/android/EventLogSet;
    //   1270: aload_0
    //   1271: aload_1
    //   1272: ldc_w 973
    //   1275: invokevirtual 763	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   1278: putfield 56	com/millennialmedia/android/VideoPlayer:showBottomBar	Z
    //   1281: aload_0
    //   1282: aload_0
    //   1283: getfield 70	com/millennialmedia/android/VideoPlayer:videoAd	Lcom/millennialmedia/android/VideoAd;
    //   1286: getfield 861	com/millennialmedia/android/VideoAd:showCountdown	Z
    //   1289: putfield 60	com/millennialmedia/android/VideoPlayer:showCountdownHud	Z
    //   1292: goto -791 -> 501
    //   1295: aload_0
    //   1296: invokevirtual 976	com/millennialmedia/android/VideoPlayer:getCacheDir	()Ljava/io/File;
    //   1299: astore 30
    //   1301: goto -669 -> 632
    //   1304: aload_0
    //   1305: getfield 181	com/millennialmedia/android/VideoPlayer:buttonsLayout	Landroid/widget/RelativeLayout;
    //   1308: aload 31
    //   1310: aload 32
    //   1312: invokevirtual 599	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1315: goto -196 -> 1119
    //   1318: aload_0
    //   1319: getfield 798	com/millennialmedia/android/VideoPlayer:relLayout	Landroid/widget/RelativeLayout;
    //   1322: aload_0
    //   1323: getfield 181	com/millennialmedia/android/VideoPlayer:buttonsLayout	Landroid/widget/RelativeLayout;
    //   1326: aload 10
    //   1328: invokevirtual 599	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1331: aload_0
    //   1332: getfield 56	com/millennialmedia/android/VideoPlayer:showBottomBar	Z
    //   1335: ifeq +320 -> 1655
    //   1338: new 217	android/widget/RelativeLayout
    //   1341: dup
    //   1342: aload_0
    //   1343: invokespecial 796	android/widget/RelativeLayout:<init>	(Landroid/content/Context;)V
    //   1346: astore 15
    //   1348: aload_0
    //   1349: aload 15
    //   1351: putfield 978	com/millennialmedia/android/VideoPlayer:controlsLayout	Landroid/widget/RelativeLayout;
    //   1354: aload_0
    //   1355: getfield 978	com/millennialmedia/android/VideoPlayer:controlsLayout	Landroid/widget/RelativeLayout;
    //   1358: ldc_w 807
    //   1361: invokevirtual 810	android/widget/RelativeLayout:setBackgroundColor	(I)V
    //   1364: new 574	android/widget/RelativeLayout$LayoutParams
    //   1367: dup
    //   1368: iconst_m1
    //   1369: bipush 254
    //   1371: invokespecial 577	android/widget/RelativeLayout$LayoutParams:<init>	(II)V
    //   1374: astore 16
    //   1376: aload_0
    //   1377: getfield 978	com/millennialmedia/android/VideoPlayer:controlsLayout	Landroid/widget/RelativeLayout;
    //   1380: aload 16
    //   1382: invokevirtual 806	android/widget/RelativeLayout:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   1385: aload 16
    //   1387: bipush 12
    //   1389: invokevirtual 595	android/widget/RelativeLayout$LayoutParams:addRule	(I)V
    //   1392: new 980	android/widget/Button
    //   1395: dup
    //   1396: aload_0
    //   1397: invokespecial 981	android/widget/Button:<init>	(Landroid/content/Context;)V
    //   1400: astore 17
    //   1402: aload_0
    //   1403: aload 17
    //   1405: putfield 983	com/millennialmedia/android/VideoPlayer:mRewind	Landroid/widget/Button;
    //   1408: new 980	android/widget/Button
    //   1411: dup
    //   1412: aload_0
    //   1413: invokespecial 981	android/widget/Button:<init>	(Landroid/content/Context;)V
    //   1416: astore 18
    //   1418: aload_0
    //   1419: aload 18
    //   1421: putfield 102	com/millennialmedia/android/VideoPlayer:mPausePlay	Landroid/widget/Button;
    //   1424: new 980	android/widget/Button
    //   1427: dup
    //   1428: aload_0
    //   1429: invokespecial 981	android/widget/Button:<init>	(Landroid/content/Context;)V
    //   1432: astore 19
    //   1434: aload_0
    //   1435: aload 19
    //   1437: putfield 985	com/millennialmedia/android/VideoPlayer:mStop	Landroid/widget/Button;
    //   1440: aload_0
    //   1441: getfield 983	com/millennialmedia/android/VideoPlayer:mRewind	Landroid/widget/Button;
    //   1444: ldc_w 986
    //   1447: invokevirtual 989	android/widget/Button:setBackgroundResource	(I)V
    //   1450: aload_0
    //   1451: getfield 102	com/millennialmedia/android/VideoPlayer:mPausePlay	Landroid/widget/Button;
    //   1454: ldc_w 990
    //   1457: invokevirtual 989	android/widget/Button:setBackgroundResource	(I)V
    //   1460: aload_0
    //   1461: getfield 985	com/millennialmedia/android/VideoPlayer:mStop	Landroid/widget/Button;
    //   1464: ldc_w 991
    //   1467: invokevirtual 989	android/widget/Button:setBackgroundResource	(I)V
    //   1470: new 574	android/widget/RelativeLayout$LayoutParams
    //   1473: dup
    //   1474: bipush 254
    //   1476: bipush 254
    //   1478: invokespecial 577	android/widget/RelativeLayout$LayoutParams:<init>	(II)V
    //   1481: astore 20
    //   1483: new 574	android/widget/RelativeLayout$LayoutParams
    //   1486: dup
    //   1487: bipush 254
    //   1489: bipush 254
    //   1491: invokespecial 577	android/widget/RelativeLayout$LayoutParams:<init>	(II)V
    //   1494: astore 21
    //   1496: new 574	android/widget/RelativeLayout$LayoutParams
    //   1499: dup
    //   1500: bipush 254
    //   1502: bipush 254
    //   1504: invokespecial 577	android/widget/RelativeLayout$LayoutParams:<init>	(II)V
    //   1507: astore 22
    //   1509: aload 20
    //   1511: bipush 14
    //   1513: invokevirtual 595	android/widget/RelativeLayout$LayoutParams:addRule	(I)V
    //   1516: aload_0
    //   1517: getfield 978	com/millennialmedia/android/VideoPlayer:controlsLayout	Landroid/widget/RelativeLayout;
    //   1520: aload_0
    //   1521: getfield 102	com/millennialmedia/android/VideoPlayer:mPausePlay	Landroid/widget/Button;
    //   1524: aload 20
    //   1526: invokevirtual 599	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1529: aload 22
    //   1531: iconst_0
    //   1532: aload_0
    //   1533: getfield 102	com/millennialmedia/android/VideoPlayer:mPausePlay	Landroid/widget/Button;
    //   1536: invokevirtual 992	android/widget/Button:getId	()I
    //   1539: invokevirtual 604	android/widget/RelativeLayout$LayoutParams:addRule	(II)V
    //   1542: aload_0
    //   1543: getfield 978	com/millennialmedia/android/VideoPlayer:controlsLayout	Landroid/widget/RelativeLayout;
    //   1546: aload_0
    //   1547: getfield 983	com/millennialmedia/android/VideoPlayer:mRewind	Landroid/widget/Button;
    //   1550: invokevirtual 994	android/widget/RelativeLayout:addView	(Landroid/view/View;)V
    //   1553: aload 21
    //   1555: bipush 11
    //   1557: invokevirtual 595	android/widget/RelativeLayout$LayoutParams:addRule	(I)V
    //   1560: aload_0
    //   1561: getfield 978	com/millennialmedia/android/VideoPlayer:controlsLayout	Landroid/widget/RelativeLayout;
    //   1564: aload_0
    //   1565: getfield 985	com/millennialmedia/android/VideoPlayer:mStop	Landroid/widget/Button;
    //   1568: aload 21
    //   1570: invokevirtual 599	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1573: aload_0
    //   1574: getfield 983	com/millennialmedia/android/VideoPlayer:mRewind	Landroid/widget/Button;
    //   1577: astore 23
    //   1579: new 996	com/millennialmedia/android/VideoPlayer$2
    //   1582: dup
    //   1583: aload_0
    //   1584: invokespecial 997	com/millennialmedia/android/VideoPlayer$2:<init>	(Lcom/millennialmedia/android/VideoPlayer;)V
    //   1587: astore 24
    //   1589: aload 23
    //   1591: aload 24
    //   1593: invokevirtual 998	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1596: aload_0
    //   1597: getfield 102	com/millennialmedia/android/VideoPlayer:mPausePlay	Landroid/widget/Button;
    //   1600: astore 25
    //   1602: new 1000	com/millennialmedia/android/VideoPlayer$3
    //   1605: dup
    //   1606: aload_0
    //   1607: invokespecial 1001	com/millennialmedia/android/VideoPlayer$3:<init>	(Lcom/millennialmedia/android/VideoPlayer;)V
    //   1610: astore 26
    //   1612: aload 25
    //   1614: aload 26
    //   1616: invokevirtual 998	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1619: aload_0
    //   1620: getfield 985	com/millennialmedia/android/VideoPlayer:mStop	Landroid/widget/Button;
    //   1623: astore 27
    //   1625: new 1003	com/millennialmedia/android/VideoPlayer$4
    //   1628: dup
    //   1629: aload_0
    //   1630: invokespecial 1004	com/millennialmedia/android/VideoPlayer$4:<init>	(Lcom/millennialmedia/android/VideoPlayer;)V
    //   1633: astore 28
    //   1635: aload 27
    //   1637: aload 28
    //   1639: invokevirtual 998	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1642: aload_0
    //   1643: getfield 798	com/millennialmedia/android/VideoPlayer:relLayout	Landroid/widget/RelativeLayout;
    //   1646: aload_0
    //   1647: getfield 978	com/millennialmedia/android/VideoPlayer:controlsLayout	Landroid/widget/RelativeLayout;
    //   1650: aload 16
    //   1652: invokevirtual 599	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1655: aload_0
    //   1656: getfield 978	com/millennialmedia/android/VideoPlayer:controlsLayout	Landroid/widget/RelativeLayout;
    //   1659: ifnull +10 -> 1669
    //   1662: aload_0
    //   1663: getfield 978	com/millennialmedia/android/VideoPlayer:controlsLayout	Landroid/widget/RelativeLayout;
    //   1666: invokevirtual 1007	android/widget/RelativeLayout:bringToFront	()V
    //   1669: aload_0
    //   1670: getfield 181	com/millennialmedia/android/VideoPlayer:buttonsLayout	Landroid/widget/RelativeLayout;
    //   1673: ifnull +14 -> 1687
    //   1676: aload_0
    //   1677: getfield 798	com/millennialmedia/android/VideoPlayer:relLayout	Landroid/widget/RelativeLayout;
    //   1680: aload_0
    //   1681: getfield 181	com/millennialmedia/android/VideoPlayer:buttonsLayout	Landroid/widget/RelativeLayout;
    //   1684: invokevirtual 636	android/widget/RelativeLayout:bringChildToFront	(Landroid/view/View;)V
    //   1687: aload_0
    //   1688: aload_0
    //   1689: getfield 798	com/millennialmedia/android/VideoPlayer:relLayout	Landroid/widget/RelativeLayout;
    //   1692: invokevirtual 1010	com/millennialmedia/android/VideoPlayer:setContentView	(Landroid/view/View;)V
    //   1695: return
    //   1696: astore 43
    //   1698: aload 41
    //   1700: astore 40
    //   1702: goto -473 -> 1229
    //   1705: astore 42
    //   1707: aload 41
    //   1709: astore 40
    //   1711: goto -502 -> 1209
    //   1714: goto -1257 -> 457
    //
    // Exception table:
    //   from	to	target	type
    //   426	436	1207	android/database/sqlite/SQLiteException
    //   426	436	1227	finally
    //   1209	1214	1227	finally
    //   436	447	1696	finally
    //   436	447	1705	android/database/sqlite/SQLiteException
  }

  public void onDestroy()
  {
    super.onDestroy();
    unregisterReceiver(this.receiver);
    if (!(this.isCachedAd))
      return;
    stopServer();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0) && (!(this.videoCompletedOnce)));
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }

  public void onPause()
  {
    super.onPause();
    Log.v("MillennialMediaSDK", "VideoPlayer - onPause");
    if (this.waitForUserPresent)
      return;
    pauseVideo();
  }

  public void onResume()
  {
    super.onResume();
    Log.v("MillennialMediaSDK", "VideoPlayer - onResume");
    if (this.waitForUserPresent)
      return;
    resumeVideo();
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (this.mVideoView != null)
    {
      paramBundle.putInt("videoPosition", this.mVideoView.getCurrentPosition());
      paramBundle.putInt("lastVideoPosition", this.lastVideoPosition);
    }
    paramBundle.putBoolean("isCachedAd", this.isCachedAd);
    paramBundle.putBoolean("videoCompleted", this.videoCompleted);
    paramBundle.putBoolean("videoCompletedOnce", this.videoCompletedOnce);
    paramBundle.putParcelable("logSet", this.logSet);
    paramBundle.putBoolean("shouldShowBottomBar", this.showBottomBar);
    paramBundle.putParcelable("videoAd", this.videoAd);
    super.onSaveInstanceState(paramBundle);
  }

  public void onStart()
  {
    super.onStart();
    if ((this.videoAd == null) || (this.videoAd.stayInPlayer != true) || (this.videoCompleted != true) || (this.videoAd.buttons == null))
      return;
    for (int i = 0; i < this.videoAd.buttons.size(); ++i)
    {
      VideoImage localVideoImage = (VideoImage)this.videoAd.buttons.get(i);
      setButtonAlpha(localVideoImage.button, localVideoImage.fromAlpha);
      if (localVideoImage.button.getParent() == null)
        this.buttonsLayout.addView(localVideoImage.button, localVideoImage.layoutParams);
      for (int j = 0; j < this.videoAd.buttons.size(); ++j)
        this.buttonsLayout.bringChildToFront(((VideoImage)this.videoAd.buttons.get(j)).button);
    }
  }

  public void startServer(String paramString, int paramInt, boolean paramBoolean)
  {
    monitorenter;
    try
    {
      if (this.videoServer == null)
      {
        this.videoServer = new VideoServer(paramString, paramBoolean);
        Thread localThread = new Thread(this.videoServer);
        localThread.start();
        localThread.getId();
        if (this.mVideoView == null)
          break label182;
        this.mVideoView.setVideoURI(Uri.parse("http://localhost:" + this.videoServer.port + "/" + paramString + "/video.dat"));
        this.mVideoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener()
        {
          public void onCompletion(MediaPlayer paramMediaPlayer)
          {
            MMAdViewSDK.Log.d("Video Playing Complete");
            if (VideoPlayer.this.showCountdownHud)
              VideoPlayer.this.hideHud();
            if (VideoPlayer.this.videoAd == null)
              return;
            VideoPlayer.this.videoPlayerOnCompletion(VideoPlayer.this.videoAd.onCompletionUrl);
          }
        });
        this.mVideoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener()
        {
          public void onPrepared(MediaPlayer paramMediaPlayer)
          {
            MMAdViewSDK.Log.d("Video Prepared");
          }
        });
        this.mVideoView.setOnErrorListener(new MediaPlayer.OnErrorListener()
        {
          public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
          {
            if (VideoPlayer.this.videoAd != null)
              HttpGetRequest.log(VideoPlayer.this.videoAd.videoError);
            return false;
          }
        });
        this.mVideoView.requestFocus();
        this.mVideoView.seekTo(paramInt);
        this.mVideoView.start();
        this.paused = false;
      }
      label182: return;
    }
    finally
    {
      monitorexit;
    }
  }

  public void stopServer()
  {
    monitorenter;
    try
    {
      if (this.videoServer != null)
      {
        MMAdViewSDK.Log.d("Stop video server");
        if (this.mVideoView != null)
          this.mVideoView.stopPlayback();
        this.videoServer.requestStop();
        this.videoServer = null;
      }
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  private class DelayedAnimationListener
    implements Animation.AnimationListener
  {
    private ImageButton button;
    private RelativeLayout.LayoutParams layoutParams;

    DelayedAnimationListener(ImageButton paramImageButton, RelativeLayout.LayoutParams paramLayoutParams)
    {
      this.button = paramImageButton;
      this.layoutParams = paramLayoutParams;
    }

    public void onAnimationEnd(Animation paramAnimation)
    {
    }

    public void onAnimationRepeat(Animation paramAnimation)
    {
    }

    public void onAnimationStart(Animation paramAnimation)
    {
    }
  }

  final class NetworkingThread extends Thread
  {
    String locationString;
    String mimeTypeString;
    String urlString;
    String userAgent = null;

    public void run()
    {
      this.mimeTypeString = null;
      this.locationString = this.urlString;
      try
      {
        int i;
        do
        {
          this.locationString = this.urlString;
          URL localURL = new URL(this.urlString);
          HttpURLConnection.setFollowRedirects(false);
          HttpURLConnection localHttpURLConnection = (HttpURLConnection)localURL.openConnection();
          localHttpURLConnection.setRequestMethod("GET");
          if (this.userAgent != null)
            localHttpURLConnection.setRequestProperty("User-Agent", this.userAgent);
          localHttpURLConnection.connect();
          this.urlString = localHttpURLConnection.getHeaderField("Location");
          this.mimeTypeString = localHttpURLConnection.getHeaderField("Content-Type");
          i = localHttpURLConnection.getResponseCode();
          MMAdViewSDK.Log.d("Response Code:" + localHttpURLConnection.getResponseCode() + " Response Message:" + localHttpURLConnection.getResponseMessage());
          MMAdViewSDK.Log.d("urlString: " + this.urlString);
        }
        while ((i >= 300) && (i < 400));
        return;
      }
      catch (MalformedURLException localMalformedURLException)
      {
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    }
  }

  private class ScreenReceiver extends BroadcastReceiver
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent.getAction().equals("android.intent.action.SCREEN_OFF"))
      {
        Log.v("MillennialMediaSDK", "VideoPlayer - Screen off");
        VideoPlayer.access$1202(VideoPlayer.this, true);
      }
      while (true)
      {
        return;
        if (paramIntent.getAction().equals("android.intent.action.SCREEN_ON"))
          Log.v("MillennialMediaSDK", "VideoPlayer - Screen on");
        if (!(paramIntent.getAction().equals("android.intent.action.USER_PRESENT")))
          continue;
        Log.v("MillennialMediaSDK", "VideoPlayer - Screen unlocked");
        VideoPlayer.this.resumeVideo();
        VideoPlayer.access$1202(VideoPlayer.this, false);
      }
    }
  }

  private class VideoServer
    implements Runnable
  {
    private String cacheDir;
    boolean done = false;
    private final String filePath;
    Integer port;
    private ServerSocket serverSocket = null;

    public VideoServer(String paramString, boolean paramBoolean)
    {
      this.filePath = paramString;
      if (paramBoolean)
        this.cacheDir = Environment.getExternalStorageDirectory().getPath() + "/" + ".mmsyscache" + "/";
      while (true)
        try
        {
          this.serverSocket = new ServerSocket();
          this.serverSocket.bind(null);
          this.serverSocket.setSoTimeout(0);
          this.port = new Integer(this.serverSocket.getLocalPort());
          MMAdViewSDK.Log.v("Video Server Port: " + this.port);
          label136: return;
          this.cacheDir = VideoPlayer.this.getCacheDir() + "/";
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
          break label136:
        }
    }

    public void requestStop()
    {
      monitorenter;
      try
      {
        this.done = true;
        MMAdViewSDK.Log.v("Requested video server stop. Done: " + this.done);
        monitorexit;
        return;
      }
      finally
      {
        localObject = finally;
        monitorexit;
        throw localObject;
      }
    }

    // ERROR //
    public void run()
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_1
      //   2: aconst_null
      //   3: astore_2
      //   4: aconst_null
      //   5: astore_3
      //   6: sipush 1024
      //   9: newarray byte
      //   11: astore 4
      //   13: aload_0
      //   14: getfield 30	com/millennialmedia/android/VideoPlayer$VideoServer:done	Z
      //   17: ifne +428 -> 445
      //   20: aload_0
      //   21: getfield 28	com/millennialmedia/android/VideoPlayer$VideoServer:serverSocket	Ljava/net/ServerSocket;
      //   24: invokevirtual 115	java/net/ServerSocket:accept	()Ljava/net/Socket;
      //   27: astore_1
      //   28: ldc 117
      //   30: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   33: aload_1
      //   34: invokevirtual 123	java/net/Socket:getInputStream	()Ljava/io/InputStream;
      //   37: astore 15
      //   39: aload_1
      //   40: invokevirtual 127	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
      //   43: astore_2
      //   44: new 34	java/lang/StringBuilder
      //   47: dup
      //   48: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   51: astore 16
      //   53: aload 15
      //   55: aload 4
      //   57: invokevirtual 133	java/io/InputStream:read	([B)I
      //   60: pop
      //   61: new 135	java/lang/String
      //   64: dup
      //   65: aload 4
      //   67: invokespecial 138	java/lang/String:<init>	([B)V
      //   70: astore 18
      //   72: aload 16
      //   74: aload 18
      //   76: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   79: pop
      //   80: aload 16
      //   82: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   85: astore 20
      //   87: aload 20
      //   89: ldc 140
      //   91: invokevirtual 144	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
      //   94: ifeq -41 -> 53
      //   97: new 34	java/lang/StringBuilder
      //   100: dup
      //   101: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   104: ldc 146
      //   106: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   109: aload 20
      //   111: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   114: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   117: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   120: ldc 148
      //   122: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   125: aload 20
      //   127: new 34	java/lang/StringBuilder
      //   130: dup
      //   131: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   134: ldc 150
      //   136: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   139: aload_0
      //   140: getfield 32	com/millennialmedia/android/VideoPlayer$VideoServer:filePath	Ljava/lang/String;
      //   143: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   146: ldc 152
      //   148: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   151: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   154: invokevirtual 156	java/lang/String:startsWith	(Ljava/lang/String;)Z
      //   157: ifeq +181 -> 338
      //   160: new 43	java/io/File
      //   163: dup
      //   164: new 34	java/lang/StringBuilder
      //   167: dup
      //   168: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   171: aload_0
      //   172: getfield 60	com/millennialmedia/android/VideoPlayer$VideoServer:cacheDir	Ljava/lang/String;
      //   175: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   178: aload_0
      //   179: getfield 32	com/millennialmedia/android/VideoPlayer$VideoServer:filePath	Ljava/lang/String;
      //   182: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   185: ldc 152
      //   187: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   190: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   193: invokespecial 158	java/io/File:<init>	(Ljava/lang/String;)V
      //   196: astore 21
      //   198: ldc 160
      //   200: invokevirtual 164	java/lang/String:getBytes	()[B
      //   203: astore 22
      //   205: aload_2
      //   206: aload 22
      //   208: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   211: ldc 171
      //   213: invokevirtual 164	java/lang/String:getBytes	()[B
      //   216: astore 23
      //   218: aload_2
      //   219: aload 23
      //   221: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   224: new 135	java/lang/String
      //   227: dup
      //   228: new 34	java/lang/StringBuilder
      //   231: dup
      //   232: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   235: ldc 173
      //   237: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   240: aload 21
      //   242: invokevirtual 177	java/io/File:length	()J
      //   245: invokevirtual 180	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   248: ldc 182
      //   250: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   253: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   256: invokespecial 183	java/lang/String:<init>	(Ljava/lang/String;)V
      //   259: invokevirtual 164	java/lang/String:getBytes	()[B
      //   262: astore 24
      //   264: aload_2
      //   265: aload 24
      //   267: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   270: ldc 185
      //   272: invokevirtual 164	java/lang/String:getBytes	()[B
      //   275: astore 25
      //   277: aload_2
      //   278: aload 25
      //   280: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   283: ldc 187
      //   285: invokevirtual 164	java/lang/String:getBytes	()[B
      //   288: astore 26
      //   290: aload_2
      //   291: aload 26
      //   293: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   296: ldc 189
      //   298: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   301: aload_1
      //   302: ifnull +7 -> 309
      //   305: aload_1
      //   306: invokevirtual 192	java/net/Socket:close	()V
      //   309: aload_3
      //   310: ifnull +7 -> 317
      //   313: aload_3
      //   314: invokevirtual 195	java/io/FileInputStream:close	()V
      //   317: aload_2
      //   318: ifnull -305 -> 13
      //   321: aload_2
      //   322: invokevirtual 196	java/io/OutputStream:close	()V
      //   325: goto -312 -> 13
      //   328: astore 27
      //   330: aload 27
      //   332: invokevirtual 100	java/io/IOException:printStackTrace	()V
      //   335: goto -322 -> 13
      //   338: aload 20
      //   340: new 34	java/lang/StringBuilder
      //   343: dup
      //   344: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   347: ldc 198
      //   349: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   352: aload_0
      //   353: getfield 32	com/millennialmedia/android/VideoPlayer$VideoServer:filePath	Ljava/lang/String;
      //   356: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   359: ldc 152
      //   361: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   364: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   367: invokevirtual 156	java/lang/String:startsWith	(Ljava/lang/String;)Z
      //   370: ifeq +1024 -> 1394
      //   373: new 43	java/io/File
      //   376: dup
      //   377: new 34	java/lang/StringBuilder
      //   380: dup
      //   381: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   384: aload_0
      //   385: getfield 60	com/millennialmedia/android/VideoPlayer$VideoServer:cacheDir	Ljava/lang/String;
      //   388: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   391: aload_0
      //   392: getfield 32	com/millennialmedia/android/VideoPlayer$VideoServer:filePath	Ljava/lang/String;
      //   395: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   398: ldc 152
      //   400: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   403: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   406: invokespecial 158	java/io/File:<init>	(Ljava/lang/String;)V
      //   409: astore 28
      //   411: aload 28
      //   413: ifnonnull +84 -> 497
      //   416: ldc 189
      //   418: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   421: aload_1
      //   422: ifnull +7 -> 429
      //   425: aload_1
      //   426: invokevirtual 192	java/net/Socket:close	()V
      //   429: aload_3
      //   430: ifnull +7 -> 437
      //   433: aload_3
      //   434: invokevirtual 195	java/io/FileInputStream:close	()V
      //   437: aload_2
      //   438: ifnull +7 -> 445
      //   441: aload_2
      //   442: invokevirtual 196	java/io/OutputStream:close	()V
      //   445: aload_0
      //   446: getfield 30	com/millennialmedia/android/VideoPlayer$VideoServer:done	Z
      //   449: ifeq +8 -> 457
      //   452: ldc 200
      //   454: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   457: aload_0
      //   458: getfield 28	com/millennialmedia/android/VideoPlayer$VideoServer:serverSocket	Ljava/net/ServerSocket;
      //   461: ifnull +25 -> 486
      //   464: aload_0
      //   465: getfield 28	com/millennialmedia/android/VideoPlayer$VideoServer:serverSocket	Ljava/net/ServerSocket;
      //   468: invokevirtual 204	java/net/ServerSocket:isBound	()Z
      //   471: ifeq +15 -> 486
      //   474: ldc 206
      //   476: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   479: aload_0
      //   480: getfield 28	com/millennialmedia/android/VideoPlayer$VideoServer:serverSocket	Ljava/net/ServerSocket;
      //   483: invokevirtual 207	java/net/ServerSocket:close	()V
      //   486: return
      //   487: astore 65
      //   489: aload 65
      //   491: invokevirtual 100	java/io/IOException:printStackTrace	()V
      //   494: goto -49 -> 445
      //   497: aload_1
      //   498: invokevirtual 127	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
      //   501: astore_2
      //   502: aload 20
      //   504: ldc 209
      //   506: invokevirtual 144	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
      //   509: ifeq +683 -> 1192
      //   512: ldc 211
      //   514: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   517: ldc 213
      //   519: invokestatic 219	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
      //   522: aload 20
      //   524: invokevirtual 223	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
      //   527: astore 38
      //   529: lconst_1
      //   530: lstore 39
      //   532: lconst_1
      //   533: lstore 41
      //   535: aload 38
      //   537: invokevirtual 228	java/util/regex/Matcher:find	()Z
      //   540: ifeq +40 -> 580
      //   543: aload 38
      //   545: iconst_1
      //   546: invokevirtual 232	java/util/regex/Matcher:group	(I)Ljava/lang/String;
      //   549: astore 63
      //   551: new 73	java/lang/Integer
      //   554: dup
      //   555: aload 63
      //   557: invokespecial 233	java/lang/Integer:<init>	(Ljava/lang/String;)V
      //   560: astore 64
      //   562: aload 64
      //   564: invokevirtual 236	java/lang/Integer:intValue	()I
      //   567: i2l
      //   568: lstore 39
      //   570: aload 28
      //   572: invokevirtual 177	java/io/File:length	()J
      //   575: lstore 41
      //   577: goto -42 -> 535
      //   580: ldc 238
      //   582: invokestatic 219	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
      //   585: aload 20
      //   587: invokevirtual 223	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
      //   590: astore 43
      //   592: aload 43
      //   594: invokevirtual 228	java/util/regex/Matcher:find	()Z
      //   597: ifeq +77 -> 674
      //   600: aload 43
      //   602: iconst_1
      //   603: invokevirtual 232	java/util/regex/Matcher:group	(I)Ljava/lang/String;
      //   606: astore 59
      //   608: aload 43
      //   610: iconst_2
      //   611: invokevirtual 232	java/util/regex/Matcher:group	(I)Ljava/lang/String;
      //   614: astore 60
      //   616: new 73	java/lang/Integer
      //   619: dup
      //   620: aload 59
      //   622: invokespecial 233	java/lang/Integer:<init>	(Ljava/lang/String;)V
      //   625: astore 61
      //   627: aload 61
      //   629: invokevirtual 236	java/lang/Integer:intValue	()I
      //   632: i2l
      //   633: lstore 39
      //   635: aload 60
      //   637: ifnull +25 -> 662
      //   640: new 73	java/lang/Integer
      //   643: dup
      //   644: aload 60
      //   646: invokespecial 233	java/lang/Integer:<init>	(Ljava/lang/String;)V
      //   649: astore 62
      //   651: aload 62
      //   653: invokevirtual 236	java/lang/Integer:intValue	()I
      //   656: i2l
      //   657: lstore 41
      //   659: goto -67 -> 592
      //   662: aload 28
      //   664: invokevirtual 177	java/io/File:length	()J
      //   667: lconst_1
      //   668: lsub
      //   669: lstore 41
      //   671: goto -79 -> 592
      //   674: ldc 240
      //   676: new 34	java/lang/StringBuilder
      //   679: dup
      //   680: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   683: ldc 242
      //   685: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   688: lload 39
      //   690: invokevirtual 180	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   693: ldc 244
      //   695: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   698: lload 41
      //   700: invokevirtual 180	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   703: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   706: invokestatic 250	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
      //   709: pop
      //   710: new 194	java/io/FileInputStream
      //   713: dup
      //   714: aload 28
      //   716: invokespecial 253	java/io/FileInputStream:<init>	(Ljava/io/File;)V
      //   719: astore 34
      //   721: aload 34
      //   723: lload 39
      //   725: invokevirtual 257	java/io/FileInputStream:skip	(J)J
      //   728: lstore 45
      //   730: new 34	java/lang/StringBuilder
      //   733: dup
      //   734: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   737: ldc_w 259
      //   740: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   743: lload 45
      //   745: invokevirtual 180	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   748: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   751: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   754: lconst_1
      //   755: lload 41
      //   757: lload 45
      //   759: lsub
      //   760: ladd
      //   761: lstore 47
      //   763: ldc_w 261
      //   766: invokevirtual 164	java/lang/String:getBytes	()[B
      //   769: astore 49
      //   771: aload_2
      //   772: aload 49
      //   774: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   777: ldc_w 263
      //   780: invokevirtual 164	java/lang/String:getBytes	()[B
      //   783: astore 50
      //   785: aload_2
      //   786: aload 50
      //   788: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   791: ldc_w 265
      //   794: invokevirtual 164	java/lang/String:getBytes	()[B
      //   797: astore 51
      //   799: aload_2
      //   800: aload 51
      //   802: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   805: lload 41
      //   807: lconst_1
      //   808: lcmp
      //   809: ifle +233 -> 1042
      //   812: new 135	java/lang/String
      //   815: dup
      //   816: new 34	java/lang/StringBuilder
      //   819: dup
      //   820: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   823: ldc_w 267
      //   826: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   829: lload 39
      //   831: invokevirtual 180	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   834: ldc 244
      //   836: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   839: lload 41
      //   841: invokevirtual 180	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   844: ldc 182
      //   846: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   849: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   852: invokespecial 183	java/lang/String:<init>	(Ljava/lang/String;)V
      //   855: invokevirtual 164	java/lang/String:getBytes	()[B
      //   858: astore 58
      //   860: aload_2
      //   861: aload 58
      //   863: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   866: ldc 171
      //   868: invokevirtual 164	java/lang/String:getBytes	()[B
      //   871: astore 53
      //   873: aload_2
      //   874: aload 53
      //   876: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   879: new 135	java/lang/String
      //   882: dup
      //   883: new 34	java/lang/StringBuilder
      //   886: dup
      //   887: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   890: ldc 173
      //   892: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   895: lload 47
      //   897: invokevirtual 180	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   900: ldc 182
      //   902: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   905: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   908: invokespecial 183	java/lang/String:<init>	(Ljava/lang/String;)V
      //   911: invokevirtual 164	java/lang/String:getBytes	()[B
      //   914: astore 54
      //   916: aload_2
      //   917: aload 54
      //   919: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   922: ldc 187
      //   924: invokevirtual 164	java/lang/String:getBytes	()[B
      //   927: astore 55
      //   929: aload_2
      //   930: aload 55
      //   932: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   935: aload 34
      //   937: aload 4
      //   939: invokevirtual 268	java/io/FileInputStream:read	([B)I
      //   942: istore 56
      //   944: iload 56
      //   946: ifgt +156 -> 1102
      //   949: ldc_w 270
      //   952: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   955: aload 34
      //   957: astore_3
      //   958: ldc 182
      //   960: invokevirtual 164	java/lang/String:getBytes	()[B
      //   963: astore 37
      //   965: aload_2
      //   966: aload 37
      //   968: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   971: ldc_w 272
      //   974: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   977: aload_0
      //   978: iconst_1
      //   979: putfield 30	com/millennialmedia/android/VideoPlayer$VideoServer:done	Z
      //   982: goto -686 -> 296
      //   985: astore 12
      //   987: aload 12
      //   989: invokevirtual 273	java/net/SocketTimeoutException:printStackTrace	()V
      //   992: aload_1
      //   993: ifnull +7 -> 1000
      //   996: aload_1
      //   997: invokevirtual 192	java/net/Socket:close	()V
      //   1000: ldc 189
      //   1002: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   1005: aload_1
      //   1006: ifnull +7 -> 1013
      //   1009: aload_1
      //   1010: invokevirtual 192	java/net/Socket:close	()V
      //   1013: aload_3
      //   1014: ifnull +7 -> 1021
      //   1017: aload_3
      //   1018: invokevirtual 195	java/io/FileInputStream:close	()V
      //   1021: aload_2
      //   1022: ifnull -1009 -> 13
      //   1025: aload_2
      //   1026: invokevirtual 196	java/io/OutputStream:close	()V
      //   1029: goto -1016 -> 13
      //   1032: astore 13
      //   1034: aload 13
      //   1036: invokevirtual 100	java/io/IOException:printStackTrace	()V
      //   1039: goto -1026 -> 13
      //   1042: new 135	java/lang/String
      //   1045: dup
      //   1046: new 34	java/lang/StringBuilder
      //   1049: dup
      //   1050: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   1053: ldc_w 267
      //   1056: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1059: lload 39
      //   1061: invokevirtual 180	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   1064: ldc 244
      //   1066: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1069: aload 28
      //   1071: invokevirtual 177	java/io/File:length	()J
      //   1074: invokevirtual 180	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   1077: ldc 182
      //   1079: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1082: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   1085: invokespecial 183	java/lang/String:<init>	(Ljava/lang/String;)V
      //   1088: invokevirtual 164	java/lang/String:getBytes	()[B
      //   1091: astore 52
      //   1093: aload_2
      //   1094: aload 52
      //   1096: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   1099: goto -233 -> 866
      //   1102: lload 47
      //   1104: iload 56
      //   1106: i2l
      //   1107: lcmp
      //   1108: iflt +15 -> 1123
      //   1111: aload_2
      //   1112: aload 4
      //   1114: iconst_0
      //   1115: iload 56
      //   1117: invokevirtual 276	java/io/OutputStream:write	([BII)V
      //   1120: goto +387 -> 1507
      //   1123: lload 47
      //   1125: l2i
      //   1126: istore 57
      //   1128: aload_2
      //   1129: aload 4
      //   1131: iconst_0
      //   1132: iload 57
      //   1134: invokevirtual 276	java/io/OutputStream:write	([BII)V
      //   1137: goto +370 -> 1507
      //   1140: astore 10
      //   1142: aload 34
      //   1144: astore_3
      //   1145: aload 10
      //   1147: invokevirtual 277	java/io/FileNotFoundException:printStackTrace	()V
      //   1150: ldc 189
      //   1152: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   1155: aload_1
      //   1156: ifnull +7 -> 1163
      //   1159: aload_1
      //   1160: invokevirtual 192	java/net/Socket:close	()V
      //   1163: aload_3
      //   1164: ifnull +7 -> 1171
      //   1167: aload_3
      //   1168: invokevirtual 195	java/io/FileInputStream:close	()V
      //   1171: aload_2
      //   1172: ifnull -727 -> 445
      //   1175: aload_2
      //   1176: invokevirtual 196	java/io/OutputStream:close	()V
      //   1179: goto -734 -> 445
      //   1182: astore 11
      //   1184: aload 11
      //   1186: invokevirtual 100	java/io/IOException:printStackTrace	()V
      //   1189: goto -744 -> 445
      //   1192: ldc 160
      //   1194: invokevirtual 164	java/lang/String:getBytes	()[B
      //   1197: astore 29
      //   1199: aload_2
      //   1200: aload 29
      //   1202: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   1205: ldc 171
      //   1207: invokevirtual 164	java/lang/String:getBytes	()[B
      //   1210: astore 30
      //   1212: aload_2
      //   1213: aload 30
      //   1215: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   1218: new 135	java/lang/String
      //   1221: dup
      //   1222: new 34	java/lang/StringBuilder
      //   1225: dup
      //   1226: invokespecial 35	java/lang/StringBuilder:<init>	()V
      //   1229: ldc 173
      //   1231: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1234: aload 28
      //   1236: invokevirtual 177	java/io/File:length	()J
      //   1239: invokevirtual 180	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   1242: ldc 182
      //   1244: invokevirtual 51	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1247: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   1250: invokespecial 183	java/lang/String:<init>	(Ljava/lang/String;)V
      //   1253: invokevirtual 164	java/lang/String:getBytes	()[B
      //   1256: astore 31
      //   1258: aload_2
      //   1259: aload 31
      //   1261: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   1264: ldc 185
      //   1266: invokevirtual 164	java/lang/String:getBytes	()[B
      //   1269: astore 32
      //   1271: aload_2
      //   1272: aload 32
      //   1274: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   1277: ldc 187
      //   1279: invokevirtual 164	java/lang/String:getBytes	()[B
      //   1282: astore 33
      //   1284: aload_2
      //   1285: aload 33
      //   1287: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   1290: new 194	java/io/FileInputStream
      //   1293: dup
      //   1294: aload 28
      //   1296: invokespecial 253	java/io/FileInputStream:<init>	(Ljava/io/File;)V
      //   1299: astore 34
      //   1301: aload 34
      //   1303: aload 4
      //   1305: invokevirtual 268	java/io/FileInputStream:read	([B)I
      //   1308: istore 35
      //   1310: iload 35
      //   1312: ifgt +18 -> 1330
      //   1315: ldc 240
      //   1317: ldc_w 270
      //   1320: invokestatic 250	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
      //   1323: pop
      //   1324: aload 34
      //   1326: astore_3
      //   1327: goto -369 -> 958
      //   1330: aload_2
      //   1331: aload 4
      //   1333: iconst_0
      //   1334: iload 35
      //   1336: invokevirtual 276	java/io/OutputStream:write	([BII)V
      //   1339: goto -38 -> 1301
      //   1342: astore 6
      //   1344: aload 34
      //   1346: astore_3
      //   1347: aload 6
      //   1349: invokevirtual 100	java/io/IOException:printStackTrace	()V
      //   1352: ldc 189
      //   1354: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   1357: aload_1
      //   1358: ifnull +7 -> 1365
      //   1361: aload_1
      //   1362: invokevirtual 192	java/net/Socket:close	()V
      //   1365: aload_3
      //   1366: ifnull +7 -> 1373
      //   1369: aload_3
      //   1370: invokevirtual 195	java/io/FileInputStream:close	()V
      //   1373: aload_2
      //   1374: ifnull -1361 -> 13
      //   1377: aload_2
      //   1378: invokevirtual 196	java/io/OutputStream:close	()V
      //   1381: goto -1368 -> 13
      //   1384: astore 9
      //   1386: aload 9
      //   1388: invokevirtual 100	java/io/IOException:printStackTrace	()V
      //   1391: goto -1378 -> 13
      //   1394: ldc_w 279
      //   1397: invokevirtual 164	java/lang/String:getBytes	()[B
      //   1400: astore 66
      //   1402: aload_2
      //   1403: aload 66
      //   1405: invokevirtual 169	java/io/OutputStream:write	([B)V
      //   1408: ldc_w 281
      //   1411: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   1414: goto -1118 -> 296
      //   1417: astore 10
      //   1419: goto -274 -> 1145
      //   1422: astore 14
      //   1424: aload 14
      //   1426: invokevirtual 100	java/io/IOException:printStackTrace	()V
      //   1429: goto -429 -> 1000
      //   1432: astore 7
      //   1434: ldc 189
      //   1436: invokestatic 92	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   1439: aload_1
      //   1440: ifnull +7 -> 1447
      //   1443: aload_1
      //   1444: invokevirtual 192	java/net/Socket:close	()V
      //   1447: aload_3
      //   1448: ifnull +7 -> 1455
      //   1451: aload_3
      //   1452: invokevirtual 195	java/io/FileInputStream:close	()V
      //   1455: aload_2
      //   1456: ifnull +7 -> 1463
      //   1459: aload_2
      //   1460: invokevirtual 196	java/io/OutputStream:close	()V
      //   1463: aload 7
      //   1465: athrow
      //   1466: astore 8
      //   1468: aload 8
      //   1470: invokevirtual 100	java/io/IOException:printStackTrace	()V
      //   1473: goto -10 -> 1463
      //   1476: astore 5
      //   1478: aload 5
      //   1480: invokevirtual 100	java/io/IOException:printStackTrace	()V
      //   1483: goto -997 -> 486
      //   1486: astore 7
      //   1488: aload 34
      //   1490: astore_3
      //   1491: goto -57 -> 1434
      //   1494: astore 6
      //   1496: goto -149 -> 1347
      //   1499: astore 12
      //   1501: aload 34
      //   1503: astore_3
      //   1504: goto -517 -> 987
      //   1507: lload 47
      //   1509: iload 56
      //   1511: i2l
      //   1512: lsub
      //   1513: lstore 47
      //   1515: lload 47
      //   1517: lconst_0
      //   1518: lcmp
      //   1519: ifgt -584 -> 935
      //   1522: goto -567 -> 955
      //
      // Exception table:
      //   from	to	target	type
      //   305	325	328	java/io/IOException
      //   425	445	487	java/io/IOException
      //   20	296	985	java/net/SocketTimeoutException
      //   338	411	985	java/net/SocketTimeoutException
      //   497	721	985	java/net/SocketTimeoutException
      //   958	982	985	java/net/SocketTimeoutException
      //   1192	1301	985	java/net/SocketTimeoutException
      //   1394	1414	985	java/net/SocketTimeoutException
      //   1009	1029	1032	java/io/IOException
      //   721	955	1140	java/io/FileNotFoundException
      //   1042	1137	1140	java/io/FileNotFoundException
      //   1301	1339	1140	java/io/FileNotFoundException
      //   1159	1179	1182	java/io/IOException
      //   721	955	1342	java/io/IOException
      //   1042	1137	1342	java/io/IOException
      //   1301	1339	1342	java/io/IOException
      //   1361	1381	1384	java/io/IOException
      //   20	296	1417	java/io/FileNotFoundException
      //   338	411	1417	java/io/FileNotFoundException
      //   497	721	1417	java/io/FileNotFoundException
      //   958	982	1417	java/io/FileNotFoundException
      //   1192	1301	1417	java/io/FileNotFoundException
      //   1394	1414	1417	java/io/FileNotFoundException
      //   996	1000	1422	java/io/IOException
      //   20	296	1432	finally
      //   338	411	1432	finally
      //   497	721	1432	finally
      //   958	982	1432	finally
      //   987	992	1432	finally
      //   996	1000	1432	finally
      //   1145	1150	1432	finally
      //   1192	1301	1432	finally
      //   1347	1352	1432	finally
      //   1394	1414	1432	finally
      //   1424	1429	1432	finally
      //   1443	1463	1466	java/io/IOException
      //   457	486	1476	java/io/IOException
      //   721	955	1486	finally
      //   1042	1137	1486	finally
      //   1301	1339	1486	finally
      //   20	296	1494	java/io/IOException
      //   338	411	1494	java/io/IOException
      //   497	721	1494	java/io/IOException
      //   958	982	1494	java/io/IOException
      //   1192	1301	1494	java/io/IOException
      //   1394	1414	1494	java/io/IOException
      //   721	955	1499	java/net/SocketTimeoutException
      //   1042	1137	1499	java/net/SocketTimeoutException
      //   1301	1339	1499	java/net/SocketTimeoutException
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.VideoPlayer
 * JD-Core Version:    0.5.3
 */