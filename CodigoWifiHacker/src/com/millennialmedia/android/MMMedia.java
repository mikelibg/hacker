package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;
import android.os.Environment;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;

class MMMedia extends MMJSObject
{
  private Activity tmpActivity;
  private File tmpFile;

  private boolean isCameraAvailable()
  {
    Context localContext = (Context)this.contextRef.get();
    int i = 0;
    if (localContext != null)
    {
      int j = localContext.getPackageManager().checkPermission("android.permission.CAMERA", localContext.getPackageName());
      i = 0;
      if (j == 0)
      {
        Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
        int k = localContext.getPackageManager().queryIntentActivities(localIntent, 65536).size();
        i = 0;
        if (k > 0)
          i = 1;
      }
    }
    return i;
  }

  private boolean isPictureChooserAvailable()
  {
    Context localContext = (Context)this.contextRef.get();
    int i = 0;
    if (localContext != null)
    {
      Intent localIntent = new Intent();
      localIntent.setType("image/*");
      localIntent.setAction("android.intent.action.GET_CONTENT");
      int j = localContext.getPackageManager().queryIntentActivities(localIntent, 65536).size();
      i = 0;
      if (j > 0)
        i = 1;
    }
    return i;
  }

  public MMJSResponse availableSourceTypes(HashMap<String, String> paramHashMap)
  {
    JSONArray localJSONArray = new JSONArray();
    if (isCameraAvailable())
      localJSONArray.put("Camera");
    if (isPictureChooserAvailable())
      localJSONArray.put("Photo Library");
    MMJSResponse localMMJSResponse = new MMJSResponse();
    localMMJSResponse.result = 1;
    localMMJSResponse.response = localJSONArray;
    return localMMJSResponse;
  }

  public MMJSResponse getPicture(HashMap<String, String> paramHashMap)
  {
    return null;
  }

  public MMJSResponse isSourceTypeAvailable(HashMap<String, String> paramHashMap)
  {
    String str = (String)paramHashMap.get("sourceType");
    if (str != null)
      if ((!(str.equalsIgnoreCase("Camera"))) || (!(isCameraAvailable())));
    for (MMJSResponse localMMJSResponse = MMJSResponse.responseWithSuccess(); ; localMMJSResponse = null)
      while (true)
      {
        return localMMJSResponse;
        if ((!(str.equalsIgnoreCase("Photo Library"))) || (!(isPictureChooserAvailable())))
          break;
        localMMJSResponse = MMJSResponse.responseWithSuccess();
      }
  }

  public MMJSResponse playAudio(HashMap<String, String> paramHashMap)
  {
    Activity localActivity = (Activity)this.contextRef.get();
    String str = (String)paramHashMap.get("path");
    File localFile;
    if ((localActivity != null) && (str != null))
      if (Environment.getExternalStorageState().equals("mounted"))
      {
        localFile = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + ".mmsyscache" + "/" + "creativecache" + "/" + str);
        label97: if (!(localFile.exists()))
          break label177;
        MediaPlayer localMediaPlayer = MediaPlayer.create(localActivity, Uri.fromFile(localFile));
        localMediaPlayer.start();
        localMediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener()
        {
          public void onCompletion(MediaPlayer paramMediaPlayer)
          {
            paramMediaPlayer.release();
          }
        });
      }
    for (MMJSResponse localMMJSResponse = MMJSResponse.responseWithSuccess(); ; localMMJSResponse = null)
    {
      return localMMJSResponse;
      localFile = new File(localActivity.getCacheDir(), "creativecache/" + str);
      label177: break label97:
    }
  }

  public MMJSResponse playVideo(HashMap<String, String> paramHashMap)
  {
    return null;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMMedia
 * JD-Core Version:    0.5.3
 */