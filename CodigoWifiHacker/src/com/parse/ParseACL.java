package com.parse;

import java.lang.ref.WeakReference;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class ParseACL
{
  private static final String PUBLIC_KEY = "*";
  private static final String UNRESOLVED_KEY = "*unresolved";
  private static ParseACL defaultACL;
  private static boolean defaultACLUsesCurrentUser;
  private static ParseACL defaultACLWithCurrentUser;
  private static WeakReference<ParseUser> lastCurrentUser;
  private JSONObject permissionsById;
  private boolean shared;
  private ParseUser unresolvedUser;

  public ParseACL()
  {
    this.permissionsById = new JSONObject();
  }

  public ParseACL(ParseUser paramParseUser)
  {
    setReadAccess(paramParseUser, true);
    setWriteAccess(paramParseUser, true);
  }

  static ParseACL createACLFromJSONObject(JSONObject paramJSONObject)
  {
    ParseACL localParseACL = new ParseACL();
    Iterator localIterator1 = Parse.keys(paramJSONObject).iterator();
    if (localIterator1.hasNext())
    {
      String str = (String)localIterator1.next();
      try
      {
        JSONObject localJSONObject = paramJSONObject.getJSONObject(str);
        Iterator localIterator2 = Parse.keys(localJSONObject).iterator();
        if (localIterator2.hasNext());
        localParseACL.setAccess((String)localIterator2.next(), str, true);
      }
      catch (JSONException localJSONException)
      {
        throw new RuntimeException("could not decode ACL: " + localJSONException.getMessage());
      }
    }
    return localParseACL;
  }

  private boolean getAccess(String paramString1, String paramString2)
  {
    int i;
    try
    {
      JSONObject localJSONObject = this.permissionsById.optJSONObject(paramString2);
      if (localJSONObject == null)
      {
        i = 0;
        break label83:
      }
      boolean bool1 = localJSONObject.has(paramString1);
      i = 0;
      if (bool1)
      {
        boolean bool2 = localJSONObject.getBoolean(paramString1);
        i = bool2;
      }
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException("JSON failure with ACL: " + localJSONException.getMessage());
    }
    label83: return i;
  }

  static ParseACL getDefaultACL()
  {
    ParseUser localParseUser;
    if (defaultACLUsesCurrentUser)
      if (lastCurrentUser != null)
      {
        localParseUser = (ParseUser)lastCurrentUser.get();
        label22: if (ParseUser.getCurrentUser() != null)
          break label39;
      }
    for (ParseACL localParseACL = defaultACL; ; localParseACL = defaultACL)
      while (true)
      {
        return localParseACL;
        localParseUser = null;
        break label22:
        if (localParseUser != ParseUser.getCurrentUser())
        {
          label39: defaultACLWithCurrentUser = defaultACL.copy();
          defaultACLWithCurrentUser.setShared(true);
          defaultACLWithCurrentUser.setReadAccess(ParseUser.getCurrentUser(), true);
          defaultACLWithCurrentUser.setWriteAccess(ParseUser.getCurrentUser(), true);
          lastCurrentUser = new WeakReference(ParseUser.getCurrentUser());
        }
        localParseACL = defaultACLWithCurrentUser;
      }
  }

  private void prepareUnresolvedUser(ParseUser paramParseUser)
  {
    if (this.unresolvedUser == paramParseUser)
      return;
    this.permissionsById.remove("*unresolved");
    this.unresolvedUser = paramParseUser;
    paramParseUser.registerSaveListener(new UserResolutionListener(this));
  }

  private void resolveUser(ParseUser paramParseUser)
  {
    if (paramParseUser != this.unresolvedUser);
    while (true)
    {
      return;
      try
      {
        if (this.permissionsById.has("*unresolved"))
        {
          this.permissionsById.put(paramParseUser.getObjectId(), this.permissionsById.get("*unresolved"));
          this.permissionsById.remove("*unresolved");
        }
        this.unresolvedUser = null;
      }
      catch (JSONException localJSONException)
      {
        throw new RuntimeException(localJSONException);
      }
    }
  }

  private void setAccess(String paramString1, String paramString2, boolean paramBoolean)
  {
    JSONObject localJSONObject;
    try
    {
      localJSONObject = this.permissionsById.optJSONObject(paramString2);
      if (localJSONObject == null)
      {
        if (!(paramBoolean))
          return;
        localJSONObject = new JSONObject();
        this.permissionsById.put(paramString2, localJSONObject);
      }
      if (!(paramBoolean))
        break label90;
      localJSONObject.put(paramString1, true);
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException("JSON failure with ACL: " + localJSONException.getMessage());
    }
    label90: localJSONObject.remove(paramString1);
    if (localJSONObject.length() != 0)
      return;
    this.permissionsById.remove(paramString2);
  }

  public static void setDefaultACL(ParseACL paramParseACL, boolean paramBoolean)
  {
    defaultACLWithCurrentUser = null;
    lastCurrentUser = null;
    if (paramParseACL != null)
    {
      defaultACL = paramParseACL.copy();
      defaultACL.setShared(true);
      defaultACLUsesCurrentUser = paramBoolean;
    }
    while (true)
    {
      return;
      defaultACL = null;
    }
  }

  private void setUnresolvedReadAccess(ParseUser paramParseUser, boolean paramBoolean)
  {
    prepareUnresolvedUser(paramParseUser);
    setReadAccess("*unresolved", paramBoolean);
  }

  private void setUnresolvedWriteAccess(ParseUser paramParseUser, boolean paramBoolean)
  {
    prepareUnresolvedUser(paramParseUser);
    setWriteAccess("*unresolved", paramBoolean);
  }

  private static void validateRoleState(ParseRole paramParseRole)
  {
    if (paramParseRole.getObjectId() != null)
      return;
    throw new IllegalArgumentException("Roles must be saved to the server before they can be used in an ACL.");
  }

  ParseACL copy()
  {
    ParseACL localParseACL = new ParseACL();
    try
    {
      localParseACL.permissionsById = new JSONObject(this.permissionsById.toString());
      localParseACL.unresolvedUser = this.unresolvedUser;
      if (this.unresolvedUser != null)
        this.unresolvedUser.registerSaveListener(new UserResolutionListener(localParseACL));
      return localParseACL;
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException);
    }
  }

  public boolean getPublicReadAccess()
  {
    return getReadAccess("*");
  }

  public boolean getPublicWriteAccess()
  {
    return getWriteAccess("*");
  }

  public boolean getReadAccess(ParseUser paramParseUser)
  {
    if (paramParseUser == this.unresolvedUser);
    for (boolean bool = getReadAccess("*unresolved"); ; bool = getReadAccess(paramParseUser.getObjectId()))
    {
      return bool;
      if (paramParseUser.getObjectId() != null)
        continue;
      throw new IllegalArgumentException("cannot getReadAccess for a user with null id");
    }
  }

  public boolean getReadAccess(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("cannot getReadAccess for null userId");
    return getAccess("read", paramString);
  }

  public boolean getRoleReadAccess(ParseRole paramParseRole)
  {
    validateRoleState(paramParseRole);
    return getRoleReadAccess(paramParseRole.getName());
  }

  public boolean getRoleReadAccess(String paramString)
  {
    return getReadAccess("role:" + paramString);
  }

  public boolean getRoleWriteAccess(ParseRole paramParseRole)
  {
    validateRoleState(paramParseRole);
    return getRoleWriteAccess(paramParseRole.getName());
  }

  public boolean getRoleWriteAccess(String paramString)
  {
    return getWriteAccess("role:" + paramString);
  }

  public boolean getWriteAccess(ParseUser paramParseUser)
  {
    if (paramParseUser == this.unresolvedUser);
    for (boolean bool = getWriteAccess("*unresolved"); ; bool = getWriteAccess(paramParseUser.getObjectId()))
    {
      return bool;
      if (paramParseUser.getObjectId() != null)
        continue;
      throw new IllegalArgumentException("cannot getWriteAccess for a user with null id");
    }
  }

  public boolean getWriteAccess(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("cannot getWriteAccess for null userId");
    return getAccess("write", paramString);
  }

  boolean hasUnresolvedUser()
  {
    if (this.unresolvedUser != null);
    for (int i = 1; ; i = 0)
      return i;
  }

  boolean isShared()
  {
    return this.shared;
  }

  public void setPublicReadAccess(boolean paramBoolean)
  {
    setReadAccess("*", paramBoolean);
  }

  public void setPublicWriteAccess(boolean paramBoolean)
  {
    setWriteAccess("*", paramBoolean);
  }

  public void setReadAccess(ParseUser paramParseUser, boolean paramBoolean)
  {
    if (paramParseUser.getObjectId() == null)
      if (paramParseUser.isLazy())
        setUnresolvedReadAccess(paramParseUser, paramBoolean);
    while (true)
    {
      return;
      throw new IllegalArgumentException("cannot setReadAccess for a user with null id");
      setReadAccess(paramParseUser.getObjectId(), paramBoolean);
    }
  }

  public void setReadAccess(String paramString, boolean paramBoolean)
  {
    if (paramString == null)
      throw new IllegalArgumentException("cannot setReadAccess for null userId");
    setAccess("read", paramString, paramBoolean);
  }

  public void setRoleReadAccess(ParseRole paramParseRole, boolean paramBoolean)
  {
    validateRoleState(paramParseRole);
    setRoleReadAccess(paramParseRole.getName(), paramBoolean);
  }

  public void setRoleReadAccess(String paramString, boolean paramBoolean)
  {
    setReadAccess("role:" + paramString, paramBoolean);
  }

  public void setRoleWriteAccess(ParseRole paramParseRole, boolean paramBoolean)
  {
    validateRoleState(paramParseRole);
    setRoleWriteAccess(paramParseRole.getName(), paramBoolean);
  }

  public void setRoleWriteAccess(String paramString, boolean paramBoolean)
  {
    setWriteAccess("role:" + paramString, paramBoolean);
  }

  void setShared(boolean paramBoolean)
  {
    this.shared = paramBoolean;
  }

  public void setWriteAccess(ParseUser paramParseUser, boolean paramBoolean)
  {
    if (paramParseUser.getObjectId() == null)
      if (paramParseUser.isLazy())
        setUnresolvedWriteAccess(paramParseUser, paramBoolean);
    while (true)
    {
      return;
      throw new IllegalArgumentException("cannot setWriteAccess for a user with null id");
      setWriteAccess(paramParseUser.getObjectId(), paramBoolean);
    }
  }

  public void setWriteAccess(String paramString, boolean paramBoolean)
  {
    if (paramString == null)
      throw new IllegalArgumentException("cannot setWriteAccess for null userId");
    setAccess("write", paramString, paramBoolean);
  }

  JSONObject toJSONObject()
  {
    return this.permissionsById;
  }

  private static class UserResolutionListener extends GetCallback
  {
    private final WeakReference<ParseACL> parent;

    public UserResolutionListener(ParseACL paramParseACL)
    {
      this.parent = new WeakReference(paramParseACL);
    }

    public void done(ParseObject paramParseObject, ParseException paramParseException)
    {
      try
      {
        ParseACL localParseACL = (ParseACL)this.parent.get();
        if (localParseACL != null)
          localParseACL.resolveUser((ParseUser)paramParseObject);
        return;
      }
      finally
      {
        paramParseObject.unregisterSaveListener(this);
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ParseACL
 * JD-Core Version:    0.5.3
 */