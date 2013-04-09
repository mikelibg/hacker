package com.parse.entity.mime;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class Header
  implements Iterable<MinimalField>
{
  private final Map<String, List<MinimalField>> fieldMap = new HashMap();
  private final List<MinimalField> fields = new LinkedList();

  public void addField(MinimalField paramMinimalField)
  {
    if (paramMinimalField == null);
    while (true)
    {
      return;
      String str = paramMinimalField.getName().toLowerCase(Locale.US);
      Object localObject = (List)this.fieldMap.get(str);
      if (localObject == null)
      {
        localObject = new LinkedList();
        this.fieldMap.put(str, localObject);
      }
      ((List)localObject).add(paramMinimalField);
      this.fields.add(paramMinimalField);
    }
  }

  public MinimalField getField(String paramString)
  {
    MinimalField localMinimalField = null;
    if (paramString == null);
    while (true)
    {
      return localMinimalField;
      String str = paramString.toLowerCase(Locale.US);
      List localList = (List)this.fieldMap.get(str);
      localMinimalField = null;
      if (localList == null)
        continue;
      boolean bool = localList.isEmpty();
      localMinimalField = null;
      if (bool)
        continue;
      localMinimalField = (MinimalField)localList.get(0);
    }
  }

  public List<MinimalField> getFields()
  {
    return new ArrayList(this.fields);
  }

  public List<MinimalField> getFields(String paramString)
  {
    if (paramString == null);
    List localList;
    for (Object localObject = null; ; localObject = new ArrayList(localList))
      while (true)
      {
        return localObject;
        String str = paramString.toLowerCase(Locale.US);
        localList = (List)this.fieldMap.get(str);
        if ((localList != null) && (!(localList.isEmpty())))
          break;
        localObject = Collections.emptyList();
      }
  }

  public Iterator<MinimalField> iterator()
  {
    return Collections.unmodifiableList(this.fields).iterator();
  }

  public int removeFields(String paramString)
  {
    int i = 0;
    if (paramString == null);
    while (true)
    {
      return i;
      String str = paramString.toLowerCase(Locale.US);
      List localList = (List)this.fieldMap.remove(str);
      i = 0;
      if (localList == null)
        continue;
      boolean bool = localList.isEmpty();
      i = 0;
      if (bool)
        continue;
      this.fields.removeAll(localList);
      i = localList.size();
    }
  }

  public void setField(MinimalField paramMinimalField)
  {
    if (paramMinimalField == null);
    while (true)
    {
      return;
      String str = paramMinimalField.getName().toLowerCase(Locale.US);
      List localList = (List)this.fieldMap.get(str);
      if ((localList == null) || (localList.isEmpty()))
        addField(paramMinimalField);
      localList.clear();
      localList.add(paramMinimalField);
      int i = -1;
      int j = 0;
      Iterator localIterator = this.fields.iterator();
      while (localIterator.hasNext())
      {
        if (((MinimalField)localIterator.next()).getName().equalsIgnoreCase(paramMinimalField.getName()))
        {
          localIterator.remove();
          if (i == -1)
            i = j;
        }
        ++j;
      }
      this.fields.add(i, paramMinimalField);
    }
  }

  public String toString()
  {
    return this.fields.toString();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.entity.mime.Header
 * JD-Core Version:    0.5.3
 */