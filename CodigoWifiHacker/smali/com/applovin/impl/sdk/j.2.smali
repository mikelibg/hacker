.class public Lcom/applovin/impl/sdk/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/applovin/impl/sdk/j;->a:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/applovin/impl/sdk/j;->b:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/applovin/impl/sdk/j;->c:[I

    const-class v0, Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/sdk/j;->d:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, p0}, Lcom/applovin/impl/sdk/l;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/j;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    move v2, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    move v1, v0

    :goto_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    const-string v0, "wifi"

    :goto_2
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/Logger;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/sdk/j;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resolved to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/applovin/sdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v0

    :cond_0
    const v0, 0x7fffffff

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_2
    if-nez v2, :cond_6

    sget-object v0, Lcom/applovin/impl/sdk/j;->a:[I

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/j;->a(I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "2g"

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/applovin/impl/sdk/j;->b:[I

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/j;->a(I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "3g"

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/applovin/impl/sdk/j;->c:[I

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/j;->a(I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "4g"

    goto :goto_2

    :cond_5
    const-string v0, "mobile"

    goto :goto_2

    :cond_6
    const-string v0, "unknown"

    goto :goto_2

    :cond_7
    const-string v0, "unknown"

    goto :goto_3
.end method

.method static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No endpoint specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/w;->f:Lcom/applovin/impl/sdk/y;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/applovin/impl/sdk/w;->m:Lcom/applovin/impl/sdk/y;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/y;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "?device_token="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "?api_key="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSdkKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "results"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method static a(ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 4

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/z;

    move-result-object v0

    const/16 v1, 0x191

    if-ne p0, v1, :cond_1

    sget-object v1, Lcom/applovin/impl/sdk/w;->c:Lcom/applovin/impl/sdk/y;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;Ljava/lang/Object;)V

    sget-object v1, Lcom/applovin/impl/sdk/w;->f:Lcom/applovin/impl/sdk/y;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;Ljava/lang/Object;)V

    sget-object v1, Lcom/applovin/impl/sdk/w;->o:Lcom/applovin/impl/sdk/y;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/z;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x1a2

    if-ne p0, v1, :cond_2

    sget-object v1, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/y;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/z;->b()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x190

    if-lt p0, v0, :cond_3

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_3

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g()V

    goto :goto_0

    :cond_3
    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g()V

    goto :goto_0
.end method

.method static a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No response specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    const-string v0, "settings"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/z;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/z;->a(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/z;->b()V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/Logger;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/j;->d:Ljava/lang/String;

    const-string v2, "New settings processed"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/Logger;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/j;->d:Ljava/lang/String;

    const-string v3, "Unable to parse settings out of API response"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(I[I)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    if-ne v3, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static a(JLjava/util/concurrent/TimeUnit;Landroid/content/Context;)Z
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/applovin/impl/sdk/k;

    const-string v3, "AppLovinCheckWifiMobile"

    invoke-direct {v2, v3, p3, v0, v1}, Lcom/applovin/impl/sdk/k;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->start()V

    :try_start_0
    invoke-virtual {v1, p0, p1, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(ZLandroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_5

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/l;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    :cond_1
    :goto_2
    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_1

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/j;->a(JLjava/util/concurrent/TimeUnit;Landroid/content/Context;)Z

    move-result v1

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method static b(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No endpoint specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lcom/applovin/impl/sdk/w;->n:Lcom/applovin/impl/sdk/y;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 3

    const/16 v0, 0x1a2

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/z;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/w;->a:Lcom/applovin/impl/sdk/y;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/z;->a(Lcom/applovin/impl/sdk/y;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/z;->b()V

    :cond_0
    return-void
.end method
