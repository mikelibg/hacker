.class Lcom/applovin/impl/sdk/K;
.super Lcom/applovin/impl/sdk/O;


# instance fields
.field private final a:Ljava/net/Socket;

.field private final b:I

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/net/Socket;)V
    .locals 6

    const-string v2, ""

    const-string v3, "text/html"

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/K;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/net/Socket;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/net/Socket;)V
    .locals 1

    const-string v0, "FinishWebRequest"

    invoke-direct {p0, v0, p4}, Lcom/applovin/impl/sdk/O;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput p1, p0, Lcom/applovin/impl/sdk/K;->b:I

    iput-object p2, p0, Lcom/applovin/impl/sdk/K;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/impl/sdk/K;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/applovin/impl/sdk/K;->a:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v0, p0, Lcom/applovin/impl/sdk/K;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/16 v3, 0x800

    invoke-direct {v1, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/K;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/K;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/K;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget v2, p0, Lcom/applovin/impl/sdk/K;->b:I

    array-length v3, v0

    iget-object v4, p0, Lcom/applovin/impl/sdk/K;->h:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/applovin/impl/sdk/H;->a(IILjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/K;->a:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/K;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_5
    iget v0, p0, Lcom/applovin/impl/sdk/K;->b:I

    iget-object v2, p0, Lcom/applovin/impl/sdk/K;->h:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/H;->a(ILjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    iget-object v2, p0, Lcom/applovin/impl/sdk/K;->e:Lcom/applovin/sdk/Logger;

    iget-object v3, p0, Lcom/applovin/impl/sdk/K;->c:Ljava/lang/String;

    const-string v4, "Unable to write body request"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x1f4

    iget-object v2, p0, Lcom/applovin/impl/sdk/K;->h:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/H;->a(ILjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_3
    :try_start_7
    iget-object v2, p0, Lcom/applovin/impl/sdk/K;->e:Lcom/applovin/sdk/Logger;

    iget-object v3, p0, Lcom/applovin/impl/sdk/K;->c:Ljava/lang/String;

    const-string v4, "Unable complete local request"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_3
    :goto_4
    :try_start_9
    iget-object v0, p0, Lcom/applovin/impl/sdk/K;->a:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/K;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_4

    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_4
    :goto_6
    :try_start_b
    iget-object v1, p0, Lcom/applovin/impl/sdk/K;->a:Ljava/net/Socket;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/applovin/impl/sdk/K;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :cond_5
    :goto_7
    throw v0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2
.end method
