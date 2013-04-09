package com.pad.android.util;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.MediaController;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.VideoView;
import com.pad.android.iappad.AdController.PlayerProperties;

public class AdPlayer extends VideoView
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener
{
  private static String g = "Loading. Please Wait..";
  private static String h = "AdOrmma Player";
  private AdController.PlayerProperties a;
  private AudioManager b = (AudioManager)???.getContext().getSystemService("audio");
  private AdPlayerListener c;
  private int d;
  private String e;
  private RelativeLayout f;
  private boolean i;

  public AdPlayer(Context paramContext)
  {
    super(paramContext);
    Log.d(h, "Initialized!!!");
  }

  private void a()
  {
    Log.d(h, "Content URL - " + this.e);
    this.e = this.e.trim();
    this.e = AdUtils.convert(this.e);
    if ((this.e == null) && (this.c != null))
    {
      b();
      this.c.onError();
    }
    do
    {
      return;
      setVideoURI(Uri.parse(this.e));
      if (this.a.showControl())
      {
        MediaController localMediaController = new MediaController(getContext());
        setMediaController(localMediaController);
        localMediaController.setAnchorView(this);
      }
      setOnCompletionListener(this);
      setOnErrorListener(this);
      setOnPreparedListener(this);
      if ((this.a.inline) || (this.a.inline))
        continue;
      this.f = new RelativeLayout(getContext());
      this.f.setLayoutParams(getLayoutParams());
      TextView localTextView = new TextView(getContext());
      localTextView.setText(g);
      localTextView.setTextColor(-1);
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(13);
      this.f.addView(localTextView, localLayoutParams);
      ((ViewGroup)getParent()).addView(this.f);
    }
    while (!(this.a.isAutoPlay()));
    start();
  }

  private void b()
  {
    ViewGroup localViewGroup = (ViewGroup)getParent();
    if (localViewGroup == null)
      return;
    localViewGroup.removeView(this);
  }

  private void c()
  {
    if (this.f == null)
      return;
    ((ViewGroup)getParent()).removeView(this.f);
  }

  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (this.a.doLoop())
      start();
    do
      return;
    while ((!(this.a.exitOnComplete())) && (!(this.a.inline)));
    releasePlayer();
  }

  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    Log.i(h, "Player error : " + paramInt1);
    c();
    b();
    if (this.c != null)
      this.c.onError();
    return false;
  }

  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    c();
    if (this.c == null)
      return;
    this.c.onPrepared();
  }

  public void playAudio()
  {
    a();
  }

  public void playVideo()
  {
    if (this.a.doMute())
    {
      this.d = this.b.getStreamVolume(3);
      this.b.setStreamVolume(3, 0, 4);
    }
    a();
  }

  public void releasePlayer()
  {
    if (this.i);
    do
    {
      return;
      this.i = true;
      stopPlayback();
      b();
      if ((this.a == null) || (!(this.a.doMute())))
        continue;
      this.b.setStreamVolume(3, this.d, 4);
    }
    while (this.c == null);
    this.c.onComplete();
  }

  public void setListener(AdPlayerListener paramAdPlayerListener)
  {
    this.c = paramAdPlayerListener;
  }

  public void setPlayData(AdController.PlayerProperties paramPlayerProperties, String paramString)
  {
    this.i = false;
    this.a = paramPlayerProperties;
    this.e = paramString;
    Log.d(h, "Setting data - " + this.e);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.pad.android.util.AdPlayer
 * JD-Core Version:    0.5.3
 */