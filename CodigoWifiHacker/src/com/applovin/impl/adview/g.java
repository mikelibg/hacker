package com.applovin.impl.adview;

class g
  implements Runnable
{
  public void run()
  {
    try
    {
      AdViewControllerImpl.c(this.a).loadDataWithBaseURL("/", "<html></html>", "text/html", null, "");
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.g
 * JD-Core Version:    0.5.3
 */