package com.google.mygson.stream;

import com.google.mygson.internal.JsonReaderInternalAccess;
import com.google.mygson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class JsonReader
  implements Closeable
{
  private static final String FALSE = "false";
  private static final char[] NON_EXECUTE_PREFIX = ")]}'\n".toCharArray();
  private static final String TRUE = "true";
  private final char[] buffer = new char[1024];
  private int bufferStartColumn = 1;
  private int bufferStartLine = 1;
  private final Reader in;
  private boolean lenient = false;
  private int limit = 0;
  private String name;
  private int pos = 0;
  private boolean skipping;
  private JsonScope[] stack = new JsonScope[32];
  private int stackSize = 0;
  private final StringPool stringPool = new StringPool();
  private JsonToken token;
  private String value;
  private int valueLength;
  private int valuePos;

  static
  {
    JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess()
    {
      public void promoteNameToValue(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader instanceof JsonTreeReader)
        {
          ((JsonTreeReader)paramJsonReader).promoteNameToValue();
          return;
        }
        paramJsonReader.peek();
        if (paramJsonReader.token != JsonToken.NAME)
          throw new IllegalStateException("Expected a name but was " + paramJsonReader.peek() + " " + " at line " + paramJsonReader.getLineNumber() + " column " + paramJsonReader.getColumnNumber());
        JsonReader.access$302(paramJsonReader, paramJsonReader.name);
        JsonReader.access$402(paramJsonReader, null);
        JsonReader.access$002(paramJsonReader, JsonToken.STRING);
      }
    };
  }

  public JsonReader(Reader paramReader)
  {
    push(JsonScope.EMPTY_DOCUMENT);
    this.skipping = false;
    if (paramReader == null)
      throw new NullPointerException("in == null");
    this.in = paramReader;
  }

  private JsonToken advance()
    throws IOException
  {
    peek();
    JsonToken localJsonToken = this.token;
    this.token = null;
    this.value = null;
    this.name = null;
    return localJsonToken;
  }

  private void checkLenient()
    throws IOException
  {
    if (this.lenient)
      return;
    throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
  }

  private void consumeNonExecutePrefix()
    throws IOException
  {
    nextNonWhitespace(true);
    this.pos = (-1 + this.pos);
    if ((this.pos + NON_EXECUTE_PREFIX.length > this.limit) && (!(fillBuffer(NON_EXECUTE_PREFIX.length))))
      return;
    for (int i = 0; i < NON_EXECUTE_PREFIX.length; ++i)
      if (this.buffer[(i + this.pos)] != NON_EXECUTE_PREFIX[i]);
    this.pos += NON_EXECUTE_PREFIX.length;
  }

  private JsonToken decodeLiteral()
    throws IOException
  {
    if (this.valuePos == -1)
      return JsonToken.STRING;
    if ((this.valueLength == 4) && ((('n' == this.buffer[this.valuePos]) || ('N' == this.buffer[this.valuePos]))) && ((('u' == this.buffer[(1 + this.valuePos)]) || ('U' == this.buffer[(1 + this.valuePos)]))) && ((('l' == this.buffer[(2 + this.valuePos)]) || ('L' == this.buffer[(2 + this.valuePos)]))) && ((('l' == this.buffer[(3 + this.valuePos)]) || ('L' == this.buffer[(3 + this.valuePos)]))))
    {
      this.value = "null";
      return JsonToken.NULL;
    }
    if ((this.valueLength == 4) && ((('t' == this.buffer[this.valuePos]) || ('T' == this.buffer[this.valuePos]))) && ((('r' == this.buffer[(1 + this.valuePos)]) || ('R' == this.buffer[(1 + this.valuePos)]))) && ((('u' == this.buffer[(2 + this.valuePos)]) || ('U' == this.buffer[(2 + this.valuePos)]))) && ((('e' == this.buffer[(3 + this.valuePos)]) || ('E' == this.buffer[(3 + this.valuePos)]))))
    {
      this.value = "true";
      return JsonToken.BOOLEAN;
    }
    if ((this.valueLength == 5) && ((('f' == this.buffer[this.valuePos]) || ('F' == this.buffer[this.valuePos]))) && ((('a' == this.buffer[(1 + this.valuePos)]) || ('A' == this.buffer[(1 + this.valuePos)]))) && ((('l' == this.buffer[(2 + this.valuePos)]) || ('L' == this.buffer[(2 + this.valuePos)]))) && ((('s' == this.buffer[(3 + this.valuePos)]) || ('S' == this.buffer[(3 + this.valuePos)]))) && ((('e' == this.buffer[(4 + this.valuePos)]) || ('E' == this.buffer[(4 + this.valuePos)]))))
    {
      this.value = "false";
      return JsonToken.BOOLEAN;
    }
    this.value = this.stringPool.get(this.buffer, this.valuePos, this.valueLength);
    return decodeNumber(this.buffer, this.valuePos, this.valueLength);
  }

  private JsonToken decodeNumber(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    int j = paramArrayOfChar[i];
    if (j == 45)
      j = paramArrayOfChar[(++i)];
    int k;
    int l;
    if (j == 48)
    {
      k = i + 1;
      l = paramArrayOfChar[k];
      if (l != 46)
        break label142;
      for (l = paramArrayOfChar[(++k)]; ; l = paramArrayOfChar[(++k)])
        if ((l < 48) || (l > 57))
          break label142;
    }
    if ((j >= 49) && (j <= 57))
    {
      k = i + 1;
      for (l = paramArrayOfChar[k]; ; l = paramArrayOfChar[(++k)])
        if ((l < 48) || (l > 57));
    }
    return JsonToken.STRING;
    if ((l == 101) || (l == 69))
    {
      label142: int i1 = k + 1;
      int i2 = paramArrayOfChar[i1];
      if ((i2 == 43) || (i2 == 45))
        i2 = paramArrayOfChar[(++i1)];
      if ((i2 >= 48) && (i2 <= 57))
      {
        k = i1 + 1;
        for (int i3 = paramArrayOfChar[k]; ; i3 = paramArrayOfChar[(++k)])
          if ((i3 < 48) || (i3 > 57))
            break label247;
      }
      return JsonToken.STRING;
    }
    if (k == paramInt1 + paramInt2)
      label247: return JsonToken.NUMBER;
    return JsonToken.STRING;
  }

  private void expect(JsonToken paramJsonToken)
    throws IOException
  {
    peek();
    if (this.token != paramJsonToken)
      throw new IllegalStateException("Expected " + paramJsonToken + " but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
    advance();
  }

  private boolean fillBuffer(int paramInt)
    throws IOException
  {
    char[] arrayOfChar = this.buffer;
    int i = this.bufferStartLine;
    int j = this.bufferStartColumn;
    int k = 0;
    int l = this.pos;
    if (k < l)
    {
      if (arrayOfChar[k] == '\n')
        label25: ++i;
      for (j = 1; ; ++j)
      {
        ++k;
        break label25:
      }
    }
    this.bufferStartLine = i;
    this.bufferStartColumn = j;
    if (this.limit != this.pos)
    {
      this.limit -= this.pos;
      System.arraycopy(arrayOfChar, this.pos, arrayOfChar, 0, this.limit);
    }
    while (true)
    {
      this.pos = 0;
      while (true)
      {
        int i1 = this.in.read(arrayOfChar, this.limit, arrayOfChar.length - this.limit);
        if (i1 == -1)
          break label220;
        this.limit = (i1 + this.limit);
        if ((this.bufferStartLine == 1) && (this.bufferStartColumn == 1) && (this.limit > 0) && (arrayOfChar[0] == 65279))
        {
          this.pos = (1 + this.pos);
          this.bufferStartColumn = (-1 + this.bufferStartColumn);
        }
        if (this.limit >= paramInt)
          return true;
      }
      this.limit = 0;
    }
    label220: return false;
  }

  private int getColumnNumber()
  {
    int i = this.bufferStartColumn;
    int j = 0;
    if (j < this.pos)
    {
      label7: if (this.buffer[j] == '\n');
      for (i = 1; ; ++i)
      {
        ++j;
        break label7:
      }
    }
    return i;
  }

  private int getLineNumber()
  {
    int i = this.bufferStartLine;
    for (int j = 0; j < this.pos; ++j)
    {
      if (this.buffer[j] != '\n')
        continue;
      ++i;
    }
    return i;
  }

  private CharSequence getSnippet()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = Math.min(this.pos, 20);
    localStringBuilder.append(this.buffer, this.pos - i, i);
    int j = Math.min(this.limit - this.pos, 20);
    localStringBuilder.append(this.buffer, this.pos, j);
    return localStringBuilder;
  }

  private JsonToken nextInArray(boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean)
      this.stack[(-1 + this.stackSize)] = JsonScope.NONEMPTY_ARRAY;
    while (true)
      switch (nextNonWhitespace(true))
      {
      default:
        this.pos = (-1 + this.pos);
        return nextValue();
        switch (nextNonWhitespace(true))
        {
        case 44:
        default:
          throw syntaxError("Unterminated array");
        case 93:
          this.stackSize = (-1 + this.stackSize);
          JsonToken localJsonToken3 = JsonToken.END_ARRAY;
          this.token = localJsonToken3;
          return localJsonToken3;
        case 59:
        }
        checkLenient();
      case 93:
      case 44:
      case 59:
      }
    if (paramBoolean)
    {
      this.stackSize = (-1 + this.stackSize);
      JsonToken localJsonToken2 = JsonToken.END_ARRAY;
      this.token = localJsonToken2;
      return localJsonToken2;
    }
    checkLenient();
    this.pos = (-1 + this.pos);
    this.value = "null";
    JsonToken localJsonToken1 = JsonToken.NULL;
    this.token = localJsonToken1;
    return localJsonToken1;
  }

  private JsonToken nextInObject(boolean paramBoolean)
    throws IOException
  {
    int i;
    if (paramBoolean)
    {
      switch (nextNonWhitespace(true))
      {
      default:
        this.pos = (-1 + this.pos);
        i = nextNonWhitespace(true);
        switch (i)
        {
        default:
          checkLenient();
          this.pos = (-1 + this.pos);
          this.name = nextLiteral(false);
          if (this.name.length() != 0)
            break label219;
          throw syntaxError("Expected name");
        case 39:
        case 34:
        }
      case 125:
      }
      this.stackSize = (-1 + this.stackSize);
      JsonToken localJsonToken3 = JsonToken.END_OBJECT;
      this.token = localJsonToken3;
      return localJsonToken3;
    }
    switch (nextNonWhitespace(true))
    {
    case 44:
    case 59:
    default:
      throw syntaxError("Unterminated object");
    case 125:
    }
    this.stackSize = (-1 + this.stackSize);
    JsonToken localJsonToken1 = JsonToken.END_OBJECT;
    this.token = localJsonToken1;
    return localJsonToken1;
    checkLenient();
    this.name = nextString((char)i);
    label219: this.stack[(-1 + this.stackSize)] = JsonScope.DANGLING_NAME;
    JsonToken localJsonToken2 = JsonToken.NAME;
    this.token = localJsonToken2;
    return localJsonToken2;
  }

  private String nextLiteral(boolean paramBoolean)
    throws IOException
  {
    StringBuilder localStringBuilder = null;
    this.valuePos = -1;
    this.valueLength = 0;
    for (int i = 0; ; ++i)
    {
      if (i + this.pos >= this.limit)
        break label228;
      switch (this.buffer[(i + this.pos)])
      {
      default:
      case '#':
      case '/':
      case ';':
      case '=':
      case '\\':
      case '\t':
      case '\n':
      case '\f':
      case '\r':
      case ' ':
      case ',':
      case ':':
      case '[':
      case ']':
      case '{':
      case '}':
      }
    }
    checkLenient();
    if ((paramBoolean) && (localStringBuilder == null))
      label186: this.valuePos = this.pos;
    for (String str = null; ; str = localStringBuilder.toString())
    {
      while (true)
      {
        this.valueLength = (i + this.valueLength);
        this.pos = (i + this.pos);
        return str;
        if (i < this.buffer.length)
        {
          label228: if (!(fillBuffer(i + 1)));
          this.buffer[this.limit] = '\0';
        }
        if (localStringBuilder == null)
          localStringBuilder = new StringBuilder();
        localStringBuilder.append(this.buffer, this.pos, i);
        this.valueLength = (i + this.valueLength);
        this.pos = (i + this.pos);
        boolean bool = fillBuffer(1);
        i = 0;
        if (!(bool));
        i = 0;
        break label186:
        if (this.skipping)
          str = "skipped!";
        if (localStringBuilder != null)
          break;
        str = this.stringPool.get(this.buffer, this.pos, i);
      }
      localStringBuilder.append(this.buffer, this.pos, i);
    }
  }

  private int nextNonWhitespace(boolean paramBoolean)
    throws IOException
  {
    char[] arrayOfChar = this.buffer;
    int i = this.pos;
    for (int j = this.limit; ; j = this.limit)
    {
      int k;
      while (true)
      {
        if (i == j)
        {
          this.pos = i;
          if (!(fillBuffer(1)))
          {
            if (!(paramBoolean))
              break label343;
            throw new EOFException("End of input at line " + getLineNumber() + " column " + getColumnNumber());
          }
          i = this.pos;
          j = this.limit;
        }
        k = i + 1;
        int l = arrayOfChar[i];
        switch (l)
        {
        default:
          this.pos = k;
          return l;
        case 9:
        case 10:
        case 13:
        case 32:
          i = k;
          break;
        case 47:
          this.pos = k;
          if ((k == j) && (!(fillBuffer(1))))
            return l;
          checkLenient();
          switch (arrayOfChar[this.pos])
          {
          default:
            return l;
          case '*':
            this.pos = (1 + this.pos);
            if (!(skipTo("*/")))
              throw syntaxError("Unterminated comment");
            i = 2 + this.pos;
            j = this.limit;
            break;
          case '/':
          }
          this.pos = (1 + this.pos);
          skipToEndOfLine();
          i = this.pos;
          j = this.limit;
        case 35:
        }
      }
      this.pos = k;
      checkLenient();
      skipToEndOfLine();
      i = this.pos;
    }
    label343: return -1;
  }

  private String nextString(char paramChar)
    throws IOException
  {
    char[] arrayOfChar = this.buffer;
    StringBuilder localStringBuilder = null;
    do
    {
      int i = this.pos;
      int j = this.limit;
      int k = i;
      int i1;
      for (int l = i; l < j; l = i1)
      {
        i1 = l + 1;
        char c = arrayOfChar[l];
        if (c == paramChar)
        {
          this.pos = i1;
          if (this.skipping)
            return "skipped!";
          if (localStringBuilder == null)
            return this.stringPool.get(arrayOfChar, k, -1 + i1 - k);
          localStringBuilder.append(arrayOfChar, k, -1 + i1 - k);
          return localStringBuilder.toString();
        }
        if (c != '\\')
          continue;
        this.pos = i1;
        if (localStringBuilder == null)
          localStringBuilder = new StringBuilder();
        localStringBuilder.append(arrayOfChar, k, -1 + i1 - k);
        localStringBuilder.append(readEscapeCharacter());
        i1 = this.pos;
        j = this.limit;
        k = i1;
      }
      if (localStringBuilder == null)
        localStringBuilder = new StringBuilder();
      localStringBuilder.append(arrayOfChar, k, l - k);
      this.pos = l;
    }
    while (fillBuffer(1));
    throw syntaxError("Unterminated string");
  }

  private JsonToken nextValue()
    throws IOException
  {
    int i = nextNonWhitespace(true);
    switch (i)
    {
    default:
      this.pos = (-1 + this.pos);
      return readLiteral();
    case 123:
      push(JsonScope.EMPTY_OBJECT);
      JsonToken localJsonToken3 = JsonToken.BEGIN_OBJECT;
      this.token = localJsonToken3;
      return localJsonToken3;
    case 91:
      push(JsonScope.EMPTY_ARRAY);
      JsonToken localJsonToken2 = JsonToken.BEGIN_ARRAY;
      this.token = localJsonToken2;
      return localJsonToken2;
    case 39:
      checkLenient();
    case 34:
    }
    this.value = nextString((char)i);
    JsonToken localJsonToken1 = JsonToken.STRING;
    this.token = localJsonToken1;
    return localJsonToken1;
  }

  private JsonToken objectValue()
    throws IOException
  {
    switch (nextNonWhitespace(true))
    {
    case 59:
    case 60:
    default:
      throw syntaxError("Expected ':'");
    case 61:
      checkLenient();
      if ((((this.pos < this.limit) || (fillBuffer(1)))) && (this.buffer[this.pos] == '>'))
        this.pos = (1 + this.pos);
    case 58:
    }
    this.stack[(-1 + this.stackSize)] = JsonScope.NONEMPTY_OBJECT;
    return nextValue();
  }

  private void push(JsonScope paramJsonScope)
  {
    if (this.stackSize == this.stack.length)
    {
      JsonScope[] arrayOfJsonScope2 = new JsonScope[2 * this.stackSize];
      System.arraycopy(this.stack, 0, arrayOfJsonScope2, 0, this.stackSize);
      this.stack = arrayOfJsonScope2;
    }
    JsonScope[] arrayOfJsonScope1 = this.stack;
    int i = this.stackSize;
    this.stackSize = (i + 1);
    arrayOfJsonScope1[i] = paramJsonScope;
  }

  private char readEscapeCharacter()
    throws IOException
  {
    if ((this.pos == this.limit) && (!(fillBuffer(1))))
      throw syntaxError("Unterminated escape sequence");
    char[] arrayOfChar = this.buffer;
    int i = this.pos;
    this.pos = (i + 1);
    int j = arrayOfChar[i];
    switch (j)
    {
    default:
      return j;
    case 117:
      if ((4 + this.pos > this.limit) && (!(fillBuffer(4))))
        throw syntaxError("Unterminated escape sequence");
      int k = 0;
      int l = this.pos;
      int i1 = l + 4;
      if (l < i1)
      {
        int i2 = this.buffer[l];
        int i3 = (char)(k << 4);
        if ((i2 >= 48) && (i2 <= 57));
        for (k = (char)(i3 + i2 - 48); ; k = (char)(i3 + 10 + i2 - 65))
        {
          while (true)
          {
            ++l;
            break label154:
            if ((i2 < 97) || (i2 > 102))
              break;
            k = (char)(i3 + 10 + i2 - 97);
          }
          if ((i2 < 65) || (i2 > 70))
            break;
        }
        throw new NumberFormatException("\\u" + this.stringPool.get(this.buffer, this.pos, 4));
      }
      this.pos = (4 + this.pos);
      return k;
    case 116:
      return '\t';
    case 98:
      return '\b';
    case 110:
      return '\n';
    case 114:
      label154: return '\r';
    case 102:
    }
    return '\f';
  }

  private JsonToken readLiteral()
    throws IOException
  {
    this.value = nextLiteral(true);
    if (this.valueLength == 0)
      throw syntaxError("Expected literal value");
    this.token = decodeLiteral();
    if (this.token == JsonToken.STRING)
      checkLenient();
    return this.token;
  }

  private boolean skipTo(String paramString)
    throws IOException
  {
    if ((this.pos + paramString.length() <= this.limit) || (fillBuffer(paramString.length())))
    {
      for (int i = 0; i < paramString.length(); ++i)
      {
        label0: if (this.buffer[(i + this.pos)] == paramString.charAt(i))
          continue;
        this.pos = (1 + this.pos);
        break label0:
      }
      return true;
    }
    return false;
  }

  private void skipToEndOfLine()
    throws IOException
  {
    int j;
    do
    {
      if ((this.pos >= this.limit) && (!(fillBuffer(1))))
        return;
      char[] arrayOfChar = this.buffer;
      int i = this.pos;
      this.pos = (i + 1);
      j = arrayOfChar[i];
    }
    while ((j != 13) && (j != 10));
  }

  private IOException syntaxError(String paramString)
    throws IOException
  {
    throw new MalformedJsonException(paramString + " at line " + getLineNumber() + " column " + getColumnNumber());
  }

  public void beginArray()
    throws IOException
  {
    expect(JsonToken.BEGIN_ARRAY);
  }

  public void beginObject()
    throws IOException
  {
    expect(JsonToken.BEGIN_OBJECT);
  }

  public void close()
    throws IOException
  {
    this.value = null;
    this.token = null;
    this.stack[0] = JsonScope.CLOSED;
    this.stackSize = 1;
    this.in.close();
  }

  public void endArray()
    throws IOException
  {
    expect(JsonToken.END_ARRAY);
  }

  public void endObject()
    throws IOException
  {
    expect(JsonToken.END_OBJECT);
  }

  public boolean hasNext()
    throws IOException
  {
    peek();
    return ((this.token != JsonToken.END_OBJECT) && (this.token != JsonToken.END_ARRAY));
  }

  public final boolean isLenient()
  {
    return this.lenient;
  }

  public boolean nextBoolean()
    throws IOException
  {
    peek();
    if (this.token != JsonToken.BOOLEAN)
      throw new IllegalStateException("Expected a boolean but was " + this.token + " at line " + getLineNumber() + " column " + getColumnNumber());
    if (this.value == "true");
    for (int i = 1; ; i = 0)
    {
      advance();
      return i;
    }
  }

  public double nextDouble()
    throws IOException
  {
    peek();
    if ((this.token != JsonToken.STRING) && (this.token != JsonToken.NUMBER))
      throw new IllegalStateException("Expected a double but was " + this.token + " at line " + getLineNumber() + " column " + getColumnNumber());
    double d = Double.parseDouble(this.value);
    if ((d >= 1.0D) && (this.value.startsWith("0")))
      throw new MalformedJsonException("JSON forbids octal prefixes: " + this.value + " at line " + getLineNumber() + " column " + getColumnNumber());
    if ((!(this.lenient)) && (((Double.isNaN(d)) || (Double.isInfinite(d)))))
      throw new MalformedJsonException("JSON forbids NaN and infinities: " + this.value + " at line " + getLineNumber() + " column " + getColumnNumber());
    advance();
    return d;
  }

  public int nextInt()
    throws IOException
  {
    peek();
    if ((this.token != JsonToken.STRING) && (this.token != JsonToken.NUMBER))
      throw new IllegalStateException("Expected an int but was " + this.token + " at line " + getLineNumber() + " column " + getColumnNumber());
    int i;
    try
    {
      int j = Integer.parseInt(this.value);
      i = j;
      if ((i >= 1L) && (this.value.startsWith("0")))
        throw new MalformedJsonException("JSON forbids octal prefixes: " + this.value + " at line " + getLineNumber() + " column " + getColumnNumber());
    }
    catch (NumberFormatException localNumberFormatException)
    {
      double d = Double.parseDouble(this.value);
      i = (int)d;
      if (i != d);
      throw new NumberFormatException("Expected an int but was " + this.value + " at line " + getLineNumber() + " column " + getColumnNumber());
    }
    advance();
    return i;
  }

  public long nextLong()
    throws IOException
  {
    peek();
    if ((this.token != JsonToken.STRING) && (this.token != JsonToken.NUMBER))
      throw new IllegalStateException("Expected a long but was " + this.token + " at line " + getLineNumber() + " column " + getColumnNumber());
    long l1;
    try
    {
      long l2 = Long.parseLong(this.value);
      l1 = l2;
      if ((l1 >= 1L) && (this.value.startsWith("0")))
        throw new MalformedJsonException("JSON forbids octal prefixes: " + this.value + " at line " + getLineNumber() + " column " + getColumnNumber());
    }
    catch (NumberFormatException localNumberFormatException)
    {
      double d = Double.parseDouble(this.value);
      l1 = ()d;
      if (l1 != d);
      throw new NumberFormatException("Expected a long but was " + this.value + " at line " + getLineNumber() + " column " + getColumnNumber());
    }
    advance();
    return l1;
  }

  public String nextName()
    throws IOException
  {
    peek();
    if (this.token != JsonToken.NAME)
      throw new IllegalStateException("Expected a name but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
    String str = this.name;
    advance();
    return str;
  }

  public void nextNull()
    throws IOException
  {
    peek();
    if (this.token != JsonToken.NULL)
      throw new IllegalStateException("Expected null but was " + this.token + " at line " + getLineNumber() + " column " + getColumnNumber());
    advance();
  }

  public String nextString()
    throws IOException
  {
    peek();
    if ((this.token != JsonToken.STRING) && (this.token != JsonToken.NUMBER))
      throw new IllegalStateException("Expected a string but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber());
    String str = this.value;
    advance();
    return str;
  }

  public JsonToken peek()
    throws IOException
  {
    JsonToken localJsonToken;
    if (this.token != null)
      localJsonToken = this.token;
    do
    {
      return localJsonToken;
      switch (2.$SwitchMap$com$google$gson$stream$JsonScope[this.stack[(-1 + this.stackSize)].ordinal()])
      {
      default:
        throw new AssertionError();
      case 1:
        if (this.lenient)
          consumeNonExecutePrefix();
        this.stack[(-1 + this.stackSize)] = JsonScope.NONEMPTY_DOCUMENT;
        localJsonToken = nextValue();
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      }
    }
    while ((this.lenient) || (this.token == JsonToken.BEGIN_ARRAY) || (this.token == JsonToken.BEGIN_OBJECT));
    throw new IOException("Expected JSON document to start with '[' or '{' but was " + this.token + " at line " + getLineNumber() + " column " + getColumnNumber());
    return nextInArray(true);
    return nextInArray(false);
    return nextInObject(true);
    return objectValue();
    return nextInObject(false);
    if (nextNonWhitespace(false) == -1)
      return JsonToken.END_DOCUMENT;
    this.pos = (-1 + this.pos);
    if (!(this.lenient))
      throw syntaxError("Expected EOF");
    return nextValue();
    throw new IllegalStateException("JsonReader is closed");
  }

  public final void setLenient(boolean paramBoolean)
  {
    this.lenient = paramBoolean;
  }

  public void skipValue()
    throws IOException
  {
    this.skipping = true;
    int i = 0;
    try
    {
      JsonToken localJsonToken1 = advance();
      if (localJsonToken1 != JsonToken.BEGIN_ARRAY)
      {
        JsonToken localJsonToken2 = JsonToken.BEGIN_OBJECT;
        if (localJsonToken1 != localJsonToken2)
          break label43;
      }
      ++i;
      label43: JsonToken localJsonToken3;
      do
      {
        if (i == 0);
        return;
        if (localJsonToken1 == JsonToken.END_ARRAY)
          break;
        localJsonToken3 = JsonToken.END_OBJECT;
      }
      while (localJsonToken1 != localJsonToken3);
    }
    finally
    {
      this.skipping = false;
    }
  }

  public String toString()
  {
    return super.getClass().getSimpleName() + " near " + getSnippet();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.google.mygson.stream.JsonReader
 * JD-Core Version:    0.5.3
 */