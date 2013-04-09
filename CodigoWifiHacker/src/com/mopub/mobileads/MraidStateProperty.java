package com.mopub.mobileads;

class MraidStateProperty extends MraidProperty
{
  private final MraidView.ViewState mViewState;

  MraidStateProperty(MraidView.ViewState paramViewState)
  {
    this.mViewState = paramViewState;
  }

  public static MraidStateProperty createWithViewState(MraidView.ViewState paramViewState)
  {
    return new MraidStateProperty(paramViewState);
  }

  public String toJsonPair()
  {
    return "state: '" + this.mViewState.toString().toLowerCase() + "'";
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidStateProperty
 * JD-Core Version:    0.5.3
 */