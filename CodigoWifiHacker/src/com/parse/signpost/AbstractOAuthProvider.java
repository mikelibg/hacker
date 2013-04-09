package com.parse.signpost;

import com.parse.signpost.exception.OAuthCommunicationException;
import com.parse.signpost.exception.OAuthExpectationFailedException;
import com.parse.signpost.exception.OAuthMessageSignerException;
import com.parse.signpost.exception.OAuthNotAuthorizedException;
import com.parse.signpost.http.HttpParameters;
import com.parse.signpost.http.HttpRequest;
import com.parse.signpost.http.HttpResponse;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

public abstract class AbstractOAuthProvider
  implements OAuthProvider
{
  private static final long serialVersionUID = 1L;
  private String accessTokenEndpointUrl;
  private String authorizationWebsiteUrl;
  private Map<String, String> defaultHeaders;
  private boolean isOAuth10a;
  private transient OAuthProviderListener listener;
  private String requestTokenEndpointUrl;
  private HttpParameters responseParameters;

  public AbstractOAuthProvider(String paramString1, String paramString2, String paramString3)
  {
    this.requestTokenEndpointUrl = paramString1;
    this.accessTokenEndpointUrl = paramString2;
    this.authorizationWebsiteUrl = paramString3;
    this.responseParameters = new HttpParameters();
    this.defaultHeaders = new HashMap();
  }

  protected void closeConnection(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse)
    throws Exception
  {
  }

  protected abstract HttpRequest createRequest(String paramString)
    throws Exception;

  public String getAccessTokenEndpointUrl()
  {
    return this.accessTokenEndpointUrl;
  }

  public String getAuthorizationWebsiteUrl()
  {
    return this.authorizationWebsiteUrl;
  }

  public Map<String, String> getRequestHeaders()
  {
    return this.defaultHeaders;
  }

  public String getRequestTokenEndpointUrl()
  {
    return this.requestTokenEndpointUrl;
  }

  protected String getResponseParameter(String paramString)
  {
    return this.responseParameters.getFirst(paramString);
  }

  public HttpParameters getResponseParameters()
  {
    return this.responseParameters;
  }

  protected void handleUnexpectedResponse(int paramInt, HttpResponse paramHttpResponse)
    throws Exception
  {
    if (paramHttpResponse == null)
      return;
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramHttpResponse.getContent()), 8192);
    StringBuilder localStringBuilder = new StringBuilder();
    for (String str = localBufferedReader.readLine(); str != null; str = localBufferedReader.readLine())
      localStringBuilder.append(str);
    switch (paramInt)
    {
    default:
      throw new OAuthCommunicationException("Service provider responded in error: " + paramInt + " (" + paramHttpResponse.getReasonPhrase() + ")", localStringBuilder.toString());
    case 401:
    }
    throw new OAuthNotAuthorizedException(localStringBuilder.toString());
  }

  public boolean isOAuth10a()
  {
    return this.isOAuth10a;
  }

  public void removeListener(OAuthProviderListener paramOAuthProviderListener)
  {
    this.listener = null;
  }

  public void retrieveAccessToken(OAuthConsumer paramOAuthConsumer, String paramString)
    throws OAuthMessageSignerException, OAuthNotAuthorizedException, OAuthExpectationFailedException, OAuthCommunicationException
  {
    if ((paramOAuthConsumer.getToken() == null) || (paramOAuthConsumer.getTokenSecret() == null))
      throw new OAuthExpectationFailedException("Authorized request token or token secret not set. Did you retrieve an authorized request token before?");
    if ((this.isOAuth10a) && (paramString != null))
      retrieveToken(paramOAuthConsumer, this.accessTokenEndpointUrl, new String[] { "oauth_verifier", paramString });
    while (true)
    {
      return;
      retrieveToken(paramOAuthConsumer, this.accessTokenEndpointUrl, new String[0]);
    }
  }

  public String retrieveRequestToken(OAuthConsumer paramOAuthConsumer, String paramString)
    throws OAuthMessageSignerException, OAuthNotAuthorizedException, OAuthExpectationFailedException, OAuthCommunicationException
  {
    paramOAuthConsumer.setTokenWithSecret(null, null);
    retrieveToken(paramOAuthConsumer, this.requestTokenEndpointUrl, new String[] { "oauth_callback", paramString });
    String str1 = this.responseParameters.getFirst("oauth_callback_confirmed");
    this.responseParameters.remove("oauth_callback_confirmed");
    this.isOAuth10a = Boolean.TRUE.toString().equals(str1);
    String str4;
    String[] arrayOfString2;
    if (this.isOAuth10a)
    {
      str4 = this.authorizationWebsiteUrl;
      arrayOfString2 = new String[2];
      arrayOfString2[0] = "oauth_token";
      arrayOfString2[1] = paramOAuthConsumer.getToken();
    }
    String str2;
    String[] arrayOfString1;
    for (String str3 = OAuth.addQueryParameters(str4, arrayOfString2); ; str3 = OAuth.addQueryParameters(str2, arrayOfString1))
    {
      return str3;
      str2 = this.authorizationWebsiteUrl;
      arrayOfString1 = new String[4];
      arrayOfString1[0] = "oauth_token";
      arrayOfString1[1] = paramOAuthConsumer.getToken();
      arrayOfString1[2] = "oauth_callback";
      arrayOfString1[3] = paramString;
    }
  }

  // ERROR //
  protected void retrieveToken(OAuthConsumer paramOAuthConsumer, String paramString, String[] paramArrayOfString)
    throws OAuthMessageSignerException, OAuthCommunicationException, OAuthNotAuthorizedException, OAuthExpectationFailedException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 183	com/parse/signpost/AbstractOAuthProvider:getRequestHeaders	()Ljava/util/Map;
    //   4: astore 4
    //   6: aload_1
    //   7: invokeinterface 186 1 0
    //   12: ifnull +12 -> 24
    //   15: aload_1
    //   16: invokeinterface 189 1 0
    //   21: ifnonnull +13 -> 34
    //   24: new 130	OAuthExpectationFailedException
    //   27: dup
    //   28: ldc 191
    //   30: invokespecial 141	OAuthExpectationFailedException:<init>	(Ljava/lang/String;)V
    //   33: athrow
    //   34: aconst_null
    //   35: astore 5
    //   37: aconst_null
    //   38: astore 6
    //   40: aload_0
    //   41: aload_2
    //   42: invokevirtual 193	com/parse/signpost/AbstractOAuthProvider:createRequest	(Ljava/lang/String;)Lcom/parse/signpost/http/HttpRequest;
    //   45: astore 5
    //   47: aload 4
    //   49: invokeinterface 199 1 0
    //   54: invokeinterface 205 1 0
    //   59: astore 12
    //   61: aload 12
    //   63: invokeinterface 210 1 0
    //   68: istore 13
    //   70: aconst_null
    //   71: astore 6
    //   73: iload 13
    //   75: ifeq +57 -> 132
    //   78: aload 12
    //   80: invokeinterface 214 1 0
    //   85: checkcast 143	java/lang/String
    //   88: astore 29
    //   90: aload 5
    //   92: aload 29
    //   94: aload 4
    //   96: aload 29
    //   98: invokeinterface 218 2 0
    //   103: checkcast 143	java/lang/String
    //   106: invokeinterface 223 3 0
    //   111: goto -50 -> 61
    //   114: astore 11
    //   116: aload 11
    //   118: athrow
    //   119: astore 8
    //   121: aload_0
    //   122: aload 5
    //   124: aload 6
    //   126: invokevirtual 225	com/parse/signpost/AbstractOAuthProvider:closeConnection	(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)V
    //   129: aload 8
    //   131: athrow
    //   132: aload_3
    //   133: ifnull +27 -> 160
    //   136: new 36	com/parse/signpost/http/HttpParameters
    //   139: dup
    //   140: invokespecial 37	com/parse/signpost/http/HttpParameters:<init>	()V
    //   143: astore 28
    //   145: aload 28
    //   147: aload_3
    //   148: iconst_1
    //   149: invokevirtual 229	com/parse/signpost/http/HttpParameters:putAll	([Ljava/lang/String;Z)V
    //   152: aload_1
    //   153: aload 28
    //   155: invokeinterface 233 2 0
    //   160: aload_0
    //   161: getfield 124	com/parse/signpost/AbstractOAuthProvider:listener	Lcom/parse/signpost/OAuthProviderListener;
    //   164: astore 14
    //   166: aconst_null
    //   167: astore 6
    //   169: aload 14
    //   171: ifnull +14 -> 185
    //   174: aload_0
    //   175: getfield 124	com/parse/signpost/AbstractOAuthProvider:listener	Lcom/parse/signpost/OAuthProviderListener;
    //   178: aload 5
    //   180: invokeinterface 239 2 0
    //   185: aload_1
    //   186: aload 5
    //   188: invokeinterface 243 2 0
    //   193: pop
    //   194: aload_0
    //   195: getfield 124	com/parse/signpost/AbstractOAuthProvider:listener	Lcom/parse/signpost/OAuthProviderListener;
    //   198: astore 16
    //   200: aconst_null
    //   201: astore 6
    //   203: aload 16
    //   205: ifnull +14 -> 219
    //   208: aload_0
    //   209: getfield 124	com/parse/signpost/AbstractOAuthProvider:listener	Lcom/parse/signpost/OAuthProviderListener;
    //   212: aload 5
    //   214: invokeinterface 246 2 0
    //   219: aload_0
    //   220: aload 5
    //   222: invokevirtual 250	com/parse/signpost/AbstractOAuthProvider:sendRequest	(Lcom/parse/signpost/http/HttpRequest;)Lcom/parse/signpost/http/HttpResponse;
    //   225: astore 6
    //   227: aload 6
    //   229: invokeinterface 254 1 0
    //   234: istore 17
    //   236: aload_0
    //   237: getfield 124	com/parse/signpost/AbstractOAuthProvider:listener	Lcom/parse/signpost/OAuthProviderListener;
    //   240: astore 18
    //   242: iconst_0
    //   243: istore 19
    //   245: aload 18
    //   247: ifnull +22 -> 269
    //   250: aload_0
    //   251: getfield 124	com/parse/signpost/AbstractOAuthProvider:listener	Lcom/parse/signpost/OAuthProviderListener;
    //   254: aload 5
    //   256: aload 6
    //   258: invokeinterface 258 3 0
    //   263: istore 27
    //   265: iload 27
    //   267: istore 19
    //   269: iload 19
    //   271: ifeq +24 -> 295
    //   274: aload_0
    //   275: aload 5
    //   277: aload 6
    //   279: invokevirtual 225	com/parse/signpost/AbstractOAuthProvider:closeConnection	(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)V
    //   282: return
    //   283: astore 26
    //   285: new 94	OAuthCommunicationException
    //   288: dup
    //   289: aload 26
    //   291: invokespecial 261	OAuthCommunicationException:<init>	(Ljava/lang/Exception;)V
    //   294: athrow
    //   295: iload 17
    //   297: sipush 300
    //   300: if_icmplt +11 -> 311
    //   303: aload_0
    //   304: iload 17
    //   306: aload 6
    //   308: invokevirtual 263	com/parse/signpost/AbstractOAuthProvider:handleUnexpectedResponse	(ILcom/parse/signpost/http/HttpResponse;)V
    //   311: aload 6
    //   313: invokeinterface 76 1 0
    //   318: invokestatic 267	com/parse/signpost/OAuth:decodeForm	(Ljava/io/InputStream;)Lcom/parse/signpost/http/HttpParameters;
    //   321: astore 20
    //   323: aload 20
    //   325: ldc 175
    //   327: invokevirtual 62	com/parse/signpost/http/HttpParameters:getFirst	(Ljava/lang/Object;)Ljava/lang/String;
    //   330: astore 21
    //   332: aload 20
    //   334: ldc_w 269
    //   337: invokevirtual 62	com/parse/signpost/http/HttpParameters:getFirst	(Ljava/lang/Object;)Ljava/lang/String;
    //   340: astore 22
    //   342: aload 20
    //   344: ldc 175
    //   346: invokevirtual 162	com/parse/signpost/http/HttpParameters:remove	(Ljava/lang/Object;)Ljava/util/SortedSet;
    //   349: pop
    //   350: aload 20
    //   352: ldc_w 269
    //   355: invokevirtual 162	com/parse/signpost/http/HttpParameters:remove	(Ljava/lang/Object;)Ljava/util/SortedSet;
    //   358: pop
    //   359: aload_0
    //   360: aload 20
    //   362: invokevirtual 272	com/parse/signpost/AbstractOAuthProvider:setResponseParameters	(Lcom/parse/signpost/http/HttpParameters;)V
    //   365: aload 21
    //   367: ifnull +8 -> 375
    //   370: aload 22
    //   372: ifnonnull +19 -> 391
    //   375: new 130	OAuthExpectationFailedException
    //   378: dup
    //   379: ldc_w 274
    //   382: invokespecial 141	OAuthExpectationFailedException:<init>	(Ljava/lang/String;)V
    //   385: athrow
    //   386: astore 10
    //   388: aload 10
    //   390: athrow
    //   391: aload_1
    //   392: aload 21
    //   394: aload 22
    //   396: invokeinterface 154 3 0
    //   401: aload_0
    //   402: aload 5
    //   404: aload 6
    //   406: invokevirtual 225	com/parse/signpost/AbstractOAuthProvider:closeConnection	(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)V
    //   409: goto -127 -> 282
    //   412: astore 25
    //   414: new 94	OAuthCommunicationException
    //   417: dup
    //   418: aload 25
    //   420: invokespecial 261	OAuthCommunicationException:<init>	(Ljava/lang/Exception;)V
    //   423: athrow
    //   424: astore 7
    //   426: new 94	OAuthCommunicationException
    //   429: dup
    //   430: aload 7
    //   432: invokespecial 261	OAuthCommunicationException:<init>	(Ljava/lang/Exception;)V
    //   435: athrow
    //   436: astore 9
    //   438: new 94	OAuthCommunicationException
    //   441: dup
    //   442: aload 9
    //   444: invokespecial 261	OAuthCommunicationException:<init>	(Ljava/lang/Exception;)V
    //   447: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   40	111	114	OAuthNotAuthorizedException
    //   136	265	114	OAuthNotAuthorizedException
    //   303	386	114	OAuthNotAuthorizedException
    //   391	401	114	OAuthNotAuthorizedException
    //   40	111	119	finally
    //   116	119	119	finally
    //   136	265	119	finally
    //   303	386	119	finally
    //   388	391	119	finally
    //   391	401	119	finally
    //   426	436	119	finally
    //   274	282	283	Exception
    //   40	111	386	OAuthExpectationFailedException
    //   136	265	386	OAuthExpectationFailedException
    //   303	386	386	OAuthExpectationFailedException
    //   391	401	386	OAuthExpectationFailedException
    //   401	409	412	Exception
    //   40	111	424	Exception
    //   136	265	424	Exception
    //   303	386	424	Exception
    //   391	401	424	Exception
    //   121	129	436	Exception
  }

  protected abstract HttpResponse sendRequest(HttpRequest paramHttpRequest)
    throws Exception;

  public void setListener(OAuthProviderListener paramOAuthProviderListener)
  {
    this.listener = paramOAuthProviderListener;
  }

  public void setOAuth10a(boolean paramBoolean)
  {
    this.isOAuth10a = paramBoolean;
  }

  public void setRequestHeader(String paramString1, String paramString2)
  {
    this.defaultHeaders.put(paramString1, paramString2);
  }

  public void setResponseParameters(HttpParameters paramHttpParameters)
  {
    this.responseParameters = paramHttpParameters;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.signpost.AbstractOAuthProvider
 * JD-Core Version:    0.5.3
 */