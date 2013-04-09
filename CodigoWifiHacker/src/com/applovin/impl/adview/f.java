package com.applovin.impl.adview;

class f
  implements Runnable
{
  public void run()
  {
    if (AdViewControllerImpl.d(this.a) != null);
    try
    {
      p localp = new p(AdViewControllerImpl.e(this.a), AdViewControllerImpl.f(this.a));
      localp.a(AdViewControllerImpl.d(this.a));
      localp.show();
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.f
 * JD-Core Version:    0.5.3
 */