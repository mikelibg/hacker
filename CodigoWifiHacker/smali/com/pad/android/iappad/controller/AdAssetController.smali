.class public Lcom/pad/android/iappad/controller/AdAssetController;
.super Lcom/pad/android/iappad/AdController;
.source "AdAssetController.java"


# static fields
.field private static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 517
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/pad/android/iappad/controller/AdAssetController;->HEX_CHARS:[C

    .line 31
    return-void

    .line 517
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V
    .locals 0
    .parameter "adView"
    .parameter "c"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/pad/android/iappad/AdController;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private asHex(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 7
    .parameter "digest"

    .prologue
    .line 528
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 529
    .local v1, hash:[B
    array-length v5, v1

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [C

    .line 530
    .local v0, buf:[C
    const/4 v2, 0x0

    .local v2, i:I
    const/4 v3, 0x0

    .local v3, x:I
    :goto_0
    array-length v5, v1

    if-lt v2, v5, :cond_0

    .line 534
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 531
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3           #x:I
    .local v4, x:I
    sget-object v5, Lcom/pad/android/iappad/controller/AdAssetController;->HEX_CHARS:[C

    aget-byte v6, v1, v2

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v3

    .line 532
    add-int/lit8 v3, v4, 0x1

    .end local v4           #x:I
    .restart local v3       #x:I
    sget-object v5, Lcom/pad/android/iappad/controller/AdAssetController;->HEX_CHARS:[C

    aget-byte v6, v1, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 659
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 661
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 669
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    return v2

    .line 662
    .restart local v0       #files:[Ljava/io/File;
    .restart local v1       #i:I
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 663
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/pad/android/iappad/controller/AdAssetController;->deleteDirectory(Ljava/io/File;)Z

    .line 661
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 665
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static deleteDirectory(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 646
    if-eqz p0, :cond_0

    .line 647
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pad/android/iappad/controller/AdAssetController;->deleteDirectory(Ljava/io/File;)Z

    move-result v0

    .line 648
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAssetDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "path"

    .prologue
    .line 587
    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdAssetController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 588
    .local v0, filesDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 589
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 590
    .local v1, newDir:Ljava/io/File;
    return-object v1
.end method

.method private getAssetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "asset"

    .prologue
    .line 619
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 620
    .local v0, lastSep:I
    move-object v1, p1

    .line 622
    .local v1, name:Ljava/lang/String;
    if-ltz v0, :cond_0

    .line 624
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 623
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 626
    :cond_0
    return-object v1
.end method

.method private getAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "asset"

    .prologue
    .line 601
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 602
    .local v0, lastSep:I
    const-string v1, "/"

    .line 604
    .local v1, path:Ljava/lang/String;
    if-ltz v0, :cond_0

    .line 605
    const/4 v2, 0x0

    .line 606
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 605
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 608
    :cond_0
    return-object v1
.end method

.method private getFilesDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdAssetController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHttpEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 6
    .parameter "url"

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 138
    .local v2, httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 139
    .local v3, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 140
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v5, v1

    .line 145
    .end local v2           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v5

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private moveToAdDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fn"
    .parameter "filesDir"
    .parameter "subDir"

    .prologue
    .line 504
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 505
    .local v2, file:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, adDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 507
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 508
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 510
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addAsset(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "alias"
    .parameter "url"

    .prologue
    .line 96
    invoke-direct {p0, p2}, Lcom/pad/android/iappad/controller/AdAssetController;->getHttpEntity(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 97
    .local v1, entity:Lorg/apache/http/HttpEntity;
    const/4 v2, 0x0

    .line 99
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 100
    const/4 v4, 0x0

    invoke-virtual {p0, v2, p1, v4}, Lcom/pad/android/iappad/controller/AdAssetController;->writeToDisk(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AdOrmmaAdController.addedAsset(\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/pad/android/iappad/controller/AdAssetController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v4, v3}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    if-eqz v2, :cond_0

    .line 108
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 112
    :goto_0
    const/4 v2, 0x0

    .line 117
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 121
    :goto_2
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    if-eqz v2, :cond_0

    .line 108
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 112
    :goto_3
    const/4 v2, 0x0

    goto :goto_1

    .line 105
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 106
    if-eqz v2, :cond_1

    .line 108
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 112
    :goto_4
    const/4 v2, 0x0

    .line 115
    :cond_1
    throw v4

    .line 118
    :catch_1
    move-exception v0

    .line 119
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 109
    :catch_2
    move-exception v4

    goto :goto_3

    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v5

    goto :goto_4

    .restart local v3       #str:Ljava/lang/String;
    :catch_4
    move-exception v4

    goto :goto_0
.end method

.method public cacheRemaining()I
    .locals 5

    .prologue
    .line 154
    iget-object v3, p0, Lcom/pad/android/iappad/controller/AdAssetController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 155
    .local v0, filesDir:Ljava/io/File;
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 156
    .local v2, stats:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    mul-int v1, v3, v4

    .line 157
    .local v1, free:I
    return v1
.end method

.method public copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "alias"
    .parameter "source"

    .prologue
    .line 55
    const/4 v3, 0x0

    .line 57
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    const-class v8, Lcom/pad/android/iappad/controller/AdAssetController;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 59
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, file:Ljava/lang/String;
    const-string v8, "file:"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 61
    const/4 v8, 0x5

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    :cond_0
    const-string v8, "!"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 64
    .local v6, pos:I
    if-lez v6, :cond_1

    .line 65
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 66
    :cond_1
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 67
    .local v4, jf:Ljava/util/jar/JarFile;
    invoke-virtual {v4, p2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 68
    .local v1, entry:Ljava/util/jar/JarEntry;
    invoke-virtual {v4, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 69
    const/4 v8, 0x0

    invoke-virtual {p0, v3, p1, v8}, Lcom/pad/android/iappad/controller/AdAssetController;->writeToDisk(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 75
    .local v5, name:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 77
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :goto_0
    const/4 v3, 0x0

    .line 84
    .end local v1           #entry:Ljava/util/jar/JarEntry;
    .end local v2           #file:Ljava/lang/String;
    .end local v4           #jf:Ljava/util/jar/JarFile;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #pos:I
    .end local v7           #url:Ljava/net/URL;
    :cond_2
    :goto_1
    return-object v5

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    if-eqz v3, :cond_3

    .line 77
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 81
    :goto_2
    const/4 v3, 0x0

    .line 84
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 74
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 75
    if-eqz v3, :cond_4

    .line 77
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 81
    :goto_3
    const/4 v3, 0x0

    .line 83
    :cond_4
    throw v8

    .line 78
    .restart local v1       #entry:Ljava/util/jar/JarEntry;
    .restart local v2       #file:Ljava/lang/String;
    .restart local v4       #jf:Ljava/util/jar/JarFile;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #pos:I
    .restart local v7       #url:Ljava/net/URL;
    :catch_1
    move-exception v8

    goto :goto_0

    .end local v1           #entry:Ljava/util/jar/JarEntry;
    .end local v2           #file:Ljava/lang/String;
    .end local v4           #jf:Ljava/util/jar/JarFile;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #pos:I
    .end local v7           #url:Ljava/net/URL;
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto :goto_3
.end method

.method public deleteOldAds()V
    .locals 4

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/pad/android/iappad/controller/AdAssetController;->getFilesDir()Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, filesDir:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, adDir:Ljava/io/File;
    invoke-static {v0}, Lcom/pad/android/iappad/controller/AdAssetController;->deleteDirectory(Ljava/io/File;)Z

    .line 679
    return-void
.end method

.method public getAssetOutputString(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 3
    .parameter "asset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/pad/android/iappad/controller/AdAssetController;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pad/android/iappad/controller/AdAssetController;->getAssetDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 558
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 559
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/pad/android/iappad/controller/AdAssetController;->getAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 560
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v2
.end method

.method public getAssetPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdAssetController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAsset(Ljava/lang/String;)V
    .locals 5
    .parameter "asset"

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/pad/android/iappad/controller/AdAssetController;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/pad/android/iappad/controller/AdAssetController;->getAssetDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 571
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 572
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/pad/android/iappad/controller/AdAssetController;->getAssetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 573
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AdOrmmaAdController.assetRemoved(\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/pad/android/iappad/controller/AdAssetController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v3, v2}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public stopAllListeners()V
    .locals 0

    .prologue
    .line 690
    return-void
.end method

.method public writeHTMLToDiskWrap(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "htmlContent"
    .parameter "file"
    .parameter "storeInHashedDirectory"
    .parameter "injection"
    .parameter "bridgePath"
    .parameter "ormmaPath"

    .prologue
    .line 421
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 423
    .local v5, wholeHTMLBuffer:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 424
    .local v0, digest:Ljava/security/MessageDigest;
    if-eqz p3, :cond_0

    .line 426
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 431
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 433
    const/4 v4, 0x0

    .line 436
    .local v4, start:I
    :try_start_1
    const-string v6, "ormma.js"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 438
    if-lez v4, :cond_1

    .line 440
    const-string v6, "ormma.js"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 448
    :cond_1
    :goto_1
    :try_start_2
    const-string v6, "mraid.js"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 450
    if-lez v4, :cond_2

    .line 452
    const-string v6, "mraid.js"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 460
    .end local v4           #start:I
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 462
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/pad/android/iappad/controller/AdAssetController;->getAssetOutputString(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 463
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 464
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 474
    if-eqz v3, :cond_3

    .line 478
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 483
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/pad/android/iappad/controller/AdAssetController;->getFilesDir()Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, filesDir:Ljava/lang/String;
    if-eqz p3, :cond_4

    if-eqz v0, :cond_4

    .line 486
    invoke-direct {p0, v0}, Lcom/pad/android/iappad/controller/AdAssetController;->asHex(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, v2, v6}, Lcom/pad/android/iappad/controller/AdAssetController;->moveToAdDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 489
    :cond_4
    return-object v2

    .line 427
    .end local v2           #filesDir:Ljava/lang/String;
    .end local v3           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 428
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 443
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v4       #start:I
    :catch_1
    move-exception v1

    .line 444
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "LBAdController"

    invoke-static {v6, v1}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 455
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 456
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "LBAdController"

    invoke-static {v6, v1}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 465
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #start:I
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 467
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 474
    if-eqz v3, :cond_3

    .line 478
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 479
    :catch_4
    move-exception v6

    goto :goto_3

    .line 468
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v1

    .line 470
    .local v1, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 474
    if-eqz v3, :cond_3

    .line 478
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    .line 479
    :catch_6
    move-exception v6

    goto :goto_3

    .line 473
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 474
    if-eqz v3, :cond_5

    .line 478
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 481
    :cond_5
    :goto_4
    throw v6

    .line 479
    :catch_7
    move-exception v7

    goto :goto_4

    :catch_8
    move-exception v6

    goto :goto_3
.end method

.method public writeToDisk(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter "in"
    .parameter "file"
    .parameter "storeInHashedDirectory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 185
    .local v0, buff:[B
    const/4 v1, 0x0

    .line 186
    .local v1, digest:Ljava/security/MessageDigest;
    if-eqz p3, :cond_0

    .line 188
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 193
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 195
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/pad/android/iappad/controller/AdAssetController;->getAssetOutputString(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 197
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 198
    .local v4, numread:I
    if-gtz v4, :cond_3

    .line 209
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    if-eqz v5, :cond_1

    .line 213
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 217
    :goto_2
    const/4 v5, 0x0

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/pad/android/iappad/controller/AdAssetController;->getFilesDir()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, filesDir:Ljava/lang/String;
    if-eqz p3, :cond_2

    if-eqz v1, :cond_2

    .line 225
    invoke-direct {p0, v1}, Lcom/pad/android/iappad/controller/AdAssetController;->asHex(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, v3, v6}, Lcom/pad/android/iappad/controller/AdAssetController;->moveToAdDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 189
    .end local v3           #filesDir:Ljava/lang/String;
    .end local v4           #numread:I
    .end local v5           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 190
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 201
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v4       #numread:I
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :cond_3
    if-eqz p3, :cond_4

    if-eqz v1, :cond_4

    .line 202
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 204
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 210
    .end local v4           #numread:I
    :catchall_0
    move-exception v6

    .line 211
    if-eqz v5, :cond_5

    .line 213
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 217
    :goto_3
    const/4 v5, 0x0

    .line 219
    :cond_5
    throw v6

    .line 214
    :catch_1
    move-exception v7

    goto :goto_3

    .restart local v4       #numread:I
    :catch_2
    move-exception v6

    goto :goto_2
.end method

.method public writeToDiskWrap(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "in"
    .parameter "file"
    .parameter "storeInHashedDirectory"
    .parameter "injection"
    .parameter "bridgePath"
    .parameter "ormmaPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    const/16 v12, 0x400

    new-array v1, v12, [B

    .line 256
    .local v1, buff:[B
    const/4 v2, 0x0

    .line 257
    .local v2, digest:Ljava/security/MessageDigest;
    if-eqz p3, :cond_0

    .line 259
    :try_start_0
    const-string v12, "MD5"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 266
    :cond_0
    :goto_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 267
    .local v5, fromFile:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    .line 270
    .local v8, out:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 272
    .local v7, numread:I
    if-gtz v7, :cond_9

    .line 284
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    .line 286
    .local v10, wholeHTML:Ljava/lang/String;
    const-string v12, "</html>"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_d

    const/4 v6, 0x1

    .line 287
    .local v6, hasHTMLWrap:Z
    :goto_2
    const-string v12, "html"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ", hasHTMLWrap = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v11, 0x0

    .line 292
    .local v11, wholeHTMLBuffer:Ljava/lang/StringBuffer;
    if-eqz v6, :cond_2

    .line 295
    new-instance v11, Ljava/lang/StringBuffer;

    .end local v11           #wholeHTMLBuffer:Ljava/lang/StringBuffer;
    invoke-direct {v11, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .restart local v11       #wholeHTMLBuffer:Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .line 316
    .local v9, start:I
    :try_start_2
    const-string v12, "ormma.js"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 318
    if-lez v9, :cond_1

    .line 325
    const-string v12, "ormma.js"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v9

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "file://"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v9, v12, v13}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 333
    :cond_1
    :goto_3
    :try_start_3
    const-string v12, "mraid.js"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 335
    if-lez v9, :cond_2

    .line 342
    const-string v12, "mraid.js"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v9

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "file://"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v9, v12, v13}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 350
    .end local v9           #start:I
    :cond_2
    :goto_4
    :try_start_4
    const-string v12, "AdView"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Whole HTML Buffer = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/pad/android/iappad/controller/AdAssetController;->getAssetOutputString(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v8

    .line 353
    if-nez v6, :cond_4

    .line 354
    const-string v12, "<html>"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 355
    const-string v12, "<head>"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 356
    const-string v12, "<meta name=\'viewport\' content=\'user-scalable=no initial-scale=1.0\' />"

    .line 357
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 356
    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 358
    const-string v12, "<title>Advertisement</title> "

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 360
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "<script src=\"file://"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" type=\"text/javascript\"></script>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 361
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 360
    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 362
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "<script src=\"file://"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" type=\"text/javascript\"></script>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 363
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 362
    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 365
    if-eqz p4, :cond_3

    .line 366
    const-string v12, "<script type=\"text/javascript\">"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 367
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 368
    const-string v12, "</script>"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 370
    :cond_3
    const-string v12, "</head>"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 371
    const-string v12, "<body style=\"margin:0; padding:0; overflow:hidden; background-color:transparent;\">"

    .line 372
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 371
    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 373
    const-string v12, "<div align=\"center\"> "

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 376
    :cond_4
    if-nez v6, :cond_e

    .line 377
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 382
    :goto_5
    if-nez v6, :cond_5

    .line 383
    const-string v12, "</div> "

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 384
    const-string v12, "</body> "

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 385
    const-string v12, "</html> "

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 388
    :cond_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 392
    if-eqz v5, :cond_6

    .line 394
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 398
    :goto_6
    const/4 v5, 0x0

    .line 400
    :cond_6
    if-eqz v8, :cond_7

    .line 402
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 407
    :goto_7
    const/4 v8, 0x0

    .line 410
    :cond_7
    invoke-direct {p0}, Lcom/pad/android/iappad/controller/AdAssetController;->getFilesDir()Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, filesDir:Ljava/lang/String;
    if-eqz p3, :cond_8

    if-eqz v2, :cond_8

    .line 413
    invoke-direct {p0, v2}, Lcom/pad/android/iappad/controller/AdAssetController;->asHex(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v4, v12}, Lcom/pad/android/iappad/controller/AdAssetController;->moveToAdDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 416
    :cond_8
    return-object v4

    .line 260
    .end local v4           #filesDir:Ljava/lang/String;
    .end local v5           #fromFile:Ljava/io/ByteArrayOutputStream;
    .end local v6           #hasHTMLWrap:Z
    .end local v7           #numread:I
    .end local v8           #out:Ljava/io/FileOutputStream;
    .end local v10           #wholeHTML:Ljava/lang/String;
    .end local v11           #wholeHTMLBuffer:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    .line 261
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_0

    .line 276
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v5       #fromFile:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #numread:I
    .restart local v8       #out:Ljava/io/FileOutputStream;
    :cond_9
    if-eqz p3, :cond_a

    if-eqz v2, :cond_a

    .line 277
    :try_start_7
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 280
    :cond_a
    const/4 v12, 0x0

    invoke-virtual {v5, v1, v12, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 391
    .end local v7           #numread:I
    :catchall_0
    move-exception v12

    .line 392
    if-eqz v5, :cond_b

    .line 394
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 398
    :goto_8
    const/4 v5, 0x0

    .line 400
    :cond_b
    if-eqz v8, :cond_c

    .line 402
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 407
    :goto_9
    const/4 v8, 0x0

    .line 409
    :cond_c
    throw v12

    .line 286
    .restart local v7       #numread:I
    .restart local v10       #wholeHTML:Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 328
    .restart local v6       #hasHTMLWrap:Z
    .restart local v9       #start:I
    .restart local v11       #wholeHTMLBuffer:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v3

    .line 329
    .local v3, e:Ljava/lang/Exception;
    :try_start_a
    const-string v12, "LBAdController"

    invoke-static {v12, v3}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 345
    .end local v3           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 346
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v12, "LBAdController"

    invoke-static {v12, v3}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 379
    .end local v3           #e:Ljava/lang/Exception;
    .end local v9           #start:I
    :cond_e
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 395
    .end local v6           #hasHTMLWrap:Z
    .end local v7           #numread:I
    .end local v10           #wholeHTML:Ljava/lang/String;
    .end local v11           #wholeHTMLBuffer:Ljava/lang/StringBuffer;
    :catch_3
    move-exception v13

    goto :goto_8

    .line 404
    :catch_4
    move-exception v13

    goto :goto_9

    .line 395
    .restart local v6       #hasHTMLWrap:Z
    .restart local v7       #numread:I
    .restart local v10       #wholeHTML:Ljava/lang/String;
    .restart local v11       #wholeHTMLBuffer:Ljava/lang/StringBuffer;
    :catch_5
    move-exception v12

    goto :goto_6

    .line 404
    :catch_6
    move-exception v12

    goto :goto_7
.end method
