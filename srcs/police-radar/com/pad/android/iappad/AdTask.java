package com.pad.android.iappad;

import android.app.Activity;
import android.os.AsyncTask;
import com.pad.android.util.AdLog;
import java.util.List;
import org.json.JSONObject;

public class AdTask extends AsyncTask
{
  private AdController a;
  private Activity b;
  private String c;
  private String d;
  private List e;
  private JSONObject f;
  private boolean g = false;
  private boolean h = false;

  public AdTask(AdController paramAdController, Activity paramActivity, String paramString1, String paramString2)
  {
    this.a = paramAdController;
    this.b = paramActivity;
    this.c = paramString1;
    this.h = paramString2.equals("audio");
  }

  protected void onCancelled()
  {
    AdLog.d("LBAdController", "AdTask cancelled");
    super.onCancelled();
  }

  protected void onPreExecute()
  {
    super.onPreExecute();
  }

  public void setSubId(String paramString)
  {
    this.d = paramString;
  }

  public void setTokens(List paramList)
  {
    this.e = paramList;
  }

  public void setUseLocation(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.pad.android.iappad.AdTask
 * JD-Core Version:    0.5.3
 */