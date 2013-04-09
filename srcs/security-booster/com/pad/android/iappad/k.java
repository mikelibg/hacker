package com.pad.android.iappad;

import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.pad.android.listener.AdAudioListener;

final class k
  implements MediaPlayer.OnCompletionListener
{
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    AdController.s(this.a).setStreamVolume(3, AdController.t(this.a), 8);
    if (AdController.r(this.a) != null)
      AdController.r(this.a).release();
    if (AdController.m(this.a) != null)
      AdController.m(this.a).onAdFinished();
    AdController.a(this.a, null);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.iappad.k
 * JD-Core Version:    0.5.3
 */