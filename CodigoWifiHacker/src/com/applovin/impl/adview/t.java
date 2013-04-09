package com.applovin.impl.adview;

import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.applovin.adview.AppLovinAdView;

class t
  implements Runnable
{
  public void run()
  {
    p.g(this.a).renderAd(p.f(this.a));
    p.h(this.a).setVisibility(8);
    Animation localAnimation = AnimationUtils.loadAnimation(p.b(this.a), 17432577);
    localAnimation.setDuration(500L);
    p.h(this.a).startAnimation(localAnimation);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.t
 * JD-Core Version:    0.5.3
 */