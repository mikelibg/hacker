package com.parse.entity.mime.content;

import java.io.IOException;
import java.io.OutputStream;

public abstract interface ContentBody extends ContentDescriptor
{
  public abstract String getFilename();

  public abstract void writeTo(OutputStream paramOutputStream)
    throws IOException;
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.entity.mime.content.ContentBody
 * JD-Core Version:    0.5.3
 */