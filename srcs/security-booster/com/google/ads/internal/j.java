package com.google.ads.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.gesture.Gesture;
import android.gesture.GestureOverlayView;
import android.gesture.GestureOverlayView.OnGesturePerformedListener;
import android.gesture.GestureStore;
import android.gesture.Prediction;
import android.view.ViewGroup;
import com.google.ads.util.b;
import com.google.ads.util.c;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

@TargetApi(4)
public class j
{
  protected static final byte[] a = c.a("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");

  public static ViewGroup a(Activity paramActivity, d paramd)
  {
    try
    {
      GestureStore localGestureStore = new GestureStore();
      localGestureStore.load(new ByteArrayInputStream(a));
      GestureOverlayView localGestureOverlayView = new GestureOverlayView(paramActivity);
      localGestureOverlayView.setGestureStrokeType(0);
      localGestureOverlayView.setEventsInterceptionEnabled(false);
      localGestureOverlayView.setGestureVisible(false);
      localGestureOverlayView.addOnGesturePerformedListener(new a(paramActivity, paramd, localGestureStore));
      return localGestureOverlayView;
    }
    catch (IOException localIOException)
    {
      b.a("Gestures disabled: Error loading gesture data.", localIOException);
    }
    return null;
  }

  public static class a
    implements GestureOverlayView.OnGesturePerformedListener
  {
    private final GestureStore a;
    private Activity b;
    private d c;

    public a(Activity paramActivity, d paramd, GestureStore paramGestureStore)
    {
      this.b = paramActivity;
      this.c = paramd;
      this.a = paramGestureStore;
    }

    public void onGesturePerformed(GestureOverlayView paramGestureOverlayView, Gesture paramGesture)
    {
      ArrayList localArrayList = this.a.recognize(paramGesture);
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        Prediction localPrediction = (Prediction)localIterator.next();
        b.a("Gesture: '" + localPrediction.name + "' = " + localPrediction.score);
      }
      if (localArrayList.size() == 0)
        b.a("Gesture: No remotely reasonable predictions");
      do
        return;
      while ((((Prediction)localArrayList.get(0)).score <= 2.0D) || (!("debug".equals(((Prediction)localArrayList.get(0)).name))) || (this.c == null));
      if (this.c.c() == null);
      for (String str = "[No diagnostics available]"; ; str = this.c.c())
      {
        new AlertDialog.Builder(this.b).setMessage(str).setTitle("Ad Information").setPositiveButton("Share", new DialogInterface.OnClickListener(str)
        {
          public void onClick(DialogInterface paramDialogInterface, int paramInt)
          {
            j.a.a(j.a.this).startActivity(Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", this.a), "Share via"));
          }
        }).setNegativeButton("Close", new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramDialogInterface, int paramInt)
          {
          }
        }).create().show();
        return;
      }
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.google.ads.internal.j
 * JD-Core Version:    0.5.3
 */