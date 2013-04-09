.class public Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/bootstrap/SdkBoostrapTasks;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;->a:Z

    return-void
.end method

.method static synthetic a(Ljava/io/InputStream;Ljava/io/File;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;->b(Ljava/io/InputStream;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "AppLovinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Boostrap] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static b(Ljava/io/InputStream;Ljava/io/File;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const v2, 0xc800

    :try_start_2
    new-array v2, v2, [B

    :goto_0
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Programming error: unsupported algorithm: SHA1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/ad;->a([B)Ljava/lang/String;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public startUpdateDownload(Landroid/content/Context;)V
    .locals 7

    const-wide/16 v5, 0x0

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isVerboseLoggingEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;->a:Z

    const-string v0, "applovin.sdk.boostrap"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "NextAutoupdateTime"

    invoke-interface {v0, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/applovin/impl/bootstrap/b;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/bootstrap/b;-><init>(Lcom/applovin/impl/bootstrap/SdkBoostrapTasksImpl;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/applovin/impl/bootstrap/b;->start()V

    :cond_1
    return-void
.end method
