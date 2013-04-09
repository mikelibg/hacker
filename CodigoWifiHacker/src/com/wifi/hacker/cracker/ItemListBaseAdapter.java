package com.wifi.hacker.cracker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;

public class ItemListBaseAdapter extends BaseAdapter
{
  private static ArrayList<NetworkDetails> itemDetailsrrayList;
  private LayoutInflater l_Inflater;

  public ItemListBaseAdapter(Context paramContext, ArrayList<NetworkDetails> paramArrayList)
  {
    itemDetailsrrayList = paramArrayList;
    this.l_Inflater = LayoutInflater.from(paramContext);
  }

  public int getCount()
  {
    return itemDetailsrrayList.size();
  }

  public Object getItem(int paramInt)
  {
    return itemDetailsrrayList.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ViewHolder localViewHolder;
    label72: int i;
    if (paramView == null)
    {
      paramView = this.l_Inflater.inflate(2130903046, null);
      localViewHolder = new ViewHolder();
      localViewHolder.txt_itemName = ((TextView)paramView.findViewById(2131165205));
      localViewHolder.txt_itemDescription = ((TextView)paramView.findViewById(2131165206));
      localViewHolder.itemImage = ((ImageView)paramView.findViewById(2131165207));
      paramView.setTag(localViewHolder);
      localViewHolder.txt_itemName.setText(((NetworkDetails)itemDetailsrrayList.get(paramInt)).networkName);
      localViewHolder.txt_itemDescription.setText(((NetworkDetails)itemDetailsrrayList.get(paramInt)).networkEncryption);
      i = ((NetworkDetails)itemDetailsrrayList.get(paramInt)).networkStrength;
      if (i != 5)
        break label163;
    }
    for (int j = 2130837508; ; j = 2130837504)
      while (true)
      {
        localViewHolder.itemImage.setImageResource(j);
        return paramView;
        localViewHolder = (ViewHolder)paramView.getTag();
        break label72:
        if (i == 4)
          label163: j = 2130837507;
        if (i == 3)
          j = 2130837506;
        if (i != 2)
          break;
        j = 2130837505;
      }
  }

  static class ViewHolder
  {
    ImageView itemImage;
    TextView txt_itemDescription;
    TextView txt_itemName;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.wifi.hacker.cracker.ItemListBaseAdapter
 * JD-Core Version:    0.5.3
 */