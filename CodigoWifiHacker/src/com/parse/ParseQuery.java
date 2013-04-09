package com.parse;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ParseQuery
{
  private static final String TAG = "com.parse.ParseQuery";
  private CachePolicy cachePolicy;
  private String className;
  private ParseCommand currentCommand = null;
  private BackgroundTask<?> currentTask = null;
  private ArrayList<String> include;
  private Boolean isRunning = Boolean.valueOf(false);
  private int limit;
  private long maxCacheAge;
  private long objectsParsed;
  private String order;
  private long queryReceived;
  private long querySent;
  private long queryStart;
  private int skip;
  private boolean trace;
  private HashMap<String, Object> where;

  public ParseQuery(String paramString)
  {
    this.className = paramString;
    this.limit = -1;
    this.skip = 0;
    this.where = new HashMap();
    this.include = new ArrayList();
    this.cachePolicy = CachePolicy.IGNORE_CACHE;
    this.maxCacheAge = 9223372036854775807L;
    this.trace = false;
  }

  private void addCondition(String paramString1, String paramString2, Object paramObject)
  {
    checkIfRunning();
    Object localObject1 = Parse.maybeReferenceAndEncode(paramObject);
    boolean bool1 = this.where.containsKey(paramString1);
    JSONObject localJSONObject = null;
    if (bool1)
    {
      Object localObject2 = this.where.get(paramString1);
      boolean bool2 = localObject2 instanceof JSONObject;
      localJSONObject = null;
      if (bool2)
        localJSONObject = (JSONObject)localObject2;
    }
    if (localJSONObject == null)
      localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put(paramString2, localObject1);
      this.where.put(paramString1, localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException.getMessage());
    }
  }

  private void checkIfRunning()
  {
    checkIfRunning(false);
  }

  // ERROR //
  private void checkIfRunning(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	com/parse/ParseQuery:isRunning	Ljava/lang/Boolean;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 53	com/parse/ParseQuery:isRunning	Ljava/lang/Boolean;
    //   11: invokevirtual 161	java/lang/Boolean:booleanValue	()Z
    //   14: ifeq +18 -> 32
    //   17: new 148	java/lang/RuntimeException
    //   20: dup
    //   21: ldc 163
    //   23: invokespecial 154	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   26: athrow
    //   27: astore_3
    //   28: aload_2
    //   29: monitorexit
    //   30: aload_3
    //   31: athrow
    //   32: iload_1
    //   33: ifeq +11 -> 44
    //   36: aload_0
    //   37: iconst_1
    //   38: invokestatic 51	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   41: putfield 53	com/parse/ParseQuery:isRunning	Ljava/lang/Boolean;
    //   44: aload_2
    //   45: monitorexit
    //   46: return
    //
    // Exception table:
    //   from	to	target	type
    //   7	30	27	finally
    //   36	46	27	finally
  }

  public static void clearAllCachedResults()
  {
    Parse.clearCacheDir();
  }

  private List<ParseObject> convertFindResponse(JSONObject paramJSONObject)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    JSONArray localJSONArray = paramJSONObject.getJSONArray("results");
    if (localJSONArray == null)
    {
      Parse.logD("com.parse.ParseQuery", "null results in find response");
      this.objectsParsed = System.nanoTime();
      if (paramJSONObject.has("trace"))
      {
        Object localObject = paramJSONObject.get("trace");
        String str1 = "Query pre-processing took " + (this.querySent - this.queryStart) + " milliseconds\n";
        String str2 = str1 + localObject + "\n";
        Parse.logD("ParseQuery", str2 + "Client side parsing took " + (this.objectsParsed - this.queryReceived) + " millisecond\n");
      }
      return localArrayList;
    }
    for (int i = 0; ; ++i)
    {
      if (i < localJSONArray.length());
      ParseObject localParseObject = ParseObject.createWithoutData(this.className, null);
      localParseObject.mergeAfterFetch(localJSONArray.getJSONObject(i));
      localArrayList.add(localParseObject);
    }
  }

  private Integer countFromCache()
    throws ParseException
  {
    Object localObject = Parse.jsonFromKeyValueCache(makeCountCommand().getCacheKey(), this.maxCacheAge);
    if (localObject == null)
      throw new ParseException(120, "results not cached");
    if (!(localObject instanceof JSONObject))
      throw new ParseException(120, "the cache contains the wrong datatype");
    JSONObject localJSONObject = (JSONObject)localObject;
    try
    {
      Integer localInteger = Integer.valueOf(localJSONObject.getInt("count"));
      return localInteger;
    }
    catch (JSONException localJSONException)
    {
      throw new ParseException(120, "the cache contains corrupted json");
    }
  }

  private int countFromNetwork()
    throws ParseException
  {
    if (this.cachePolicy != CachePolicy.IGNORE_CACHE);
    for (boolean bool = true; ; bool = false)
    {
      this.currentCommand = makeCountCommand();
      return ((JSONObject)this.currentCommand.perform(bool)).optInt("count");
    }
  }

  private int countWithCachePolicy(CachePolicy paramCachePolicy)
    throws ParseException
  {
    return ((Integer)runCommandWithPolicy(new CommandDelegate()
    {
      public Integer runFromCache()
        throws ParseException
      {
        return ParseQuery.this.countFromCache();
      }

      public Integer runOnNetwork(boolean paramBoolean)
        throws ParseException
      {
        return Integer.valueOf(ParseQuery.this.countFromNetwork());
      }
    }
    , paramCachePolicy)).intValue();
  }

  private List<ParseObject> findFromCache()
    throws ParseException
  {
    Object localObject = Parse.jsonFromKeyValueCache(makeFindCommand().getCacheKey(), this.maxCacheAge);
    if (localObject == null)
      throw new ParseException(120, "results not cached");
    if (!(localObject instanceof JSONObject))
      throw new ParseException(120, "the cache contains the wrong datatype");
    JSONObject localJSONObject = (JSONObject)localObject;
    try
    {
      List localList = convertFindResponse(localJSONObject);
      return localList;
    }
    catch (JSONException localJSONException)
    {
      throw new ParseException(120, "the cache contains corrupted json");
    }
  }

  private List<ParseObject> findFromNetwork(boolean paramBoolean)
    throws ParseException
  {
    this.currentCommand = makeFindCommand();
    if (paramBoolean)
      this.currentCommand.enableRetrying();
    Object localObject = new ArrayList();
    if (this.currentCommand == null)
      label34: return localObject;
    boolean bool;
    if (this.cachePolicy != CachePolicy.IGNORE_CACHE)
      bool = true;
    while (true)
    {
      this.querySent = System.nanoTime();
      JSONObject localJSONObject = (JSONObject)this.currentCommand.perform(bool);
      this.queryReceived = System.nanoTime();
      try
      {
        List localList = convertFindResponse(localJSONObject);
        localObject = localList;
        break label34:
        bool = false;
      }
      catch (JSONException localJSONException)
      {
        throw new RuntimeException(localJSONException.getMessage());
      }
    }
  }

  private List<ParseObject> findWithCachePolicy(CachePolicy paramCachePolicy)
    throws ParseException
  {
    return ((List)runCommandWithPolicy(new CommandDelegate()
    {
      public List<ParseObject> runFromCache()
        throws ParseException
      {
        return ParseQuery.this.findFromCache();
      }

      public List<ParseObject> runOnNetwork(boolean paramBoolean)
        throws ParseException
      {
        return ParseQuery.this.findFromNetwork(paramBoolean);
      }
    }
    , paramCachePolicy));
  }

  private void finishedRunning()
  {
    synchronized (this.isRunning)
    {
      this.isRunning = Boolean.valueOf(false);
      this.currentTask = null;
      this.currentCommand = null;
      return;
    }
  }

  @Deprecated
  public static ParseQuery getUserQuery()
  {
    return ParseUser.getQuery();
  }

  private ParseCommand makeCountCommand()
  {
    ParseCommand localParseCommand = makeFindCommand();
    localParseCommand.put("limit", 0);
    localParseCommand.put("count", 1);
    return localParseCommand;
  }

  private ParseCommand makeFindCommand()
  {
    ParseCommand localParseCommand = new ParseCommand("find");
    JSONObject localJSONObject = getFindParams();
    Iterator localIterator = localJSONObject.keys();
    while (true)
      try
      {
        if (!(localIterator.hasNext()))
          break label71;
        String str = (String)localIterator.next();
        localParseCommand.put(str, localJSONObject.get(str).toString());
      }
      catch (JSONException localJSONException)
      {
        throw new RuntimeException(localJSONException);
      }
    label71: return localParseCommand;
  }

  private Object maybeEncodeSubQueries(Object paramObject)
    throws JSONException
  {
    if (!(paramObject instanceof JSONObject));
    while (true)
    {
      return paramObject;
      JSONObject localJSONObject1 = (JSONObject)paramObject;
      Iterator localIterator = localJSONObject1.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = localJSONObject1.opt(str);
        if (localObject instanceof ParseQuery)
        {
          JSONObject localJSONObject2 = ((ParseQuery)localObject).getFindParams();
          if (!(localJSONObject2.isNull("data")))
          {
            localJSONObject2.put("where", localJSONObject2.get("data"));
            localJSONObject2.remove("data");
          }
          localJSONObject2.put("className", localJSONObject2.remove("classname"));
          localJSONObject1.put(str, localJSONObject2);
        }
        if (!(localObject instanceof JSONObject))
          continue;
        localJSONObject1.put(str, maybeEncodeSubQueries(localObject));
      }
      paramObject = localJSONObject1;
    }
  }

  public static ParseQuery or(List<ParseQuery> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = null;
    for (int i = 0; i < paramList.size(); ++i)
    {
      if ((localObject != null) && (!(((ParseQuery)paramList.get(i)).className.equals(localObject))))
        throw new IllegalArgumentException("All of the queries in an or query must be on the same class ");
      localObject = ((ParseQuery)paramList.get(i)).className;
      localArrayList.add(paramList.get(i));
    }
    if (localArrayList.size() == 0)
      throw new IllegalArgumentException("Can't take an or of an empty list of queries");
    return ((ParseQuery)new ParseQuery((String)localObject).whereSatifiesAnyOf(localArrayList));
  }

  private <T> T runCommandWithPolicy(CommandDelegate<T> paramCommandDelegate, CachePolicy paramCachePolicy)
    throws ParseException
  {
    Object localObject1;
    switch (7.$SwitchMap$com$parse$ParseQuery$CachePolicy[paramCachePolicy.ordinal()])
    {
    default:
      throw new RuntimeException("Unknown cache policy: " + this.cachePolicy);
    case 1:
    case 2:
      localObject1 = paramCommandDelegate.runOnNetwork(true);
    case 3:
    case 4:
    case 5:
      while (true)
      {
        return localObject1;
        localObject1 = paramCommandDelegate.runFromCache();
        continue;
        try
        {
          Object localObject3 = paramCommandDelegate.runFromCache();
          localObject1 = localObject3;
        }
        catch (ParseException localParseException2)
        {
          localObject1 = paramCommandDelegate.runOnNetwork(true);
        }
        continue;
        try
        {
          Object localObject2 = paramCommandDelegate.runOnNetwork(false);
          localObject1 = localObject2;
        }
        catch (ParseException localParseException1)
        {
          if (localParseException1.getCode() != 100)
            throw new ParseException(localParseException1);
          localObject1 = paramCommandDelegate.runFromCache();
        }
      }
    case 6:
    }
    throw new RuntimeException("You cannot use the cache policy CACHE_THEN_NETWORK with find()");
  }

  private ParseQuery whereSatifiesAnyOf(List<ParseQuery> paramList)
  {
    this.where.put("$or", paramList);
    return this;
  }

  public ParseQuery addAscendingOrder(String paramString)
  {
    checkIfRunning();
    if (this.order == null);
    for (this.order = paramString; ; this.order = this.order + "," + paramString)
      return this;
  }

  public ParseQuery addDescendingOrder(String paramString)
  {
    checkIfRunning();
    if (this.order == null);
    for (this.order = "-" + paramString; ; this.order = this.order + ",-" + paramString)
      return this;
  }

  public void cancel()
  {
    if (this.currentTask != null)
    {
      this.currentTask.cancel(true);
      this.currentTask = null;
    }
    if (this.currentCommand != null)
    {
      this.currentCommand.cancel();
      this.currentCommand = null;
    }
    this.isRunning = Boolean.valueOf(false);
  }

  public void clearCachedResult()
  {
    Parse.clearFromKeyValueCache(makeFindCommand().getCacheKey());
  }

  public int count()
    throws ParseException
  {
    return count(true);
  }

  protected int count(boolean paramBoolean)
    throws ParseException
  {
    if (paramBoolean)
      checkIfRunning(true);
    try
    {
      int i = countWithCachePolicy(this.cachePolicy);
      return i;
    }
    finally
    {
      finishedRunning();
    }
  }

  public void countInBackground(CountCallback paramCountCallback)
  {
    checkIfRunning(true);
    5 local5 = new BackgroundTask(paramCountCallback)
    {
      public Integer run()
        throws ParseException
      {
        Integer localInteger = Integer.valueOf(ParseQuery.this.count(false));
        ParseQuery.access$502(ParseQuery.this, null);
        return localInteger;
      }
    };
    this.currentTask = local5;
    BackgroundTask.executeTask(local5);
  }

  public List<ParseObject> find()
    throws ParseException
  {
    return find(true);
  }

  public List<ParseObject> find(boolean paramBoolean)
    throws ParseException
  {
    if (paramBoolean)
      checkIfRunning(true);
    this.queryStart = System.nanoTime();
    try
    {
      List localList = findWithCachePolicy(this.cachePolicy);
      return localList;
    }
    finally
    {
      finishedRunning();
    }
  }

  public void findInBackground(FindCallback paramFindCallback)
  {
    checkIfRunning(true);
    this.queryStart = System.nanoTime();
    if (this.cachePolicy == CachePolicy.CACHE_THEN_NETWORK);
    label34: CachePolicy localCachePolicy;
    try
    {
      paramFindCallback.done(findWithCachePolicy(CachePolicy.CACHE_ONLY), null);
      localCachePolicy = CachePolicy.NETWORK_ONLY;
      3 local3 = new BackgroundTask(paramFindCallback, localCachePolicy)
      {
        public List<ParseObject> run()
          throws ParseException
        {
          List localList = ParseQuery.this.findWithCachePolicy(this.val$callbackCachePolicy);
          ParseQuery.access$502(ParseQuery.this, null);
          return localList;
        }
      };
      this.currentTask = local3;
      BackgroundTask.executeTask(local3);
      return;
    }
    catch (ParseException localParseException)
    {
      paramFindCallback.done(null, localParseException);
      break label34:
      localCachePolicy = this.cachePolicy;
    }
  }

  public ParseObject get(String paramString)
    throws ParseException
  {
    return get(paramString, true);
  }

  protected ParseObject get(String paramString, boolean paramBoolean)
    throws ParseException
  {
    this.skip = -1;
    this.where = new HashMap();
    this.where.put("objectId", paramString);
    return getFirst(paramBoolean);
  }

  public CachePolicy getCachePolicy()
  {
    return this.cachePolicy;
  }

  public String getClassName()
  {
    return this.className;
  }

  JSONObject getFindParams()
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2;
    while (true)
    {
      String str;
      JSONArray localJSONArray;
      ParseQuery localParseQuery;
      try
      {
        localJSONObject1.put("classname", this.className);
        localJSONObject2 = new JSONObject();
        Iterator localIterator1 = this.where.keySet().iterator();
        if (!(localIterator1.hasNext()))
          break label313;
        str = (String)localIterator1.next();
        if (!(str.equals("$or")))
          break label286;
        List localList = (List)this.where.get(str);
        localJSONArray = new JSONArray();
        Iterator localIterator2 = localList.iterator();
        if (!(localIterator2.hasNext()))
          break label273;
        localParseQuery = (ParseQuery)localIterator2.next();
        if (localParseQuery.limit >= 0)
          throw new IllegalArgumentException("Cannot have limits in sub queries of an 'OR' query");
      }
      catch (JSONException localJSONException)
      {
        throw new RuntimeException(localJSONException.getMessage());
      }
      if (localParseQuery.skip > 0)
        throw new IllegalArgumentException("Cannot have skips in sub queries of an 'OR' query");
      if (localParseQuery.order != null)
        throw new IllegalArgumentException("Cannot have an order in sub queries of an 'OR' query");
      if (!(localParseQuery.include.isEmpty()))
        throw new IllegalArgumentException("Cannot have an include in sub queries of an 'OR' query");
      JSONObject localJSONObject3 = localParseQuery.getFindParams();
      if (!(localJSONObject3.isNull("data")))
        localJSONArray.put(localJSONObject3.get("data"));
      localJSONArray.put(new JSONObject());
      continue;
      label273: localJSONObject2.put(str, localJSONArray);
      continue;
      label286: localJSONObject2.put(str, Parse.maybeReferenceAndEncode(maybeEncodeSubQueries(this.where.get(str))));
    }
    label313: localJSONObject1.put("data", localJSONObject2);
    if (this.limit >= 0)
      localJSONObject1.put("limit", this.limit);
    if (this.skip > 0)
      localJSONObject1.put("skip", this.skip);
    if (this.order != null)
      localJSONObject1.put("order", this.order);
    if (!(this.include.isEmpty()))
      localJSONObject1.put("include", Parse.join(this.include, ","));
    if (this.trace)
      localJSONObject1.put("trace", "1");
    return localJSONObject1;
  }

  public ParseObject getFirst()
    throws ParseException
  {
    return getFirst(true);
  }

  protected ParseObject getFirst(boolean paramBoolean)
    throws ParseException
  {
    if (paramBoolean)
      checkIfRunning(true);
    this.limit = 1;
    List localList = find(false);
    if ((localList != null) && (localList.size() > 0))
      return ((ParseObject)localList.get(0));
    throw new ParseException(101, "no results matched the query");
  }

  public void getFirstInBackground(GetCallback paramGetCallback)
  {
    setLimit(1);
    findInBackground(new FindCallback(paramGetCallback)
    {
      public void done(List<ParseObject> paramList, ParseException paramParseException)
      {
        if ((paramList != null) && (paramList.size() > 0))
          this.val$callback.internalDone((ParseObject)paramList.get(0), paramParseException);
        while (true)
        {
          return;
          if (paramParseException != null)
            this.val$callback.internalDone(null, paramParseException);
          this.val$callback.internalDone(null, new ParseException(101, "no results found for query"));
        }
      }
    });
  }

  public void getInBackground(String paramString, GetCallback paramGetCallback)
  {
    checkIfRunning(true);
    6 local6 = new BackgroundTask(paramGetCallback, paramString)
    {
      public ParseObject run()
        throws ParseException
      {
        ParseObject localParseObject = ParseQuery.this.get(this.val$finalObjectId, false);
        ParseQuery.access$502(ParseQuery.this, null);
        return localParseObject;
      }
    };
    this.currentTask = local6;
    BackgroundTask.executeTask(local6);
  }

  public int getLimit()
  {
    return this.limit;
  }

  public long getMaxCacheAge()
  {
    return this.maxCacheAge;
  }

  public int getSkip()
  {
    return this.skip;
  }

  public boolean hasCachedResult()
  {
    if (Parse.loadFromKeyValueCache(makeFindCommand().getCacheKey(), this.maxCacheAge) != null);
    for (int i = 1; ; i = 0)
      return i;
  }

  public void include(String paramString)
  {
    checkIfRunning();
    this.include.add(paramString);
  }

  public ParseQuery orderByAscending(String paramString)
  {
    checkIfRunning();
    this.order = paramString;
    return this;
  }

  public ParseQuery orderByDescending(String paramString)
  {
    checkIfRunning();
    this.order = "-" + paramString;
    return this;
  }

  public void setCachePolicy(CachePolicy paramCachePolicy)
  {
    checkIfRunning();
    this.cachePolicy = paramCachePolicy;
  }

  public void setLimit(int paramInt)
  {
    checkIfRunning();
    this.limit = paramInt;
  }

  public void setMaxCacheAge(long paramLong)
  {
    this.maxCacheAge = paramLong;
  }

  public void setSkip(int paramInt)
  {
    checkIfRunning();
    this.skip = paramInt;
  }

  public void setTrace(boolean paramBoolean)
  {
    this.trace = paramBoolean;
  }

  public ParseQuery whereContainedIn(String paramString, Collection<? extends Object> paramCollection)
  {
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
      localJSONArray.put(Parse.maybeReferenceAndEncode(localIterator.next()));
    addCondition(paramString, "$in", localJSONArray);
    return this;
  }

  public ParseQuery whereContains(String paramString1, String paramString2)
  {
    whereMatches(paramString1, Pattern.quote(paramString2));
    return this;
  }

  public ParseQuery whereDoesNotExist(String paramString)
  {
    addCondition(paramString, "$exists", Boolean.valueOf(false));
    return this;
  }

  public ParseQuery whereDoesNotMatchQuery(String paramString, ParseQuery paramParseQuery)
  {
    addCondition(paramString, "$notInQuery", paramParseQuery);
    return this;
  }

  public ParseQuery whereEndsWith(String paramString1, String paramString2)
  {
    whereMatches(paramString1, Pattern.quote(paramString2) + "$");
    return this;
  }

  public ParseQuery whereEqualTo(String paramString, Object paramObject)
  {
    checkIfRunning();
    if (paramObject instanceof Date)
      paramObject = Parse.dateToObject((Date)paramObject);
    this.where.put(paramString, paramObject);
    return this;
  }

  public ParseQuery whereExists(String paramString)
  {
    addCondition(paramString, "$exists", Boolean.valueOf(true));
    return this;
  }

  public ParseQuery whereGreaterThan(String paramString, Object paramObject)
  {
    addCondition(paramString, "$gt", paramObject);
    return this;
  }

  public ParseQuery whereGreaterThanOrEqualTo(String paramString, Object paramObject)
  {
    addCondition(paramString, "$gte", paramObject);
    return this;
  }

  public ParseQuery whereLessThan(String paramString, Object paramObject)
  {
    addCondition(paramString, "$lt", paramObject);
    return this;
  }

  public ParseQuery whereLessThanOrEqualTo(String paramString, Object paramObject)
  {
    addCondition(paramString, "$lte", paramObject);
    return this;
  }

  public ParseQuery whereMatches(String paramString1, String paramString2)
  {
    addCondition(paramString1, "$regex", paramString2);
    return this;
  }

  public ParseQuery whereMatches(String paramString1, String paramString2, String paramString3)
  {
    addCondition(paramString1, "$regex", paramString2);
    if (paramString3.length() != 0)
      addCondition(paramString1, "$options", paramString3);
    return this;
  }

  public ParseQuery whereMatchesKeyInQuery(String paramString1, String paramString2, ParseQuery paramParseQuery)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("key", paramString2);
      localJSONObject.put("query", paramParseQuery);
      addCondition(paramString1, "$select", localJSONObject);
      return this;
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException);
    }
  }

  public ParseQuery whereMatchesQuery(String paramString, ParseQuery paramParseQuery)
  {
    addCondition(paramString, "$inQuery", paramParseQuery);
    return this;
  }

  public ParseQuery whereNear(String paramString, ParseGeoPoint paramParseGeoPoint)
  {
    addCondition(paramString, "$nearSphere", paramParseGeoPoint);
    return this;
  }

  public ParseQuery whereNotContainedIn(String paramString, Collection<? extends Object> paramCollection)
  {
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
      localJSONArray.put(Parse.maybeReferenceAndEncode(localIterator.next()));
    addCondition(paramString, "$nin", localJSONArray);
    return this;
  }

  public ParseQuery whereNotEqualTo(String paramString, Object paramObject)
  {
    addCondition(paramString, "$ne", paramObject);
    return this;
  }

  ParseQuery whereRelatedTo(ParseObject paramParseObject, String paramString)
  {
    addCondition("$relatedTo", "object", Parse.maybeReferenceAndEncode(paramParseObject));
    addCondition("$relatedTo", "key", paramString);
    return this;
  }

  public ParseQuery whereStartsWith(String paramString1, String paramString2)
  {
    whereMatches(paramString1, "^" + Pattern.quote(paramString2));
    return this;
  }

  public ParseQuery whereWithinGeoBox(String paramString, ParseGeoPoint paramParseGeoPoint1, ParseGeoPoint paramParseGeoPoint2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(Parse.maybeReferenceAndEncode(paramParseGeoPoint1));
    localArrayList.add(Parse.maybeReferenceAndEncode(paramParseGeoPoint2));
    HashMap localHashMap = new HashMap();
    localHashMap.put("$box", localArrayList);
    addCondition(paramString, "$within", localHashMap);
    return this;
  }

  public ParseQuery whereWithinKilometers(String paramString, ParseGeoPoint paramParseGeoPoint, double paramDouble)
  {
    whereWithinRadians(paramString, paramParseGeoPoint, paramDouble / ParseGeoPoint.EARTH_MEAN_RADIUS_KM);
    return this;
  }

  public ParseQuery whereWithinMiles(String paramString, ParseGeoPoint paramParseGeoPoint, double paramDouble)
  {
    whereWithinRadians(paramString, paramParseGeoPoint, paramDouble / ParseGeoPoint.EARTH_MEAN_RADIUS_MILE);
    return this;
  }

  public ParseQuery whereWithinRadians(String paramString, ParseGeoPoint paramParseGeoPoint, double paramDouble)
  {
    addCondition(paramString, "$nearSphere", paramParseGeoPoint);
    addCondition(paramString, "$maxDistance", Double.valueOf(paramDouble));
    return this;
  }

  public static enum CachePolicy
  {
    static
    {
      CACHE_ONLY = new CachePolicy("CACHE_ONLY", 1);
      NETWORK_ONLY = new CachePolicy("NETWORK_ONLY", 2);
      CACHE_ELSE_NETWORK = new CachePolicy("CACHE_ELSE_NETWORK", 3);
      NETWORK_ELSE_CACHE = new CachePolicy("NETWORK_ELSE_CACHE", 4);
      CACHE_THEN_NETWORK = new CachePolicy("CACHE_THEN_NETWORK", 5);
      CachePolicy[] arrayOfCachePolicy = new CachePolicy[6];
      arrayOfCachePolicy[0] = IGNORE_CACHE;
      arrayOfCachePolicy[1] = CACHE_ONLY;
      arrayOfCachePolicy[2] = NETWORK_ONLY;
      arrayOfCachePolicy[3] = CACHE_ELSE_NETWORK;
      arrayOfCachePolicy[4] = NETWORK_ELSE_CACHE;
      arrayOfCachePolicy[5] = CACHE_THEN_NETWORK;
      $VALUES = arrayOfCachePolicy;
    }
  }

  private static abstract interface CommandDelegate<T>
  {
    public abstract T runFromCache()
      throws ParseException;

    public abstract T runOnNetwork(boolean paramBoolean)
      throws ParseException;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ParseQuery
 * JD-Core Version:    0.5.3
 */