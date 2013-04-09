.class public Lcom/revmob/android/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# static fields
.field private static final CACHE_DIR:Ljava/lang/String; = "RevMob"


# instance fields
.field private cacheDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, storageState:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "RevMob"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/revmob/android/FileCache;->cacheDir:Ljava/io/File;

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/revmob/android/FileCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/revmob/android/FileCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 25
    :cond_0
    return-void

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/revmob/android/FileCache;->cacheDir:Ljava/io/File;

    goto :goto_0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .parameter "is"
    .parameter "os"

    .prologue
    .line 43
    const/16 v0, 0x400

    .line 45
    .local v0, buffer_size:I
    const/16 v3, 0x400

    :try_start_0
    new-array v1, v3, [B

    .line 47
    .local v1, bytes:[B
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 48
    .local v2, count:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 54
    .end local v1           #bytes:[B
    .end local v2           #count:I
    :goto_1
    return-void

    .line 50
    .restart local v1       #bytes:[B
    .restart local v2       #count:I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v1           #bytes:[B
    .end local v2           #count:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "filename"

    .prologue
    .line 28
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/revmob/android/FileCache;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .local v0, f:Ljava/io/File;
    return-object v0
.end method

.method public write(Ljava/io/File;Ljava/io/InputStream;)V
    .locals 2
    .parameter "file"
    .parameter "is"

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 35
    .local v0, os:Ljava/io/OutputStream;
    invoke-static {p2, v0}, Lcom/revmob/android/FileCache;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0           #os:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v1

    goto :goto_0

    .line 37
    :catch_1
    move-exception v1

    goto :goto_0
.end method
