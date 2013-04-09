package com.apperhand.common.dto.protocol;

import com.apperhand.common.dto.Homepage;

public class HomepageResponse extends BaseResponse
{
  private static final long serialVersionUID = 8119743496810028796L;
  private Homepage homepage;

  public Homepage getHomepage()
  {
    return this.homepage;
  }

  public void setHomepage(Homepage paramHomepage)
  {
    this.homepage = paramHomepage;
  }

  public String toString()
  {
    return "HomepageResponse [homepage=" + this.homepage + ", toString()=" + super.toString() + "]";
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.common.dto.protocol.HomepageResponse
 * JD-Core Version:    0.5.3
 */