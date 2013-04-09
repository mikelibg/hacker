package com.lookout.addetector;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.lookout.c.h;
import java.util.ArrayList;

public class ScannerMainActivity extends Activity
{
  protected boolean a = false;
  private h b;
  private PackageManager c;
  private AlertDialog d;
  private r e = null;
  private ArrayList f;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903046);
    x.b();
    this.b = x.a();
    this.c = getPackageManager();
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2130968580);
    localBuilder.setMessage(2130968581);
    localBuilder.setPositiveButton(17039370, null);
    this.d = localBuilder.create();
    findViewById(2131165225).setOnClickListener(new o(this));
    findViewById(2131165224).setOnClickListener(new p(this));
    findViewById(2131165222).setOnClickListener(new q(this));
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (paramMenu == null)
      return false;
    paramMenu.clear();
    paramMenu.add(0, 0, 0, 2130968579).setIcon(17301569);
    return super.onCreateOptionsMenu(paramMenu);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      return false;
    case 0:
    }
    this.d.show();
    ((TextView)this.d.findViewById(16908299)).setMovementMethod(LinkMovementMethod.getInstance());
    return true;
  }

  public void onResume()
  {
    Log.d("AdNetworkScanner", "onResume");
    this.a = false;
    super.onResume();
  }

  public void setContentView(int paramInt)
  {
    super.setContentView(2130903044);
    getLayoutInflater().inflate(paramInt, (ViewGroup)findViewById(2131165219), true);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.ScannerMainActivity
 * JD-Core Version:    0.5.3
 */