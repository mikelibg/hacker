.class public Lcom/chartboost/sdk/CBAPIRequest;
.super Ljava/lang/Object;
.source "CBAPIRequest.java"


# static fields
.field public static final CB_PARAM_AD_ID:Ljava/lang/String; = "ad_id"

.field private static final CB_PARAM_AUID:Ljava/lang/String; = "auid"

.field public static final CB_PARAM_CACHE:Ljava/lang/String; = "cache"

.field private static final CB_PARAM_COUNTRY:Ljava/lang/String; = "country"

.field private static final CB_PARAM_HEIGHT:Ljava/lang/String; = "h"

.field public static final CB_PARAM_IMEI:Ljava/lang/String; = "imei"

.field private static final CB_PARAM_LANGUAGE:Ljava/lang/String; = "language"

.field private static final CB_PARAM_MODEL:Ljava/lang/String; = "model"

.field private static final CB_PARAM_OS:Ljava/lang/String; = "os"

.field private static final CB_PARAM_SCALE:Ljava/lang/String; = "scale"

.field private static final CB_PARAM_SDK:Ljava/lang/String; = "sdk"

.field private static final CB_PARAM_UUID:Ljava/lang/String; = "uuid"

.field private static final CB_PARAM_VERSION:Ljava/lang/String; = "bundle"

.field private static final CB_PARAM_WIDTH:Ljava/lang/String; = "w"


# instance fields
.field private action:Ljava/lang/String;

.field private body:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private contextInfoObject:Ljava/lang/Object;

