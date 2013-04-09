package com.parse;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ParseRemoveOperation
  implements ParseFieldOperation
{
  protected HashSet<Object> objects = new HashSet();

  public ParseRemoveOperation(Object paramObject)
  {
    this.objects.add(paramObject);
  }

  public ParseRemoveOperation(Collection<?> paramCollection)
  {
    this.objects.addAll(paramCollection);
  }

  public Object apply(Object paramObject, ParseObject paramParseObject, String paramString)
  {
    Object localObject;
    if (paramObject == null)
      localObject = new ArrayList();
    while (true)
    {
      return localObject;
      if (paramObject instanceof JSONArray)
        localObject = new JSONArray((ArrayList)apply(ParseFieldOperations.jsonArrayAsArrayList((JSONArray)paramObject), paramParseObject, paramString));
      if (!(paramObject instanceof List))
        break;
      localObject = new ArrayList((List)paramObject);
      ((ArrayList)localObject).removeAll(this.objects);
    }
    throw new IllegalArgumentException("Operation is invalid after previous operation.");
  }

  public JSONObject encode()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("__op", "Remove");
    localJSONObject.put("objects", Parse.maybeReferenceAndEncode(new ArrayList(this.objects)));
    return localJSONObject;
  }

  public ParseFieldOperation mergeWithPrevious(ParseFieldOperation paramParseFieldOperation)
  {
    if (paramParseFieldOperation == null);
    while (true)
    {
      return this;
      if (paramParseFieldOperation instanceof ParseDeleteOperation)
        this = new ParseSetOperation(this.objects);
      if (paramParseFieldOperation instanceof ParseSetOperation)
      {
        Object localObject = ((ParseSetOperation)paramParseFieldOperation).getValue();
        if (localObject instanceof JSONArray)
        {
          ArrayList localArrayList2 = ParseFieldOperations.jsonArrayAsArrayList((JSONArray)localObject);
          localArrayList2.removeAll(this.objects);
          this = new ParseSetOperation(new JSONArray(localArrayList2));
        }
        if (localObject instanceof List)
        {
          ArrayList localArrayList1 = new ArrayList((List)localObject);
          localArrayList1.removeAll(this.objects);
          this = new ParseSetOperation(localArrayList1);
        }
        throw new IllegalArgumentException("You can only add an item to a List or JSONArray.");
      }
      if (!(paramParseFieldOperation instanceof ParseRemoveOperation))
        break;
      HashSet localHashSet = new HashSet(((ParseRemoveOperation)paramParseFieldOperation).objects);
      localHashSet.addAll(this.objects);
      this = new ParseRemoveOperation(localHashSet);
    }
    throw new IllegalArgumentException("Operation is invalid after previous operation.");
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.ParseRemoveOperation
 * JD-Core Version:    0.5.3
 */