.class public final Lcom/apperhand/device/android/c/d;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public static a(Ljava/lang/String;[BLjava/util/List;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    const v2, 0xea60

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 54
    .line 56
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 57
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 58
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 60
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 63
    new-instance v0, Lcom/apperhand/device/android/c/d$1;

    invoke-direct {v0}, Lcom/apperhand/device/android/c/d$1;-><init>()V

    .line 82
    invoke-virtual {v5, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 106
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 108
    if-eqz p2, :cond_0

    .line 109
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 110
    invoke-virtual {v6, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.protocol.expect-continue"

    invoke-interface {v0, v2, v4}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 117
    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v6, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v6, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "Accept"

    const-string v2, "application/json"

    invoke-virtual {v6, v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :try_start_0
    array-length v0, p1

    const/16 v2, 0x800

    if-ge v0, v2, :cond_2

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    :goto_1
    invoke-virtual {v6, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :goto_2
    :try_start_1
    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 133
    :try_start_2
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 135
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v7, 0xc8

    if-eq v2, v7, :cond_3

    .line 136
    if-eqz v0, :cond_1

    .line 137
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    const-string v1, "Status code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {p0, v6, v3}, Lcom/apperhand/device/android/c/d;->a(Ljava/lang/String;Lorg/apache/http/message/AbstractHttpMessage;Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 143
    new-instance v1, Lcom/apperhand/device/a/d/f;

    sget-object v2, Lcom/apperhand/device/a/d/f$a;->a:Lcom/apperhand/device/a/d/f$a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-direct {v1, v2, v0, v4, v7}, Lcom/apperhand/device/a/d/f;-><init>(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 179
    :catch_0
    move-exception v0

    move-object v1, v3

    .line 180
    :goto_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    const-string v3, "Error execute Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {p0, v6, v1}, Lcom/apperhand/device/android/c/d;->a(Ljava/lang/String;Lorg/apache/http/message/AbstractHttpMessage;Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 184
    new-instance v1, Lcom/apperhand/device/a/d/f;

    sget-object v3, Lcom/apperhand/device/a/d/f$a;->a:Lcom/apperhand/device/a/d/f$a;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/apperhand/device/a/d/f;-><init>(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0

    .line 122
    :cond_2
    :try_start_4
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 124
    :catch_1
    move-exception v0

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v6, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_2

    .line 146
    :cond_3
    if-eqz v0, :cond_a

    .line 147
    :try_start_5
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v2

    .line 151
    :try_start_6
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 153
    invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v7

    move v0, v4

    .line 154
    :goto_4
    array-length v4, v7

    if-ge v0, v4, :cond_4

    .line 155
    aget-object v4, v7, v0

    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "gzip"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 156
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v2, v0

    .line 162
    :cond_4
    if-eqz v2, :cond_9

    .line 163
    :try_start_7
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 164
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 166
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 168
    :goto_5
    invoke-virtual {v4, v1}, Ljava/io/Reader;->read([C)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    .line 169
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v7}, Ljava/io/Writer;->write([CII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    .line 174
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_5

    .line 175
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 185
    :catch_2
    move-exception v0

    .line 186
    :goto_7
    :try_start_9
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    const-string v2, "Error execute Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {p0, v6, v3}, Lcom/apperhand/device/android/c/d;->a(Ljava/lang/String;Lorg/apache/http/message/AbstractHttpMessage;Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 191
    new-instance v2, Lcom/apperhand/device/a/d/f;

    sget-object v3, Lcom/apperhand/device/a/d/f$a;->a:Lcom/apperhand/device/a/d/f$a;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/apperhand/device/a/d/f;-><init>(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 154
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 171
    :cond_7
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v0

    .line 174
    :goto_8
    if-eqz v2, :cond_8

    .line 175
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    .line 194
    :cond_8
    :goto_9
    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 197
    return-object v0

    .line 185
    :catch_3
    move-exception v0

    move-object v3, v1

    goto :goto_7

    .line 179
    :catch_4
    move-exception v0

    goto/16 :goto_3

    .line 174
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :cond_9
    move-object v0, v1

    goto :goto_8

    :cond_a
    move-object v0, v1

    goto :goto_9
.end method

.method private static a(Ljava/lang/String;Lorg/apache/http/message/AbstractHttpMessage;Lorg/apache/http/HttpResponse;)Ljava/lang/StringBuilder;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    if-eqz p0, :cond_0

    .line 223
    const-string v1, "address = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/http/message/AbstractHttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 227
    const-string v1, "Headers = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/message/AbstractHttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 231
    const-string v1, "statusLine = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_2
    return-object v0
.end method