.field private controller:Ljava/lang/String;

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "controller"
    .parameter "action"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/chartboost/sdk/CBAPIRequest;->controller:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/chartboost/sdk/CBAPIRequest;->action:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private serializeDictionaryToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, dictionary:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, ""

    .line 264
    .local v2, string:Ljava/lang/String;
    new-instance v1, Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 266
    .local v1, keys:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 276
    return-object v2

    .line 266
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    .local v0, key:Ljava/lang/String;
    const-string v5, "app"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "signature"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 272
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 273
    .local v3, value:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->body:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->body:Ljava/util/Map;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->body:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public appendDeviceInfoParams()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v7, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    if-nez v7, :cond_0

    .line 73
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7

    .line 75
    :cond_0
    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v8, "sdk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 77
    const-string v7, "model"

    const-string v8, "Android Simulator"

    invoke-virtual {p0, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v7, "uuid"

    const-string v8, "ffff"

    invoke-virtual {p0, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v7, "auid"

    const-string v8, "ffff"

    invoke-virtual {p0, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    const-string v7, "os"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Android "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v7, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v7, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v7, "sdk"

    const-string v8, "2.0.1"

    invoke-virtual {p0, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v7, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 93
    .local v0, display:Landroid/view/Display;
    const/4 v3, 0x0

    .line 94
    .local v3, statusBarOffset:I
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x8

    if-gt v7, v8, :cond_1

    .line 96
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 97
    .local v2, rectangle:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 98
    .local v6, window:Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 99
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 102
    .end local v2           #rectangle:Landroid/graphics/Rect;
    .end local v6           #window:Landroid/view/Window;
    :cond_1
    const-string v7, "w"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v7, "h"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v7, "scale"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :try_start_0
    iget-object v7, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 113
    .local v4, tm:Landroid/telephony/TelephonyManager;
    const-string v8, "imei"

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v7, ""

    :goto_1
    invoke-virtual {p0, v8, v7}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :goto_2
    :try_start_1
    iget-object v7, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 122
    .local v1, manager:Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 123
    .local v5, version:Ljava/lang/String;
    const-string v7, "bundle"

    invoke-virtual {p0, v7, v5}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    .end local v1           #manager:Landroid/content/pm/PackageInfo;
    .end local v5           #version:Ljava/lang/String;
    :goto_3
    return-void

    .line 82
    .end local v0           #display:Landroid/view/Display;
    .end local v3           #statusBarOffset:I
    :cond_2
    const-string v7, "model"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v7, "uuid"

    iget-object v8, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "android_id"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v7, "auid"

    iget-object v8, p0, Lcom/chartboost/sdk/CBAPIRequest;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/chartboost/sdk/CBUtility;->getAUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    .restart local v0       #display:Landroid/view/Display;
    .restart local v3       #statusBarOffset:I
    .restart local v4       #tm:Landroid/telephony/TelephonyManager;
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    goto :goto_1

    .line 124
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v7

    goto :goto_3

    .line 114
    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method public appendQueryArgument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->query:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->query:Ljava/util/Map;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->query:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->body:Ljava/util/Map;

    return-object v0
.end method

.method public getContextInfoObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->contextInfoObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getController()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->controller:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->params:Ljava/util/List;

    return-object v0
.end method

.method public getQuery()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIRequest;->query:Ljava/util/Map;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIRequest;->action:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setBody(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, body:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIRequest;->body:Ljava/util/Map;

    .line 214
    return-void
.end method

.method public setContextInfoObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "contextInfoObject"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIRequest;->contextInfoObject:Ljava/lang/Object;

    .line 259
    return-void
.end method

.method public setController(Ljava/lang/String;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIRequest;->controller:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIRequest;->params:Ljava/util/List;

    .line 244
    return-void
.end method

.method public setQuery(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, query:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIRequest;->query:Ljava/util/Map;

    .line 229
    return-void
.end method

.method public sign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "appId"
    .parameter "appSignature"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "controller:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/chartboost/sdk/CBAPIRequest;->controller:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";action:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/chartboost/sdk/CBAPIRequest;->action:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, string:Ljava/lang/String;
    iget-object v10, p0, Lcom/chartboost/sdk/CBAPIRequest;->query:Ljava/util/Map;

    if-eqz v10, :cond_0

    .line 137
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/chartboost/sdk/CBAPIRequest;->query:Ljava/util/Map;

    invoke-direct {p0, v11}, Lcom/chartboost/sdk/CBAPIRequest;->serializeDictionaryToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 139
    :cond_0
    iget-object v10, p0, Lcom/chartboost/sdk/CBAPIRequest;->body:Ljava/util/Map;

    if-eqz v10, :cond_1

    .line 140
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/chartboost/sdk/CBAPIRequest;->body:Ljava/util/Map;

    invoke-direct {p0, v11}, Lcom/chartboost/sdk/CBAPIRequest;->serializeDictionaryToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 144
    :cond_1
    iget-object v10, p0, Lcom/chartboost/sdk/CBAPIRequest;->params:Ljava/util/List;

    if-eqz v10, :cond_2

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, count:I
    iget-object v10, p0, Lcom/chartboost/sdk/CBAPIRequest;->params:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 152
    .end local v1           #count:I
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";signature:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 155
    const-string v10, "STRING"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v10, "ISO-8859-1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 159
    .local v9, stringBinary:[B
    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 160
    .local v6, md:Ljava/security/MessageDigest;
    invoke-virtual {v6, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 161
    .local v4, hashBinary:[B
    const-string v3, ""

    .line 162
    .local v3, hash:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v10, v4

    if-lt v5, v10, :cond_4

    .line 167
    const-string v10, "app"

    move-object/from16 v0, p1

    invoke-virtual {p0, v10, v0}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v10, "signature"

    invoke-virtual {p0, v10, v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void

    .line 146
    .end local v3           #hash:Ljava/lang/String;
    .end local v4           #hashBinary:[B
    .end local v5           #i:I
    .end local v6           #md:Ljava/security/MessageDigest;
    .end local v9           #stringBinary:[B
    .restart local v1       #count:I
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 147
    .local v7, param:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    .end local v1           #count:I
    .local v2, count:I
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move v1, v2

    .end local v2           #count:I
    .restart local v1       #count:I
    goto/16 :goto_0

    .line 163
    .end local v1           #count:I
    .end local v7           #param:Ljava/lang/String;
    .restart local v3       #hash:Ljava/lang/String;
    .restart local v4       #hashBinary:[B
    .restart local v5       #i:I
    .restart local v6       #md:Ljava/security/MessageDigest;
    .restart local v9       #stringBinary:[B
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "%02x"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aget-byte v14, v4, v5

    and-int/lit16 v14, v14, 0xff

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method
