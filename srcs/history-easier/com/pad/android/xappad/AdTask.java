package com.pad.android.xappad;

import android.content.Context;
import android.os.AsyncTask;
import org.json.JSONObject;

public class AdTask extends AsyncTask
{
  private AdController a;
  private Context b;
  private String c;
  private String d;
  private String e = "App";
  private boolean f = false;
  private JSONObject g;

  public AdTask(AdController paramAdController, Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    this.a = paramAdController;
    this.b = paramContext;
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramString3;
  }

  protected void onCancelled()
  {
    super.onCancelled();
  }

  protected void onPreExecute()
  {
    super.onPreExecute();
  }

  public void setUseLocation(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.xappad.AdTask
 * JD-Core Version:    0.5.3
 */