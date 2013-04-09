package com.mopub.mobileads;

class MraidPlacementTypeProperty extends MraidProperty
{
  private final MraidView.PlacementType mPlacementType;

  MraidPlacementTypeProperty(MraidView.PlacementType paramPlacementType)
  {
    this.mPlacementType = paramPlacementType;
  }

  public static MraidPlacementTypeProperty createWithType(MraidView.PlacementType paramPlacementType)
  {
    return new MraidPlacementTypeProperty(paramPlacementType);
  }

  public String toJsonPair()
  {
    return "placementType: '" + this.mPlacementType.toString().toLowerCase() + "'";
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidPlacementTypeProperty
 * JD-Core Version:    0.5.3
 */