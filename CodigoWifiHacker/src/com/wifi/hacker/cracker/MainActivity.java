package com.wifi.hacker.cracker;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

public class MainActivity extends Activity
{
  String[] messages = { "Checking for root", "Switching Wifi to Monitor Mode\nairmon-ng start ${INTERFACE}\n", "Retrieving interface MAC Address", "Starting airodump", "Starting Packet Capture", "Performing Fragmentation Attack", "aireplay-ng -1 0 -a ${BSSID} -h ${MACADDRESS} ${INTERFACE}", "aireplay-ng -5 -b ${BSSID} -h ${MACADDRESS} ${INTERFACE}", "packetforge-ng -0 -a ${BSSID} -h ${MACADDRESS} *.xor -w arp-packet ${INTERFACE}", "aireplay-ng -2 -r arp-packet ${INTERFACE}" };

  public Activity getActivity()
  {
    return this;
  }

  public ArrayList<NetworkDetails> getNetworkDetails()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = ((WifiManager)getSystemService("wifi")).getScanResults().iterator();
    if (localIterator.hasNext())
    {
      label26: ScanResult localScanResult = (ScanResult)localIterator.next();
      if (localScanResult.level >= -60);
      for (int i = 5; ; i = 1)
        while (true)
        {
          String str = "Encryption: " + localScanResult.capabilities;
          int j = str.indexOf("]");
          if (j != -1)
            str = str.substring(0, j + 1);
          localArrayList.add(new NetworkDetails(localScanResult.SSID, str, i));
          break label26:
          if (localScanResult.level >= -70)
            i = 4;
          if (localScanResult.level >= -80)
            i = 3;
          if (localScanResult.level < -90)
            break;
          i = 2;
        }
    }
    return localArrayList;
  }

  public int getRandomIntBetween(int paramInt1, int paramInt2)
  {
    return (paramInt1 + new Random().nextInt(1 + paramInt2 - paramInt1));
  }

  public ArrayList<String> getSavedSSIDs()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = ((WifiManager)getSystemService("wifi")).getConfiguredNetworks().iterator();
    while (localIterator.hasNext())
      localArrayList.add(((WifiConfiguration)localIterator.next()).SSID);
    return localArrayList;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903047);
    ListView localListView = (ListView)findViewById(2131165208);
    localListView.setAdapter(new ItemListBaseAdapter(this, getNetworkDetails()));
    localListView.setOnItemClickListener(new AdapterView.OnItemClickListener(localListView)
    {
      public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
      {
        NetworkDetails localNetworkDetails = (NetworkDetails)this.val$lv.getItemAtPosition(paramInt);
        new MainActivity.CrackTask(MainActivity.this, MainActivity.this.getActivity(), localNetworkDetails.networkName).execute(new String[0]);
      }
    });
  }

  public String toHex(String paramString)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = new BigInteger(paramString.getBytes());
    return String.format("%040x", arrayOfObject);
  }

  public class CrackTask extends AsyncTask<String, Void, Boolean>
  {
    private int i = 0;
    private Activity mActivity;
    private ProgressDialog mDialog;
    private String mNetworkName;

    public CrackTask(Activity paramActivity, String paramString)
    {
      this.mNetworkName = paramString;
      this.mActivity = paramActivity;
      this.mDialog = new ProgressDialog(paramActivity);
      this.mDialog.setProgressStyle(1);
      this.mDialog.setCancelable(false);
      this.mDialog.setMax(100);
      this.mDialog.setMessage("Here you can set a message");
    }

    protected Boolean doInBackground(String[] paramArrayOfString)
    {
      int j = 0;
      Boolean localBoolean1;
      try
      {
        while (j < MainActivity.this.messages.length)
        {
          publishProgress(new Void[0]);
          Thread.sleep(MainActivity.this.getRandomIntBetween(600, 1200));
          ++j;
        }
        Boolean localBoolean2 = Boolean.valueOf(true);
        localBoolean1 = localBoolean2;
        return localBoolean1;
      }
      catch (Exception localException)
      {
        localBoolean1 = Boolean.valueOf(false);
      }
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      if (this.mDialog.isShowing())
        this.mDialog.dismiss();
      AlertDialog localAlertDialog = new AlertDialog.Builder(MainActivity.this.getActivity()).create();
      localAlertDialog.setTitle("Wifi Key for " + this.mNetworkName + " found!");
      localAlertDialog.setMessage(MainActivity.this.toHex(this.mNetworkName).replaceFirst("^0+(?!$)", "").toUpperCase());
      localAlertDialog.setCancelable(false);
      localAlertDialog.setButton("Close", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          if (BootReceiver.hasRatedApp(MainActivity.this.getActivity()))
            return;
          BootReceiver.showRatePopup(MainActivity.this.getActivity(), false);
        }
      });
      localAlertDialog.show();
    }

    protected void onPreExecute()
    {
      this.mDialog.setMessage("Progress start");
      this.mDialog.show();
    }

    protected void onProgressUpdate(Void[] paramArrayOfVoid)
    {
      super.onProgressUpdate(paramArrayOfVoid);
      if (this.i >= MainActivity.this.messages.length)
        return;
      String str = MainActivity.this.messages[this.i] + "...";
      int j = 100 * this.i / MainActivity.this.messages.length;
      this.mDialog.setProgress(j);
      this.mDialog.setMessage(str);
      this.i = (1 + this.i);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.wifi.hacker.cracker.MainActivity
 * JD-Core Version:    0.5.3
 */