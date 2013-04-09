.class Lcom/airpush/android/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airpush/android/Util;->setJsonstr(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/Util$1;->val$urlString:Ljava/lang/String;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 360
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/airpush/android/Util$1;->val$urlString:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 361
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 363
    .local v0, connection:Ljava/net/HttpURLConnection;
    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 364
    const/16 v5, 0x7d0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 365
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 366
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 368
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 369
    .local v3, sb:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 371
    .local v2, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 374
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/airpush/android/Util;->access$0(Ljava/lang/String;)V

    .line 377
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 388
    .end local v0           #connection:Ljava/net/HttpURLConnection;
    .end local v4           #url:Ljava/net/URL;
    :goto_1
    return-void

    .line 372
    .restart local v0       #connection:Ljava/net/HttpURLConnection;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v3       #sb:Ljava/lang/StringBuffer;
    .restart local v4       #url:Ljava/net/URL;
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 379
    .end local v0           #connection:Ljava/net/HttpURLConnection;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local v4           #url:Ljava/net/URL;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 385
    :catch_1
    move-exception v5

    goto :goto_1

    .line 382
    :catch_2
    move-exception v5

    goto :goto_1
.end method
