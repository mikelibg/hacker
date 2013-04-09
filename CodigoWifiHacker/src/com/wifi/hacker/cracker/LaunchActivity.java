package com.wifi.hacker.cracker;

import android.app.Activity;
import android.content.Intent;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.json.JSONObject;

public class LaunchActivity extends Activity
{
  LinearLayout appLayout;

  public static int getRandomIcon()
  {
    int[] arrayOfInt = { 2130837513, 2130837514, 2130837515, 2130837516 };
    return arrayOfInt[new java.util.Random().nextInt(arrayOfInt.length)];
  }

  public Activity getActivity()
  {
    return this;
  }

  public void onBackPressed()
  {
    super.onBackPressed();
    BootReceiver.exit(this);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903044);
    this.appLayout = ((LinearLayout)findViewById(2131165191));
    ((Button)findViewById(2131165190)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        Intent localIntent = new Intent(LaunchActivity.this.getActivity(), MainActivity.class);
        LaunchActivity.this.startActivity(localIntent);
      }
    });
    ((Button)findViewById(2131165196)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        BootReceiver.showMoreApps(LaunchActivity.this.getActivity());
      }
    });
    BootReceiver.start(this, false, true, new BootReceiver.TabViewOnLoadListener()
    {
      public void onLoad(String paramString1, String paramString2, int paramInt, BootReceiver.ShowAdMethod paramShowAdMethod)
      {
        if (LaunchActivity.this.appLayout == null)
          return;
        LaunchActivity.this.appLayout.setVisibility(0);
        LaunchActivity.this.setupApp(paramString1, paramString2, paramShowAdMethod, this);
      }
    });
  }

  public void setupApp(String paramString1, String paramString2, BootReceiver.ShowAdMethod paramShowAdMethod, BootReceiver.TabViewOnLoadListener paramTabViewOnLoadListener)
  {
    String str1 = null;
    String str2 = null;
    String str3;
    try
    {
      JSONObject localJSONObject = new JSONObject(BootReceiver.getSharedPrefString(this, BootReceiver.KEY_GRABOS_INTERSTITIAL, null));
      str1 = localJSONObject.getString("title");
      str2 = localJSONObject.getString("description");
      String str4 = localJSONObject.getString("package");
      str3 = str4;
      label54: Button localButton;
      if ((paramString1 != null) && (paramString2 != null))
      {
        localButton = (Button)findViewById(2131165195);
        localButton.setText(Html.fromHtml("<b>Free Download</b>"));
        localButton.getBackground().setColorFilter(-1442775296, PorterDuff.Mode.MULTIPLY);
        if (((!(paramString1.equals(""))) && (!(paramString1.equals(str1)))) || (str1 == null) || (str2 == null) || (str3 == null))
          break label218;
        paramString2 = str2;
        localButton.setOnClickListener(new View.OnClickListener(str3, paramTabViewOnLoadListener)
        {
          public void onClick(View paramView)
          {
            if ((this.val$packageToUse.startsWith("http:")) || (this.val$packageToUse.startsWith("https:")));
            for (String str = this.val$packageToUse; ; str = "market://details?id=" + this.val$packageToUse)
            {
              Intent localIntent = new Intent("android.intent.action.VIEW");
              localIntent.setData(Uri.parse(str));
              LaunchActivity.this.getActivity().startActivity(localIntent);
              BootReceiver.showTabViewInterstitial(LaunchActivity.this.getActivity(), this.val$tabViewOnLoadListener);
              return;
            }
          }
        });
        TextView localTextView1 = (TextView)findViewById(2131165194);
        if (localTextView1 != null)
          localTextView1.setText(paramString2);
        TextView localTextView2 = (TextView)findViewById(2131165193);
        if (localTextView2 != null)
          localTextView2.setText(paramString1);
        ImageView localImageView = (ImageView)findViewById(2131165192);
        if (localImageView != null)
          localImageView.setImageResource(getRandomIcon());
      }
      return;
      label218: localButton.setOnClickListener(new View.OnClickListener(paramShowAdMethod, paramTabViewOnLoadListener)
      {
        public void onClick(View paramView)
        {
          this.val$showAdMethod.run(LaunchActivity.this.getActivity());
          BootReceiver.showTabViewInterstitial(LaunchActivity.this.getActivity(), this.val$tabViewOnLoadListener);
        }
      });
    }
    catch (Exception localException)
    {
      str3 = null;
      break label54:
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.wifi.hacker.cracker.LaunchActivity
 * JD-Core Version:    0.5.3
 */