package com.parse;

import com.parse.auth.ParseAuthenticationProvider;
import com.parse.auth.ParseAuthenticationProvider.ParseAuthenticationCallback;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ParseUser extends ParseObject
{
  static final String CLASS_NAME = "_User";
  private static final String CURRENT_USER_FILENAME = "currentUser";
  private static Map<String, ParseAuthenticationProvider> authenticationProviders = new HashMap();
  private static boolean autoUserEnabled;
  private static ParseUser currentUser;
  private static boolean currentUserMatchesDisk = false;
  private final JSONObject authData;
  private boolean isCurrentUser;
  private boolean isLazy;
  private boolean isNew;
  private final Set<String> linkedServiceNames;
  private String password;
  private final Set<String> readOnlyLinkedServiceNames;
  private String sessionToken;

  public ParseUser()
  {
    this(false);
  }

  ParseUser(boolean paramBoolean)
  {
    super("_User", paramBoolean);
    this.isLazy = false;
    this.isCurrentUser = false;
    this.authData = new JSONObject();
    this.linkedServiceNames = new HashSet();
    this.readOnlyLinkedServiceNames = Collections.unmodifiableSet(this.linkedServiceNames);
  }

  private static void checkApplicationContext()
  {
    if (Parse.applicationContext != null)
      return;
    throw new RuntimeException("You must call Parse.initialize(context, oauthKey, oauthSecret) before using the Parse library.");
  }

  static void clearCurrentUserFromMemory()
  {
    currentUser = null;
    currentUserMatchesDisk = false;
  }

  private static ParseCommand constructLogInCommand(String paramString1, String paramString2)
    throws ParseException
  {
    ParseCommand localParseCommand = new ParseCommand("user_login");
    localParseCommand.put("username", paramString1);
    localParseCommand.put("user_password", paramString2);
    return localParseCommand;
  }

  private static ParseCommand constructPasswordResetCommand(String paramString)
  {
    ParseCommand localParseCommand = new ParseCommand("user_request_password_reset");
    localParseCommand.put("email", paramString);
    return localParseCommand;
  }

  private ParseCommand constructSignUpCommand()
    throws ParseException
  {
    ParseCommand localParseCommand = constructSaveCommand();
    localParseCommand.setOp("user_signup");
    return localParseCommand;
  }

  private ParseCommand constructSignUpOrLoginCommand()
    throws ParseException
  {
    ParseCommand localParseCommand = new ParseCommand("user_signup_or_login");
    JSONObject localJSONObject = toJSONObjectForSaving();
    Iterator localIterator = localJSONObject.keys();
    while (true)
    {
      label20: String str;
      if (localIterator.hasNext())
        str = (String)localIterator.next();
      try
      {
        Object localObject = localJSONObject.get(str);
        if (localObject instanceof JSONObject)
          localParseCommand.put(str, (JSONObject)localObject);
        if (localObject instanceof JSONArray)
          localParseCommand.put(str, (JSONArray)localObject);
        if (localObject instanceof String)
          localParseCommand.put(str, (String)localObject);
        localParseCommand.put(str, localJSONObject.getInt(str));
        break label20:
        if (this.password != null)
          localParseCommand.put("user_password", this.password);
        return localParseCommand;
      }
      catch (JSONException localJSONException)
      {
      }
    }
  }

  static void disableAutomaticUser()
  {
    autoUserEnabled = false;
  }

  public static void enableAutomaticUser()
  {
    autoUserEnabled = true;
  }

  public static ParseUser getCurrentUser()
  {
    checkApplicationContext();
    if (currentUser != null);
    for (ParseUser localParseUser = currentUser; ; localParseUser = currentUser)
    {
      ParseObject localParseObject;
      while (true)
      {
        return localParseUser;
        if (currentUserMatchesDisk)
        {
          if (isAutomaticUserEnabled())
            ParseAnonymousUtils.lazyLogIn();
          localParseUser = currentUser;
        }
        currentUserMatchesDisk = true;
        localParseObject = getFromDisk(Parse.applicationContext, "currentUser");
        if (localParseObject != null)
          break;
        if (isAutomaticUserEnabled())
          ParseAnonymousUtils.lazyLogIn();
        localParseUser = currentUser;
      }
      currentUser = (ParseUser)localParseObject;
      currentUser.isCurrentUser = true;
    }
  }

  public static ParseQuery getQuery()
  {
    return new ParseQuery("_User");
  }

  static boolean isAutomaticUserEnabled()
  {
    return autoUserEnabled;
  }

  private void linkWith(ParseAuthenticationProvider paramParseAuthenticationProvider, SaveCallback paramSaveCallback)
  {
    paramParseAuthenticationProvider.authenticate(new ParseAuthenticationProvider.ParseAuthenticationCallback(paramParseAuthenticationProvider, paramSaveCallback)
    {
      public void onCancel()
      {
        this.val$callback.internalDone(null, null);
      }

      public void onError(Throwable paramThrowable)
      {
        this.val$callback.internalDone(null, new ParseException(paramThrowable));
      }

      public void onSuccess(JSONObject paramJSONObject)
      {
        ParseUser.this.linkWith(this.val$authenticator.getAuthType(), paramJSONObject, this.val$callback);
      }
    });
  }

  public static ParseUser logIn(String paramString1, String paramString2)
    throws ParseException
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("Must specify a username for the user to log in with");
    if (paramString2 == null)
      throw new IllegalArgumentException("Must specify a password for the user to log in with");
    Object localObject = constructLogInCommand(paramString1, paramString2).perform();
    if (localObject == JSONObject.NULL)
      throw new ParseException(101, "invalid login credentials");
    ParseUser localParseUser = new ParseUser();
    localParseUser.handleFetchResult((JSONObject)localObject);
    saveCurrentUser(localParseUser);
    return localParseUser;
  }

  public static void logInInBackground(String paramString1, String paramString2, LogInCallback paramLogInCallback)
  {
    BackgroundTask.executeTask(new BackgroundTask(paramLogInCallback, paramString1, paramString2)
    {
      public ParseUser run()
        throws ParseException
      {
        return ParseUser.logIn(this.val$username, this.val$password);
      }
    });
  }

  static ParseUser logInLazyUser(String paramString, JSONObject paramJSONObject)
  {
    ParseUser localParseUser = new ParseUser();
    localParseUser.isCurrentUser = true;
    localParseUser.isLazy = true;
    try
    {
      localParseUser.authData.put(paramString, paramJSONObject);
      localParseUser.linkedServiceNames.add(paramString);
      currentUser = localParseUser;
      currentUserMatchesDisk = false;
      return localParseUser;
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException);
    }
  }

  private static void logInWith(ParseAuthenticationProvider paramParseAuthenticationProvider, LogInCallback paramLogInCallback)
  {
    paramParseAuthenticationProvider.authenticate(new ParseAuthenticationProvider.ParseAuthenticationCallback(paramParseAuthenticationProvider, paramLogInCallback)
    {
      public void onCancel()
      {
        this.val$callback.internalDone(null, null);
      }

      public void onError(Throwable paramThrowable)
      {
        this.val$callback.internalDone(null, new ParseException(paramThrowable));
      }

      public void onSuccess(JSONObject paramJSONObject)
      {
        ParseUser.logInWith(this.val$authenticator.getAuthType(), paramJSONObject, this.val$callback);
      }
    });
  }

  static void logInWith(String paramString, LogInCallback paramLogInCallback)
  {
    if (!(authenticationProviders.containsKey(paramString)))
      throw new IllegalArgumentException("No authentication provider could be found for the provided authType");
    logInWith((ParseAuthenticationProvider)authenticationProviders.get(paramString), paramLogInCallback);
  }

  static void logInWith(String paramString, JSONObject paramJSONObject, LogInCallback paramLogInCallback)
  {
    6 local6 = new BackgroundTask(paramLogInCallback, paramString, paramJSONObject)
    {
      public ParseUser run()
        throws ParseException
      {
        ParseUser localParseUser = new ParseUser();
        try
        {
          localParseUser.authData.put(this.val$authType, this.val$authData);
          localParseUser.linkedServiceNames.add(this.val$authType);
          localParseUser.startSave();
          ParseCommand localParseCommand = localParseUser.constructSignUpOrLoginCommand();
          localParseCommand.setInternalCallback(new ParseCommand.InternalCallback(localParseUser)
          {
            public void perform(ParseCommand paramParseCommand, Object paramObject)
            {
              this.val$user.handleSaveResult(paramParseCommand.op, (JSONObject)paramObject);
            }
          });
          localParseCommand.perform();
          localParseUser.synchronizeAuthData(this.val$authType);
          ParseUser.access$500(localParseUser);
          return localParseUser;
        }
        catch (JSONException localJSONException)
        {
          throw new ParseException(localJSONException);
        }
      }
    };
    if ((getCurrentUser() != null) && (ParseAnonymousUtils.isLinked(getCurrentUser())))
      if (getCurrentUser().isLazy())
        BackgroundTask.executeTask(new BackgroundTask(paramLogInCallback, paramString, paramJSONObject)
        {
          public ParseUser run()
            throws ParseException
          {
            int i = 0;
            ParseUser localParseUser1 = ParseUser.getCurrentUser();
            JSONObject localJSONObject = localParseUser1.authData.optJSONObject("anonymous");
            ParseUser.getCurrentUser().stripAnonymity();
            try
            {
              localParseUser1.authData.put(this.val$authType, this.val$authData);
              localParseUser1.linkedServiceNames.add(this.val$authType);
              localParseUser1.resolveLaziness(true);
              i = 1;
              ParseUser localParseUser2 = ParseUser.getCurrentUser();
              return localParseUser2;
            }
            catch (JSONException localJSONException)
            {
            }
            finally
            {
              if (i == 0)
              {
                localParseUser1.authData.remove(this.val$authType);
                localParseUser1.linkedServiceNames.remove(this.val$authType);
                localParseUser1.restoreAnonymity(localJSONObject);
              }
            }
          }
        });
    while (true)
    {
      return;
      getCurrentUser().linkWith(paramString, paramJSONObject, new SaveCallback(local6, paramLogInCallback)
      {
        public void done(ParseException paramParseException)
        {
          if (paramParseException != null)
            if (paramParseException.getCode() == 208)
              BackgroundTask.executeTask(this.val$logInWithTask);
          while (true)
          {
            return;
            if (this.val$callback == null)
              continue;
            this.val$callback.internalDone(null, paramParseException);
            continue;
            if (this.val$callback == null)
              continue;
            this.val$callback.internalDone(ParseUser.getCurrentUser(), null);
          }
        }
      });
      continue;
      BackgroundTask.executeTask(local6);
    }
  }

  public static void logOut()
  {
    checkApplicationContext();
    if (currentUser != null)
    {
      Iterator localIterator = currentUser.getLinkedServiceNames().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        currentUser.logOutWith(str);
      }
      currentUser.isCurrentUser = false;
      currentUser.sessionToken = null;
    }
    currentUserMatchesDisk = true;
    currentUser = null;
    new File(Parse.getParseDir(), "currentUser").delete();
  }

  private void logOutWith(ParseAuthenticationProvider paramParseAuthenticationProvider)
  {
    paramParseAuthenticationProvider.deauthenticate();
  }

  static void registerAuthenticationProvider(ParseAuthenticationProvider paramParseAuthenticationProvider)
  {
    authenticationProviders.put(paramParseAuthenticationProvider.getAuthType(), paramParseAuthenticationProvider);
    if (getCurrentUser() == null)
      return;
    getCurrentUser().synchronizeAuthData(paramParseAuthenticationProvider.getAuthType());
  }

  public static void requestPasswordReset(String paramString)
    throws ParseException
  {
    constructPasswordResetCommand(paramString).perform();
  }

  public static void requestPasswordResetInBackground(String paramString, RequestPasswordResetCallback paramRequestPasswordResetCallback)
  {
    BackgroundTask.executeTask(new BackgroundTask(paramRequestPasswordResetCallback, paramString)
    {
      public Void run()
        throws ParseException
      {
        ParseUser.requestPasswordReset(this.val$email);
        return null;
      }
    });
  }

  private void resolveLaziness(boolean paramBoolean)
    throws ParseException
  {
    if (!(isLazy()));
    while (true)
    {
      return;
      if (this.linkedServiceNames.size() != 0)
        break;
      signUp(paramBoolean);
      this.isLazy = false;
    }
    if (paramBoolean)
      checkIfRunning(true);
    ParseUser localParseUser;
    try
    {
      ParseCommand localParseCommand = constructSignUpOrLoginCommand();
      localParseCommand.setInternalCallback(new ParseCommand.InternalCallback()
      {
        public void perform(ParseCommand paramParseCommand, Object paramObject)
        {
          ParseUser.this.handleSaveResult("create", (JSONObject)paramObject);
        }
      });
      startSave();
      JSONObject localJSONObject = (JSONObject)localParseCommand.perform();
      if (localJSONObject.optBoolean("is_new"))
      {
        this.isLazy = false;
        finishedRunning();
      }
      localParseUser = new ParseUser();
      localParseUser.handleFetchResult(localJSONObject);
    }
    finally
    {
      finishedRunning();
    }
  }

  private void restoreAnonymity(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null)
      this.linkedServiceNames.add("anonymous");
    try
    {
      this.authData.put("anonymous", paramJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException);
    }
  }

  private static void saveCurrentUser(ParseUser paramParseUser)
  {
    checkApplicationContext();
    if (currentUser != paramParseUser)
      logOut();
    paramParseUser.isCurrentUser = true;
    paramParseUser.synchronizeAllAuthData();
    paramParseUser.saveToDisk(Parse.applicationContext, "currentUser");
    currentUserMatchesDisk = true;
    currentUser = paramParseUser;
  }

  private void stripAnonymity()
  {
    if (ParseAnonymousUtils.isLinked(this))
      this.linkedServiceNames.remove("anonymous");
    try
    {
      this.authData.put("anonymous", JSONObject.NULL);
      this.dirty = true;
      return;
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException);
    }
  }

  private void synchronizeAllAuthData()
  {
    if (this.authData == null)
      return;
    Iterator localIterator = this.authData.keys();
    while (localIterator.hasNext())
      synchronizeAuthData((String)localIterator.next());
  }

  private void synchronizeAuthData(String paramString)
  {
    if (!(isCurrentUser()));
    while (true)
    {
      return;
      if (!(authenticationProviders.containsKey(paramString)))
        continue;
      ParseAuthenticationProvider localParseAuthenticationProvider = (ParseAuthenticationProvider)authenticationProviders.get(paramString);
      if (localParseAuthenticationProvider.restoreAuthentication(this.authData.optJSONObject(localParseAuthenticationProvider.getAuthType())))
        continue;
      unlinkFromInBackground(paramString);
    }
  }

  void cleanUpAuthData()
  {
    if (!(isCurrentUser()))
      return;
    Iterator localIterator = this.authData.keys();
    while (true)
    {
      if (localIterator.hasNext());
      String str = (String)localIterator.next();
      if (!(this.authData.isNull(str)))
        continue;
      localIterator.remove();
      this.linkedServiceNames.remove(str);
      if (!(authenticationProviders.containsKey(str)))
        continue;
      ((ParseAuthenticationProvider)authenticationProviders.get(str)).restoreAuthentication(null);
    }
  }

  protected ParseCommand constructSaveCommand()
    throws ParseException
  {
    ParseCommand localParseCommand = super.constructSaveCommand();
    if (localParseCommand == null)
      localParseCommand = null;
    while (true)
    {
      return localParseCommand;
      if (this.password != null)
        localParseCommand.put("user_password", this.password);
      if (this.authData.length() <= 0)
        continue;
      localParseCommand.put("auth_data", this.authData);
    }
  }

  public ParseUser fetch()
    throws ParseException
  {
    if (isLazy());
    while (true)
    {
      return this;
      super.fetch();
      cleanUpAuthData();
      if (!(isCurrentUser()))
        continue;
      saveCurrentUser(this);
    }
  }

  public ParseUser fetchIfNeeded()
    throws ParseException
  {
    return ((ParseUser)super.fetchIfNeeded());
  }

  public String getEmail()
  {
    return getString("email");
  }

  Set<String> getLinkedServiceNames()
  {
    return this.readOnlyLinkedServiceNames;
  }

  public String getSessionToken()
  {
    return this.sessionToken;
  }

  public String getUsername()
  {
    return getString("username");
  }

  public boolean isAuthenticated()
  {
    if ((isLazy()) || ((this.sessionToken != null) && (getCurrentUser() != null) && (getObjectId().equals(getCurrentUser().getObjectId()))));
    for (int i = 1; ; i = 0)
      return i;
  }

  boolean isCurrentUser()
  {
    return this.isCurrentUser;
  }

  boolean isLazy()
  {
    return this.isLazy;
  }

  public boolean isNew()
  {
    return this.isNew;
  }

  void linkWith(String paramString, SaveCallback paramSaveCallback)
  {
    if (!(authenticationProviders.containsKey(paramString)))
      throw new IllegalArgumentException("No authentication provider could be found for the provided authType");
    linkWith((ParseAuthenticationProvider)authenticationProviders.get(paramString), paramSaveCallback);
  }

  void linkWith(String paramString, JSONObject paramJSONObject, SaveCallback paramSaveCallback)
  {
    BackgroundTask.executeTask(new BackgroundTask(paramSaveCallback, paramString, paramJSONObject)
    {
      // ERROR //
      public Void run()
        throws ParseException
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 20	com/parse/ParseUser$11:this$0	Lcom/parse/ParseUser;
        //   4: astore_1
        //   5: aload_1
        //   6: invokestatic 42	com/parse/ParseUser:access$000	(Lcom/parse/ParseUser;)Lorg/json/JSONObject;
        //   9: aload_0
        //   10: getfield 22	com/parse/ParseUser$11:val$authType	Ljava/lang/String;
        //   13: aload_0
        //   14: getfield 24	com/parse/ParseUser$11:val$authData	Lorg/json/JSONObject;
        //   17: invokevirtual 48	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   20: pop
        //   21: aload_1
        //   22: invokestatic 52	com/parse/ParseUser:access$100	(Lcom/parse/ParseUser;)Ljava/util/Set;
        //   25: aload_0
        //   26: getfield 22	com/parse/ParseUser$11:val$authType	Ljava/lang/String;
        //   29: invokeinterface 58 2 0
        //   34: pop
        //   35: aload_0
        //   36: getfield 24	com/parse/ParseUser$11:val$authData	Lorg/json/JSONObject;
        //   39: ldc 60
        //   41: invokevirtual 64	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
        //   44: astore 5
        //   46: aload_0
        //   47: getfield 20	com/parse/ParseUser$11:this$0	Lcom/parse/ParseUser;
        //   50: invokestatic 68	com/parse/ParseUser:access$600	(Lcom/parse/ParseUser;)V
        //   53: aload_1
        //   54: iconst_1
        //   55: putfield 72	com/parse/ParseUser:dirty	Z
        //   58: aload_1
        //   59: invokevirtual 76	com/parse/ParseUser:save	()V
        //   62: aload_1
        //   63: aload_0
        //   64: getfield 22	com/parse/ParseUser$11:val$authType	Ljava/lang/String;
        //   67: invokestatic 80	com/parse/ParseUser:access$400	(Lcom/parse/ParseUser;Ljava/lang/String;)V
        //   70: aconst_null
        //   71: areturn
        //   72: astore_2
        //   73: new 31	ParseException
        //   76: dup
        //   77: aload_2
        //   78: invokespecial 83	ParseException:<init>	(Ljava/lang/Throwable;)V
        //   81: athrow
        //   82: astore 7
        //   84: aload_0
        //   85: getfield 20	com/parse/ParseUser$11:this$0	Lcom/parse/ParseUser;
        //   88: aload 5
        //   90: invokestatic 87	com/parse/ParseUser:access$800	(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V
        //   93: aload 7
        //   95: athrow
        //   96: astore 6
        //   98: aload_0
        //   99: getfield 20	com/parse/ParseUser$11:this$0	Lcom/parse/ParseUser;
        //   102: aload 5
        //   104: invokestatic 87	com/parse/ParseUser:access$800	(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V
        //   107: new 31	ParseException
        //   110: dup
        //   111: aload 6
        //   113: invokespecial 83	ParseException:<init>	(Ljava/lang/Throwable;)V
        //   116: athrow
        //
        // Exception table:
        //   from	to	target	type
        //   5	58	72	org/json/JSONException
        //   58	70	82	ParseException
        //   58	70	96	java/lang/Exception
      }
    });
  }

  void logOutWith(String paramString)
  {
    if ((!(authenticationProviders.containsKey(paramString))) || (!(this.linkedServiceNames.contains(paramString))))
      return;
    logOutWith((ParseAuthenticationProvider)authenticationProviders.get(paramString));
  }

  protected void mergeFromObject(ParseObject paramParseObject)
  {
    super.mergeFromObject(paramParseObject);
    if (!(paramParseObject instanceof ParseUser))
      return;
    this.sessionToken = ((ParseUser)paramParseObject).sessionToken;
    this.isNew = ((ParseUser)paramParseObject).isNew();
    Iterator localIterator1 = this.authData.keys();
    while (localIterator1.hasNext())
    {
      localIterator1.next();
      localIterator1.remove();
    }
    Iterator localIterator2 = ((ParseUser)paramParseObject).authData.keys();
    while (localIterator2.hasNext())
    {
      String str = (String)localIterator2.next();
      try
      {
        Object localObject = ((ParseUser)paramParseObject).authData.get(str);
        this.authData.put(str, localObject);
      }
      catch (JSONException localJSONException)
      {
        throw new RuntimeException("A JSONException occurred where one was not possible.");
      }
    }
    this.linkedServiceNames.clear();
    this.linkedServiceNames.addAll(((ParseUser)paramParseObject).linkedServiceNames);
  }

  protected void mergeFromServer(JSONObject paramJSONObject)
  {
    super.mergeFromServer(paramJSONObject);
    if (paramJSONObject.has("session_token"));
    try
    {
      this.sessionToken = paramJSONObject.getString("session_token");
      if (!(paramJSONObject.has("auth_data")))
        break label147;
      try
      {
        JSONObject localJSONObject = paramJSONObject.getJSONObject("auth_data");
        Iterator localIterator = localJSONObject.keys();
        if (!(localIterator.hasNext()))
          break label147;
        String str = (String)localIterator.next();
        this.authData.put(str, localJSONObject.get(str));
        if (!(localJSONObject.isNull(str)))
          this.linkedServiceNames.add(str);
        synchronizeAuthData(str);
      }
      catch (JSONException localJSONException2)
      {
        throw new RuntimeException(localJSONException2);
      }
    }
    catch (JSONException localJSONException3)
    {
      throw new RuntimeException(localJSONException3.getMessage());
    }
    label147: if (paramJSONObject.has("is_new"));
    try
    {
      this.isNew = paramJSONObject.getBoolean("is_new");
      return;
    }
    catch (JSONException localJSONException1)
    {
      throw new RuntimeException(localJSONException1);
    }
  }

  public void put(String paramString, Object paramObject)
  {
    if (paramString.equals("username"))
      stripAnonymity();
    super.put(paramString, paramObject);
  }

  public void remove(String paramString)
  {
    if (paramString == "username")
      throw new IllegalArgumentException("Can't remove the username key.");
    super.remove(paramString);
  }

  public void save(boolean paramBoolean)
    throws ParseException
  {
    if (isLazy())
      resolveLaziness(paramBoolean);
    while (true)
    {
      return;
      super.save(paramBoolean);
      cleanUpAuthData();
      if (!(isCurrentUser()))
        continue;
      saveCurrentUser(this);
    }
  }

  public void setEmail(String paramString)
  {
    checkIfRunning();
    put("email", paramString);
  }

  public void setPassword(String paramString)
  {
    checkIfRunning();
    this.password = paramString;
    this.dirty = true;
  }

  public void setUsername(String paramString)
  {
    checkIfRunning();
    put("username", paramString);
  }

  public void signUp()
    throws ParseException
  {
    signUp(true);
  }

  protected void signUp(boolean paramBoolean)
    throws ParseException
  {
    if (paramBoolean)
      checkIfRunning(true);
    try
    {
      if (getUsername() != null);
      throw new IllegalArgumentException("Username cannot be missing or blank");
    }
    finally
    {
      finishedRunning();
    }
    if (this.password == null)
      throw new IllegalArgumentException("Password cannot be missing or blank");
    String str = getObjectId();
    if (str != null);
    while (true)
    {
      try
      {
        if ((this.authData.has("anonymous")) && (this.authData.get("anonymous") == JSONObject.NULL))
        {
          save(false);
          finishedRunning();
          return;
        }
      }
      catch (JSONException localJSONException)
      {
        throw new ParseException(localJSONException);
      }
      throw new IllegalArgumentException("Cannot sign up a user that has already signed up.");
      if (this.operationSetQueue.size() > 1)
        throw new IllegalArgumentException("Cannot sign up a user that is already signing up.");
      if ((getCurrentUser() != null) && (ParseAnonymousUtils.isLinked(getCurrentUser())))
      {
        if (isCurrentUser())
          throw new IllegalArgumentException("Attempt to merge currentUser with itself.");
        checkForChangesToMutableContainers();
        getCurrentUser().checkForChangesToMutableContainers();
        getCurrentUser().copyChangesFrom(this);
        getCurrentUser().dirty = true;
        getCurrentUser().setPassword(this.password);
        getCurrentUser().setUsername(getUsername());
        clearChanges();
        getCurrentUser().save();
        mergeFromObject(getCurrentUser());
        saveCurrentUser(this);
        finishedRunning();
      }
      ParseCommand localParseCommand = constructSignUpCommand();
      if (localParseCommand == null)
        finishedRunning();
      localParseCommand.setInternalCallback(new ParseCommand.InternalCallback()
      {
        public void perform(ParseCommand paramParseCommand, Object paramObject)
        {
          ParseUser.this.handleSaveResult(paramParseCommand.op, (JSONObject)paramObject);
        }
      });
      startSave();
      localParseCommand.perform();
      saveCurrentUser(this);
      this.isNew = true;
      finishedRunning();
    }
  }

  public void signUpInBackground(SignUpCallback paramSignUpCallback)
  {
    checkIfRunning(true);
    BackgroundTask.executeTask(new BackgroundTask(paramSignUpCallback)
    {
      public Void run()
        throws ParseException
      {
        ParseUser.this.signUp(false);
        return null;
      }
    });
  }

  // ERROR //
  JSONObject toJSONObjectForDataFile()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 598	com/parse/ParseObject:toJSONObjectForDataFile	()Lorg/json/JSONObject;
    //   4: astore_1
    //   5: aload_0
    //   6: getfield 348	com/parse/ParseUser:sessionToken	Ljava/lang/String;
    //   9: ifnull +15 -> 24
    //   12: aload_1
    //   13: ldc_w 516
    //   16: aload_0
    //   17: getfield 348	com/parse/ParseUser:sessionToken	Ljava/lang/String;
    //   20: invokevirtual 282	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   23: pop
    //   24: aload_0
    //   25: getfield 55	com/parse/ParseUser:authData	Lorg/json/JSONObject;
    //   28: invokevirtual 452	org/json/JSONObject:length	()I
    //   31: ifle +15 -> 46
    //   34: aload_1
    //   35: ldc_w 454
    //   38: aload_0
    //   39: getfield 55	com/parse/ParseUser:authData	Lorg/json/JSONObject;
    //   42: invokevirtual 282	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   45: pop
    //   46: aload_1
    //   47: areturn
    //   48: astore 4
    //   50: new 117	java/lang/RuntimeException
    //   53: dup
    //   54: ldc_w 600
    //   57: invokespecial 121	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   60: athrow
    //   61: astore_2
    //   62: new 117	java/lang/RuntimeException
    //   65: dup
    //   66: ldc_w 602
    //   69: invokespecial 121	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   72: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   12	24	48	org/json/JSONException
    //   34	46	61	org/json/JSONException
  }

  // ERROR //
  protected JSONObject toJSONObjectForSaving()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 603	com/parse/ParseObject:toJSONObjectForSaving	()Lorg/json/JSONObject;
    //   4: astore_1
    //   5: aload_0
    //   6: getfield 348	com/parse/ParseUser:sessionToken	Ljava/lang/String;
    //   9: ifnull +15 -> 24
    //   12: aload_1
    //   13: ldc_w 516
    //   16: aload_0
    //   17: getfield 348	com/parse/ParseUser:sessionToken	Ljava/lang/String;
    //   20: invokevirtual 282	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   23: pop
    //   24: aload_0
    //   25: getfield 55	com/parse/ParseUser:authData	Lorg/json/JSONObject;
    //   28: invokevirtual 452	org/json/JSONObject:length	()I
    //   31: ifle +15 -> 46
    //   34: aload_1
    //   35: ldc_w 454
    //   38: aload_0
    //   39: getfield 55	com/parse/ParseUser:authData	Lorg/json/JSONObject;
    //   42: invokevirtual 282	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   45: pop
    //   46: aload_1
    //   47: areturn
    //   48: astore 4
    //   50: new 117	java/lang/RuntimeException
    //   53: dup
    //   54: ldc_w 600
    //   57: invokespecial 121	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   60: athrow
    //   61: astore_2
    //   62: new 117	java/lang/RuntimeException
    //   65: dup
    //   66: ldc_w 602
    //   69: invokespecial 121	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   72: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   12	24	48	org/json/JSONException
    //   34	46	61	org/json/JSONException
  }

  boolean unlinkFrom(String paramString)
    throws ParseException
  {
    int i = 0;
    if (paramString == null);
    while (true)
    {
      return i;
      boolean bool = this.authData.has(paramString);
      i = 0;
      if (!(bool))
        continue;
      try
      {
        this.authData.put(paramString, JSONObject.NULL);
        this.dirty = true;
        label40: save();
        i = 1;
      }
      catch (JSONException localJSONException)
      {
        break label40:
      }
    }
  }

  void unlinkFromInBackground(String paramString)
  {
    unlinkFromInBackground(paramString, null);
  }

  void unlinkFromInBackground(String paramString, SaveCallback paramSaveCallback)
  {
    if ((paramString != null) && (this.authData.has(paramString)));
    try
    {
      this.authData.put(paramString, JSONObject.NULL);
      this.dirty = true;
      label32: saveInBackground(new SaveCallback(paramString, paramSaveCallback)
      {
        public void done(ParseException paramParseException)
        {
          if (paramParseException == null)
          {
            ParseUser.this.authData.remove(this.val$authType);
            ParseUser.this.linkedServiceNames.remove(this.val$authType);
            if (ParseUser.authenticationProviders.containsKey(this.val$authType))
              ((ParseAuthenticationProvider)ParseUser.authenticationProviders.get(this.val$authType)).restoreAuthentication(null);
          }
          if (this.val$callback == null)
            return;
          this.val$callback.internalDone(null, paramParseException);
        }
      });
      do
        return;
      while (paramSaveCallback == null);
      paramSaveCallback.internalDone(null, null);
    }
    catch (JSONException localJSONException)
    {
      break label32:
    }
  }

  protected void validateDelete()
  {
    super.validateDelete();
    if ((isAuthenticated()) || (!(isDirty())))
      return;
    throw new IllegalArgumentException("Cannot delete a ParseUser that is not authenticated.");
  }

  protected void validateSave()
  {
    if (getObjectId() == null)
      throw new IllegalArgumentException("Cannot save a ParseUser until it has been signed up. Call signUp first.");
    if ((isAuthenticated()) || (!(isDirty())) || (getObjectId().equals(getCurrentUser().getObjectId())))
      return;
    throw new IllegalArgumentException("Cannot save a ParseUser that is not authenticated.");
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ParseUser
 * JD-Core Version:    0.5.3
 */