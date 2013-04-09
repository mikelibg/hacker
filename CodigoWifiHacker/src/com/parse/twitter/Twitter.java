package com.parse.twitter;

import android.app.ProgressDialog;
import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.webkit.CookieSyncManager;
import com.parse.internal.AsyncCallback;
import com.parse.oauth.OAuth1FlowDialog;
import com.parse.oauth.OAuth1FlowDialog.FlowResultHandler;
import com.parse.oauth.OAuth1FlowException;
import com.parse.signpost.OAuthConsumer;
import com.parse.signpost.OAuthProvider;
import com.parse.signpost.commonshttp.CommonsHttpOAuthConsumer;
import com.parse.signpost.commonshttp.CommonsHttpOAuthProvider;
import com.parse.signpost.http.HttpParameters;
import org.apache.http.client.methods.HttpUriRequest;

public class Twitter
{
  static final String ACCESS_TOKEN_URL = "https://api.twitter.com/oauth/access_token";
  static final String AUTHORIZE_URL = "https://api.twitter.com/oauth/authorize";
  private static final String CALLBACK_URL = "twitter-oauth://complete";
  private static final OAuthProvider PROVIDER = new CommonsHttpOAuthProvider("https://api.twitter.com/oauth/request_token", "https://api.twitter.com/oauth/access_token", "https://api.twitter.com/oauth/authorize");
  static final String REQUEST_TOKEN_URL = "https://api.twitter.com/oauth/request_token";
  private static final String SCREEN_NAME_PARAM = "screen_name";
  private static final String USER_ID_PARAM = "user_id";
  private static final String VERIFIER_PARAM = "oauth_verifier";
  private String authToken;
  private String authTokenSecret;
  private String consumerKey;
  private String consumerSecret;
  private String screenName;
  private String userId;

  public Twitter(String paramString1, String paramString2)
  {
    this.consumerKey = paramString1;
    this.consumerSecret = paramString2;
  }

  public void authorize(Context paramContext, AsyncCallback paramAsyncCallback)
  {
    if ((getConsumerKey() == null) || (getConsumerKey().length() == 0) || (getConsumerSecret() == null) || (getConsumerSecret().length() == 0))
      throw new IllegalStateException("Twitter must be initialized with a consumer key and secret before authorization.");
    CommonsHttpOAuthConsumer localCommonsHttpOAuthConsumer = new CommonsHttpOAuthConsumer(getConsumerKey(), getConsumerSecret());
    ProgressDialog localProgressDialog = new ProgressDialog(paramContext);
    localProgressDialog.setMessage("Loading...");
    new AsyncTask(paramAsyncCallback, paramContext, localCommonsHttpOAuthConsumer, localProgressDialog)
    {
      private Throwable error;

      protected String doInBackground(Void[] paramArrayOfVoid)
      {
        String str1;
        try
        {
          String str2 = Twitter.PROVIDER.retrieveRequestToken(this.val$consumer, "twitter-oauth://complete");
          str1 = str2;
          return str1;
        }
        catch (Throwable localThrowable)
        {
          this.error = localThrowable;
          str1 = null;
        }
      }

      protected void onPostExecute(String paramString)
      {
        super.onPostExecute(paramString);
        while (true)
          try
          {
            if (this.error != null)
            {
              this.val$callback.onFailure(this.error);
              return;
            }
            CookieSyncManager.createInstance(this.val$context);
            new OAuth1FlowDialog(this.val$context, paramString, "twitter-oauth://complete", "api.twitter", new OAuth1FlowDialog.FlowResultHandler()
            {
              public void onCancel()
              {
                Twitter.1.this.val$callback.onCancel();
              }

              public void onComplete(String paramString)
              {
                CookieSyncManager.getInstance().sync();
                String str = Uri.parse(paramString).getQueryParameter("oauth_verifier");
                if (str == null)
                  Twitter.1.this.val$callback.onCancel();
                while (true)
                {
                  return;
                  new AsyncTask(str)
                  {
                    private Throwable error;

                    protected HttpParameters doInBackground(Void[] paramArrayOfVoid)
                    {
                      try
                      {
                        Twitter.PROVIDER.retrieveAccessToken(Twitter.1.this.val$consumer, this.val$verifier);
                        return Twitter.PROVIDER.getResponseParameters();
                      }
                      catch (Throwable localThrowable)
                      {
                        this.error = localThrowable;
                      }
                    }

                    protected void onPostExecute(HttpParameters paramHttpParameters)
                    {
                      super.onPostExecute(paramHttpParameters);
                      while (true)
                        try
                        {
                          if (this.error != null)
                          {
                            Twitter.1.this.val$callback.onFailure(this.error);
                            return;
                          }
                        }
                        finally
                        {
                          Twitter.1.this.val$progress.dismiss();
                        }
                    }

                    protected void onPreExecute()
                    {
                      super.onPreExecute();
                      Twitter.1.this.val$progress.show();
                    }
                  }
                  .execute(new Void[0]);
                }
              }

              public void onError(int paramInt, String paramString1, String paramString2)
              {
                Twitter.1.this.val$callback.onFailure(new OAuth1FlowException(paramInt, paramString1, paramString2));
              }
            }).show();
          }
          finally
          {
            this.val$progress.dismiss();
          }
      }

      protected void onPreExecute()
      {
        super.onPreExecute();
        this.val$progress.show();
      }
    }
    .execute(new Void[0]);
  }

  public String getAuthToken()
  {
    return this.authToken;
  }

  public String getAuthTokenSecret()
  {
    return this.authTokenSecret;
  }

  public String getConsumerKey()
  {
    return this.consumerKey;
  }

  public String getConsumerSecret()
  {
    return this.consumerSecret;
  }

  public String getScreenName()
  {
    return this.screenName;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setAuthToken(String paramString)
  {
    this.authToken = paramString;
  }

  public void setAuthTokenSecret(String paramString)
  {
    this.authTokenSecret = paramString;
  }

  public void setConsumerKey(String paramString)
  {
    this.consumerKey = paramString;
  }

  public void setConsumerSecret(String paramString)
  {
    this.consumerSecret = paramString;
  }

  public void setScreenName(String paramString)
  {
    this.screenName = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }

  public void signRequest(HttpUriRequest paramHttpUriRequest)
  {
    CommonsHttpOAuthConsumer localCommonsHttpOAuthConsumer = new CommonsHttpOAuthConsumer(getConsumerKey(), getConsumerSecret());
    localCommonsHttpOAuthConsumer.setTokenWithSecret(getAuthToken(), getAuthTokenSecret());
    try
    {
      localCommonsHttpOAuthConsumer.sign(paramHttpUriRequest);
      return;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.twitter.Twitter
 * JD-Core Version:    0.5.3
 */