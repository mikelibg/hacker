package eu.chainfire.libsuperuser;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

public class StreamGobbler extends Thread
{
  private BufferedReader reader = null;
  private String shell = null;
  private List<String> writer = null;

  public StreamGobbler(String paramString, InputStream paramInputStream, List<String> paramList)
  {
    this.shell = paramString;
    this.reader = new BufferedReader(new InputStreamReader(paramInputStream));
    this.writer = paramList;
  }

  public void run()
  {
    label0: String str;
    try
    {
      str = this.reader.readLine();
      if (str != null);
    }
    catch (IOException localIOException1)
    {
      try
      {
        this.reader.close();
        return;
        if (this.writer != null);
        this.writer.add(str);
        break label0:
        localIOException1 = localIOException1;
      }
      catch (IOException localIOException2)
      {
      }
    }
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     eu.chainfire.libsuperuser.StreamGobbler
 * JD-Core Version:    0.5.3
 */