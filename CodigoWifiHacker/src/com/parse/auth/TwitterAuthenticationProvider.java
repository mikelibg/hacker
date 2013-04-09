package com.parse.auth;

import android.content.Context;
import com.parse.internal.AsyncCallback;
import com.parse.twitter.Twitter;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

public class TwitterAuthenticationProvider
  implements ParseAuthenticationProvider
{
  private static final String AUTH_TOKEN_KEY = "auth_token";
  private static final String AUTH_TOKEN_SECRET_KEY = "auth_token_secret";
  private static final String CONSUMER_KEY_KEY = "consumer_key";
  private static final String CONSUMER_SECRET_KEY = "consumer_secret";
  private static final String ID_KEY = "id";
  private static final String SCREEN_NAME_KEY = "screen_name";
  private WeakReference<Context> baseContext;
  private ParseAuthenticationProvider.ParseAuthenticationCallback currentOperationCallback;
  private final Twitter twitter;

  public TwitterAuthenticationProvider(Twitter paramTwitter)
  {
    this.twitter = paramTwitter;
  }

  private void handleCancel(ParseAuthenticationProvider.ParseAuthenticationCallback paramParseAuthenticationCallback)
  {
    if ((this.currentOperationCallback != paramParseAuthenticationCallback) || (paramParseAuthenticationCallback == null));
    while (true)
    {
      return;
      try
      {
        paramParseAuthenticationCallback.onCancel();
        this.currentOperationCallback = null;
      }
      finally
      {
        this.currentOperationCallback = null;
      }
    }
  }

  public void authenticate(ParseAuthenticationProvider.ParseAuthenticationCallback paramParseAuthenticationCallback)
  {
    if (this.currentOperationCallback != null)
      cancel();
    this.currentOperationCallback = paramParseAuthenticationCallback;
    if (this.baseContext == null);
    for (Context localContext = null; localContext == null; localContext = (Context)this.baseContext.get())
      throw new IllegalStateException("Context must be non-null for Twitter authentication to proceed.");
    this.twitter.authorize(localContext, new AsyncCallback(paramParseAuthenticationCallback)
    {
      public void onCancel()
      {
        TwitterAuthenticationProvider.this.handleCancel(this.val$callback);
      }

      public void onFailure(Throwable paramThrowable)
      {
        if (TwitterAuthenticationProvider.this.currentOperationCallback != this.val$callback);
        while (true)
        {
          return;
          try
          {
            this.val$callback.onError(paramThrowable);
            TwitterAuthenticationProvider.access$102(TwitterAuthenticationProvider.this, null);
          }
          finally
          {
            TwitterAuthenticationProvider.access$102(TwitterAuthenticationProvider.this, null);
          }
        }
      }

      public void onSuccess(Object paramObject)
      {
        if (TwitterAuthenticationProvider.this.currentOperationCallback != this.val$callback);
        while (true)
        {
          return;
          try
          {
            JSONObject localJSONObject = TwitterAuthenticationProvider.this.getAuthData(TwitterAuthenticationProvider.this.twitter.getUserId(), TwitterAuthenticationProvider.this.twitter.getScreenName(), TwitterAuthenticationProvider.this.twitter.getAuthToken(), TwitterAuthenticationProvider.this.twitter.getAuthTokenSecret());
            this.val$callback.onSuccess(localJSONObject);
          }
          catch (JSONException localJSONException)
          {
            this.val$callback.onError(localJSONException);
          }
          finally
          {
            TwitterAuthenticationProvider.access$102(TwitterAuthenticationProvider.this, null);
          }
        }
      }
    });
  }

  public void cancel()
  {
    handleCancel(this.currentOperationCallback);
  }

  public void deauthenticate()
  {
    this.twitter.setAuthToken(null);
    this.twitter.setAuthTokenSecret(null);
    this.twitter.setScreenName(null);
    this.twitter.setUserId(null);
  }

  public JSONObject getAuthData(String paramString1, String paramString2, String paramString3, String paramString4)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("auth_token", paramString3);
    localJSONObject.put("auth_token_secret", paramString4);
    localJSONObject.put("id", paramString1);
    localJSONObject.put("screen_name", paramString2);
    localJSONObject.put("consumer_key", this.twitter.getConsumerKey());
    localJSONObject.put("consumer_secret", this.twitter.getConsumerSecret());
    return localJSONObject;
  }

  public String getAuthType()
  {
    return "twitter";
  }

  public Twitter getTwitter()
  {
    return this.twitter;
  }

  public boolean restoreAuthentication(JSONObject paramJSONObject)
  {
    int i = 1;
    if (paramJSONObject == null)
    {
      this.twitter.setAuthToken(null);
      this.twitter.setAuthTokenSecret(null);
      this.twitter.setScreenName(null);
      this.twitter.setUserId(null);
    }
    while (true)
    {
      return i;
      try
      {
        this.twitter.setAuthToken(paramJSONObject.getString("auth_token"));
        this.twitter.setAuthTokenSecret(paramJSONObject.getString("auth_token_secret"));
        this.twitter.setUserId(paramJSONObject.getString("id"));
        this.twitter.setScreenName(paramJSONObject.getString("screen_name"));
      }
      catch (Exception localException)
      {
        i = 0;
      }
    }
  }

  public void setContext(Context paramContext)
  {
    this.baseContext = new WeakReference(paramContext);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.auth.TwitterAuthenticationProvider
 * JD-Core Version:    0.5.3
 */