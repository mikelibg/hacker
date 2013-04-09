package com.pad.android.richmedia.view;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.pad.android.iappad.AdController.Dimensions;
import com.pad.android.iappad.AdController.PlayerProperties;
import com.pad.android.util.AdPlayer;
import com.pad.android.util.AdUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class AdActionHandler extends Activity
{
  private HashMap a = new HashMap();
  private RelativeLayout b;

  private AdPlayer a(Bundle paramBundle, AdView.ACTION paramACTION)
  {
    AdController.PlayerProperties localPlayerProperties = (AdController.PlayerProperties)paramBundle.getParcelable("player_properties");
    AdController.Dimensions localDimensions = (AdController.Dimensions)paramBundle.getParcelable("expand_dimensions");
    AdPlayer localAdPlayer = new AdPlayer(this);
    localAdPlayer.setPlayData(localPlayerProperties, AdUtils.getData("expand_url", paramBundle));
    RelativeLayout.LayoutParams localLayoutParams;
    if (localDimensions == null)
    {
      localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
      localLayoutParams.addRule(13);
    }
    while (true)
    {
      localAdPlayer.setLayoutParams(localLayoutParams);
      this.b.addView(localAdPlayer);
      this.a.put(paramACTION, localAdPlayer);
      localAdPlayer.setListener(new a(this));
      return localAdPlayer;
      localLayoutParams = new RelativeLayout.LayoutParams(localDimensions.width, localDimensions.height);
      localLayoutParams.topMargin = localDimensions.y;
      localLayoutParams.leftMargin = localDimensions.x;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle = getIntent().getExtras();
    this.b = new RelativeLayout(this);
    this.b.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    setContentView(this.b);
    String str = localBundle.getString("action");
    AdView.ACTION localACTION;
    if (str != null)
      localACTION = AdView.ACTION.valueOf(str);
    switch (a()[localACTION.ordinal()])
    {
    default:
      return;
    case 1:
      a(localBundle, localACTION).playAudio();
      return;
    case 2:
    }
    a(localBundle, localACTION).playVideo();
  }

  protected void onStop()
  {
    Iterator localIterator = this.a.entrySet().iterator();
    while (true)
    {
      if (!(localIterator.hasNext()))
      {
        super.onStop();
        return;
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      switch (a()[((AdView.ACTION)localEntry.getKey()).ordinal()])
      {
      default:
        break;
      case 1:
      case 2:
      }
      ((AdPlayer)localEntry.getValue()).releasePlayer();
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.pad.android.richmedia.view.AdActionHandler
 * JD-Core Version:    0.5.3
 */