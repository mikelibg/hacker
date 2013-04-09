package com.parse;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ParseRelationOperation
  implements ParseFieldOperation
{
  private Set<String> relationsToAdd;
  private Set<String> relationsToRemove;
  private String targetClass;

  private ParseRelationOperation(String paramString, Set<String> paramSet1, Set<String> paramSet2)
  {
    this.targetClass = paramString;
    this.relationsToAdd = new HashSet(paramSet1);
    this.relationsToRemove = new HashSet(paramSet2);
  }

  ParseRelationOperation(Set<ParseObject> paramSet1, Set<ParseObject> paramSet2)
  {
    this.targetClass = null;
    this.relationsToAdd = new HashSet();
    this.relationsToRemove = new HashSet();
    if (paramSet1 != null)
    {
      Iterator localIterator2 = paramSet1.iterator();
      ParseObject localParseObject2;
      do
        while (true)
        {
          if (!(localIterator2.hasNext()))
            break label142;
          localParseObject2 = (ParseObject)localIterator2.next();
          if (localParseObject2.getObjectId() == null)
            throw new IllegalArgumentException("All objects in a relation must have object ids.");
          this.relationsToAdd.add(localParseObject2.getObjectId());
          if (this.targetClass != null)
            break;
          this.targetClass = localParseObject2.getClassName();
        }
      while (this.targetClass.equals(localParseObject2.getClassName()));
      throw new IllegalArgumentException("All objects in a relation must be of the same class.");
    }
    if (paramSet2 != null)
    {
      label142: Iterator localIterator1 = paramSet2.iterator();
      ParseObject localParseObject1;
      do
        while (true)
        {
          if (!(localIterator1.hasNext()))
            break label250;
          localParseObject1 = (ParseObject)localIterator1.next();
          if (localParseObject1.getObjectId() == null)
            throw new IllegalArgumentException("All objects in a relation must have object ids.");
          this.relationsToRemove.add(localParseObject1.getObjectId());
          if (this.targetClass != null)
            break;
          this.targetClass = localParseObject1.getClassName();
        }
      while (this.targetClass.equals(localParseObject1.getClassName()));
      throw new IllegalArgumentException("All objects in a relation must be of the same class.");
    }
    if (this.targetClass != null)
      label250: return;
    throw new IllegalArgumentException("Cannot create a ParseRelationOperation with no objects.");
  }

  public Object apply(Object paramObject, ParseObject paramParseObject, String paramString)
  {
    ParseRelation localParseRelation1;
    if (paramObject == null)
    {
      localParseRelation1 = new ParseRelation(paramParseObject, paramString);
      localParseRelation1.setTargetClass(this.targetClass);
    }
    ParseRelation localParseRelation2;
    for (Object localObject = localParseRelation1; ; localObject = localParseRelation2)
    {
      return localObject;
      if (!(paramObject instanceof ParseRelation))
        break;
      localParseRelation2 = (ParseRelation)paramObject;
      if ((this.targetClass == null) || (localParseRelation2.getTargetClass() == null))
        continue;
      if (!(localParseRelation2.getTargetClass().equals(this.targetClass)))
        throw new IllegalArgumentException("Related object object must be of class " + localParseRelation2.getTargetClass() + ", but " + this.targetClass + " was passed in.");
      localParseRelation2.setTargetClass(this.targetClass);
    }
    throw new IllegalArgumentException("Operation is invalid after previous operation.");
  }

  JSONArray convertSetToArray(Set<String> paramSet)
    throws JSONException
  {
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("__type", "Pointer");
      localJSONObject.put("className", this.targetClass);
      localJSONObject.put("objectId", str);
      localJSONArray.put(localJSONObject);
    }
    return localJSONArray;
  }

  public JSONObject encode()
    throws JSONException
  {
    int i = this.relationsToAdd.size();
    JSONObject localJSONObject1 = null;
    if (i > 0)
    {
      localJSONObject1 = new JSONObject();
      localJSONObject1.put("__op", "AddRelation");
      localJSONObject1.put("objects", convertSetToArray(this.relationsToAdd));
    }
    int j = this.relationsToRemove.size();
    JSONObject localJSONObject2 = null;
    if (j > 0)
    {
      localJSONObject2 = new JSONObject();
      localJSONObject2.put("__op", "RemoveRelation");
      localJSONObject2.put("objects", convertSetToArray(this.relationsToRemove));
    }
    JSONObject localJSONObject3;
    if ((localJSONObject1 != null) && (localJSONObject2 != null))
    {
      localJSONObject3 = new JSONObject();
      localJSONObject3.put("__op", "Batch");
      JSONArray localJSONArray = new JSONArray();
      localJSONArray.put(localJSONObject1);
      localJSONArray.put(localJSONObject2);
      localJSONObject3.put("ops", localJSONArray);
    }
    while (true)
    {
      return localJSONObject3;
      if (localJSONObject1 != null)
        localJSONObject3 = localJSONObject1;
      if (localJSONObject2 == null)
        break;
      localJSONObject3 = localJSONObject2;
    }
    throw new IllegalArgumentException("A ParseRelationOperation was created without any data.");
  }

  String getTargetClass()
  {
    return this.targetClass;
  }

  public ParseFieldOperation mergeWithPrevious(ParseFieldOperation paramParseFieldOperation)
  {
    if (paramParseFieldOperation == null);
    while (true)
    {
      return this;
      if (paramParseFieldOperation instanceof ParseDeleteOperation)
        throw new IllegalArgumentException("You can't modify a relation after deleting it.");
      if (!(paramParseFieldOperation instanceof ParseRelationOperation))
        break;
      ParseRelationOperation localParseRelationOperation = (ParseRelationOperation)paramParseFieldOperation;
      if ((localParseRelationOperation.targetClass != null) && (!(localParseRelationOperation.targetClass.equals(this.targetClass))))
        throw new IllegalArgumentException("Related object object must be of class " + localParseRelationOperation.targetClass + ", but " + this.targetClass + " was passed in.");
      HashSet localHashSet1 = new HashSet(localParseRelationOperation.relationsToAdd);
      HashSet localHashSet2 = new HashSet(localParseRelationOperation.relationsToRemove);
      if (this.relationsToAdd != null)
      {
        localHashSet1.addAll(this.relationsToAdd);
        localHashSet2.removeAll(this.relationsToAdd);
      }
      if (this.relationsToRemove != null)
      {
        localHashSet1.removeAll(this.relationsToRemove);
        localHashSet2.addAll(this.relationsToRemove);
      }
      this = new ParseRelationOperation(this.targetClass, localHashSet1, localHashSet2);
    }
    throw new IllegalArgumentException("Operation is invalid after previous operation.");
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ParseRelationOperation
 * JD-Core Version:    0.5.3
 */