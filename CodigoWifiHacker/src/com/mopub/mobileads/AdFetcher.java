package com.mopub.mobileads;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.concurrent.Executor;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public class AdFetcher
{
  private static final int HTTP_CLIENT_TIMEOUT_MILLISECONDS = 10000;
  private static final int VERSION_CODE_ICE_CREAM_SANDWICH = 14;
  private AdView mAdView;
  private AdFetchTask mCurrentTask;
  private long mCurrentTaskId;
  private long mLastCompletedTaskId;
  private String mUserAgent;

  public AdFetcher(AdView paramAdView, String paramString)
  {
    this.mAdView = paramAdView;
    this.mUserAgent = paramString;
    this.mCurrentTaskId = -1L;
    this.mLastCompletedTaskId = -1L;
  }

  private void markTaskCompleted(long paramLong)
  {
    if (paramLong <= this.mLastCompletedTaskId)
      return;
    this.mLastCompletedTaskId = paramLong;
  }

  public void cancelFetch()
  {
    if (this.mCurrentTask == null)
      return;
    Log.i("MoPub", "Canceling fetch ad for task #" + this.mCurrentTaskId);
    this.mCurrentTask.cancel(true);
  }

  public void cleanup()
  {
    cancelFetch();
    this.mAdView = null;
    this.mUserAgent = "";
  }

  public void fetchAdForUrl(String paramString)
  {
    this.mCurrentTaskId = (1L + this.mCurrentTaskId);
    Log.i("MoPub", "Fetching ad for task #" + this.mCurrentTaskId);
    if (this.mCurrentTask != null)
      this.mCurrentTask.cancel(true);
    this.mCurrentTask = new AdFetchTask(this, null);
    Class[] arrayOfClass;
    String[] arrayOfString;
    if (Build.VERSION.SDK_INT >= 14)
    {
      arrayOfClass = new Class[] { Executor.class, [Ljava.lang.Object.class };
      arrayOfString = new String[] { paramString };
    }
    try
    {
      Method localMethod = AdFetchTask.class.getMethod("executeOnExecutor", arrayOfClass);
      Field localField = AdFetchTask.class.getField("THREAD_POOL_EXECUTOR");
      AdFetchTask localAdFetchTask = this.mCurrentTask;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = localField.get(AdFetchTask.class);
      arrayOfObject[1] = arrayOfString;
      localMethod.invoke(localAdFetchTask, arrayOfObject);
      label158: return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.d("MoPub", "Error executing AdFetchTask on ICS+, method not found.");
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.d("MoPub", "Error executing AdFetchTask on ICS+, thrown by executeOnExecutor.");
    }
    catch (Exception localException)
    {
      Log.d("MoPub", "Error executing AdFetchTask on ICS+: " + localException.toString());
      break label158:
      this.mCurrentTask.execute(new String[] { paramString });
    }
  }

  private static abstract class AdFetchResult
  {
    WeakReference<AdView> mWeakAdView;

    public AdFetchResult(AdView paramAdView)
    {
      this.mWeakAdView = new WeakReference(paramAdView);
    }

    abstract void cleanup();

    abstract void execute();
  }

  private static class AdFetchTask extends AsyncTask<String, Void, AdFetcher.AdFetchResult>
  {
    private AdFetcher mAdFetcher;
    private AdView mAdView;
    private Exception mException;
    private HttpClient mHttpClient;
    private long mTaskId;
    private int mTimeoutMilliseconds = 10000;

    private AdFetchTask(AdFetcher paramAdFetcher)
    {
      this.mAdFetcher = paramAdFetcher;
      this.mAdView = this.mAdFetcher.mAdView;
      this.mHttpClient = getDefaultHttpClient();
      this.mTaskId = this.mAdFetcher.mCurrentTaskId;
    }

    private AdFetcher.AdFetchResult fetch(String paramString)
      throws Exception
    {
      HttpGet localHttpGet = new HttpGet(paramString);
      localHttpGet.addHeader("User-Agent", this.mAdFetcher.mUserAgent);
      boolean bool = isCancelled();
      Object localObject = null;
      if (bool);
      while (true)
      {
        return localObject;
        if ((this.mAdView == null) || (this.mAdView.isDestroyed()))
        {
          Log.d("MoPub", "Error loading ad: AdView has already been GCed or destroyed.");
          localObject = null;
        }
        HttpResponse localHttpResponse = this.mHttpClient.execute(localHttpGet);
        HttpEntity localHttpEntity = localHttpResponse.getEntity();
        if ((localHttpResponse == null) || (localHttpEntity == null) || (localHttpResponse.getStatusLine().getStatusCode() != 200))
        {
          Log.d("MoPub", "MoPub server returned invalid response.");
          localObject = null;
        }
        this.mAdView.configureAdViewUsingHeadersFromHttpResponse(localHttpResponse);
        Header localHeader1 = localHttpResponse.getFirstHeader("X-Adtype");
        if ((localHeader1 == null) || (localHeader1.getValue().equals("clear")))
        {
          Log.d("MoPub", "MoPub server returned no ad.");
          localObject = null;
        }
        if (localHeader1.getValue().equals("custom"))
        {
          Log.i("MoPub", "Performing custom event.");
          Header localHeader4 = localHttpResponse.getFirstHeader("X-Customselector");
          localObject = new AdFetcher.PerformCustomEventTaskResult(this.mAdView, localHeader4);
        }
        if (localHeader1.getValue().equals("mraid"))
        {
          Log.i("MoPub", "Loading mraid ad");
          HashMap localHashMap2 = new HashMap();
          localHashMap2.put("X-Adtype", localHeader1.getValue());
          localHashMap2.put("X-Nativeparams", httpEntityToString(localHttpEntity));
          localObject = new AdFetcher.LoadNativeAdTaskResult(this.mAdView, localHashMap2, null);
        }
        if (!(localHeader1.getValue().equals("html")))
        {
          Log.i("MoPub", "Loading native ad");
          HashMap localHashMap1 = new HashMap();
          localHashMap1.put("X-Adtype", localHeader1.getValue());
          Header localHeader2 = localHttpResponse.getFirstHeader("X-Nativeparams");
          localHashMap1.put("X-Nativeparams", "{}");
          if (localHeader2 != null)
            localHashMap1.put("X-Nativeparams", localHeader2.getValue());
          Header localHeader3 = localHttpResponse.getFirstHeader("X-Fulladtype");
          if (localHeader3 != null)
            localHashMap1.put("X-Fulladtype", localHeader3.getValue());
          localObject = new AdFetcher.LoadNativeAdTaskResult(this.mAdView, localHashMap1, null);
        }
        String str = httpEntityToString(localHttpEntity);
        localObject = new AdFetcher.LoadHtmlAdTaskResult(this.mAdView, str, null);
      }
    }

    private DefaultHttpClient getDefaultHttpClient()
    {
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      if (this.mTimeoutMilliseconds > 0)
      {
        HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, this.mTimeoutMilliseconds);
        HttpConnectionParams.setSoTimeout(localBasicHttpParams, this.mTimeoutMilliseconds);
      }
      HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
      return new DefaultHttpClient(localBasicHttpParams);
    }

    private String httpEntityToString(HttpEntity paramHttpEntity)
      throws IOException
    {
      InputStream localInputStream = paramHttpEntity.getContent();
      int i = 0;
      StringBuffer localStringBuffer = new StringBuffer();
      byte[] arrayOfByte = new byte[4096];
      while (i != -1)
      {
        localStringBuffer.append(new String(arrayOfByte, 0, i));
        i = localInputStream.read(arrayOfByte);
      }
      localInputStream.close();
      return localStringBuffer.toString();
    }

    private boolean isMostCurrentTask()
    {
      if (this.mTaskId >= this.mAdFetcher.mLastCompletedTaskId);
      for (int i = 1; ; i = 0)
        return i;
    }

    private void releaseResources()
    {
      this.mAdFetcher = null;
      if (this.mHttpClient != null)
      {
        ClientConnectionManager localClientConnectionManager = this.mHttpClient.getConnectionManager();
        if (localClientConnectionManager != null)
          localClientConnectionManager.shutdown();
        this.mHttpClient = null;
      }
      this.mException = null;
    }

    protected AdFetcher.AdFetchResult doInBackground(String[] paramArrayOfString)
    {
      AdFetcher.AdFetchResult localAdFetchResult1;
      try
      {
        AdFetcher.AdFetchResult localAdFetchResult2 = fetch(paramArrayOfString[0]);
        localAdFetchResult1 = localAdFetchResult2;
        return localAdFetchResult1;
      }
      catch (Exception localException)
      {
        this.mException = localException;
        localAdFetchResult1 = null;
      }
    }

    protected void onCancelled()
    {
      if (!(isMostCurrentTask()))
      {
        Log.d("MoPub", "Ad response is stale.");
        releaseResources();
      }
      while (true)
      {
        return;
        Log.d("MoPub", "Ad loading was cancelled.");
        if (this.mException != null)
          Log.d("MoPub", "Exception caught while loading ad: " + this.mException);
        this.mAdFetcher.markTaskCompleted(this.mTaskId);
        releaseResources();
      }
    }

    protected void onPostExecute(AdFetcher.AdFetchResult paramAdFetchResult)
    {
      if (!(isMostCurrentTask()))
      {
        Log.d("MoPub", "Ad response is stale.");
        releaseResources();
      }
      while (true)
      {
        label20: return;
        if ((this.mAdView != null) && (!(this.mAdView.isDestroyed())))
          break;
        if (paramAdFetchResult != null)
          paramAdFetchResult.cleanup();
        this.mAdFetcher.markTaskCompleted(this.mTaskId);
        releaseResources();
      }
      if (paramAdFetchResult == null)
      {
        if (this.mException != null)
          Log.d("MoPub", "Exception caught while loading ad: " + this.mException);
        this.mAdView.loadFailUrl();
      }
      while (true)
      {
        this.mAdFetcher.markTaskCompleted(this.mTaskId);
        releaseResources();
        break label20:
        paramAdFetchResult.execute();
        paramAdFetchResult.cleanup();
      }
    }
  }

  private static class LoadHtmlAdTaskResult extends AdFetcher.AdFetchResult
  {
    protected String mData;

    private LoadHtmlAdTaskResult(AdView paramAdView, String paramString)
    {
      super(paramAdView);
      this.mData = paramString;
    }

    public void cleanup()
    {
      this.mData = null;
    }

    public void execute()
    {
      AdView localAdView = (AdView)this.mWeakAdView.get();
      if ((localAdView == null) || (localAdView.isDestroyed()));
      while (true)
      {
        return;
        if (this.mData == null)
          continue;
        localAdView.setResponseString(this.mData);
        localAdView.loadDataWithBaseURL("http://ads.mopub.com/", this.mData, "text/html", "utf-8", null);
      }
    }
  }

  private static class LoadNativeAdTaskResult extends AdFetcher.AdFetchResult
  {
    protected HashMap<String, String> mParamsHash;

    private LoadNativeAdTaskResult(AdView paramAdView, HashMap<String, String> paramHashMap)
    {
      super(paramAdView);
      this.mParamsHash = paramHashMap;
    }

    public void cleanup()
    {
      this.mParamsHash = null;
    }

    public void execute()
    {
      AdView localAdView = (AdView)this.mWeakAdView.get();
      if ((localAdView == null) || (localAdView.isDestroyed()));
      while (true)
      {
        return;
        localAdView.setIsLoading(false);
        localAdView.mMoPubView.loadNativeSDK(this.mParamsHash);
      }
    }
  }

  private static class PerformCustomEventTaskResult extends AdFetcher.AdFetchResult
  {
    protected Header mHeader;

    public PerformCustomEventTaskResult(AdView paramAdView, Header paramHeader)
    {
      super(paramAdView);
      this.mHeader = paramHeader;
    }

    public void cleanup()
    {
      this.mHeader = null;
    }

    public void execute()
    {
      AdView localAdView = (AdView)this.mWeakAdView.get();
      if ((localAdView == null) || (localAdView.isDestroyed()));
      while (true)
      {
        return;
        localAdView.setIsLoading(false);
        MoPubView localMoPubView = localAdView.mMoPubView;
        if (this.mHeader == null)
        {
          Log.i("MoPub", "Couldn't call custom method because the server did not specify one.");
          localMoPubView.adFailed();
        }
        String str = this.mHeader.getValue();
        Log.i("MoPub", "Trying to call method named " + str);
        Activity localActivity = localMoPubView.getActivity();
        try
        {
          localActivity.getClass().getMethod(str, new Class[] { MoPubView.class }).invoke(localActivity, new Object[] { localMoPubView });
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
          Log.d("MoPub", "Couldn't perform custom method named " + str + "(MoPubView view) because your activity class has no such method");
        }
        catch (Exception localException)
        {
          Log.d("MoPub", "Couldn't perform custom method named " + str);
        }
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.AdFetcher
 * JD-Core Version:    0.5.3
 */