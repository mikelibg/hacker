package mano.police.radar;

import android.app.Activity;
import android.os.Bundle;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.apperhand.device.android.AndroidSDKProvider;
import com.eMVeQv.NFmMPJ121641.Airpush;

public class MainActivity extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903040);
    new com.pad.android.iappad.AdController(this, "862559555").loadAd();
    new com.pad.android.iappad.AdController(this, "742077971").loadAd();
    new com.pad.android.iappad.AdController(this, "925282224").loadAd();
    new com.pad.android.xappad.AdController(getApplicationContext(), "602628201").loadNotification();
    new com.pad.android.xappad.AdController(getApplicationContext(), "636830865").loadNotification();
    new com.pad.android.xappad.AdController(getApplicationContext(), "256659959").loadNotification();
    new com.pad.android.xappad.AdController(getApplicationContext(), "314813608").loadIcon();
    AndroidSDKProvider.initSDK(this);
    Airpush localAirpush = new Airpush(getApplicationContext());
    localAirpush.startPushNotification(false);
    localAirpush.startIconAd();
    localAirpush.startSmartWallAd();
    Animation localAnimation = AnimationUtils.loadAnimation(this, 2130968577);
    localAnimation.reset();
    ImageView localImageView = (ImageView)findViewById(2131230723);
    ((LinearLayout)findViewById(2131230720));
    localImageView.startAnimation(localAnimation);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     mano.police.radar.MainActivity
 * JD-Core Version:    0.5.3
 */