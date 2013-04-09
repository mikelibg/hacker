.class public Lcom/revmob/ads/EnvironmentConfig;
.super Ljava/lang/Object;
.source "EnvironmentConfig.java"


# static fields
.field private static final PRODUCTION_SERVER_ADDRESS:Ljava/lang/String; = "android.bcfads.com"

.field private static desiredResponse:Ljava/lang/String;

.field private static sdkName:Ljava/lang/String;

.field private static sdkVersion:Ljava/lang/String;

.field private static testingMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "4.2.7"

    sput-object v0, Lcom/revmob/ads/EnvironmentConfig;->sdkVersion:Ljava/lang/String;

    .line 13
    const-string v0, "android"

    sput-object v0, Lcom/revmob/ads/EnvironmentConfig;->sdkName:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/revmob/ads/EnvironmentConfig;->testingMode:Z

    .line 16
    const-string v0, "with_ads"

    sput-object v0, Lcom/revmob/ads/EnvironmentConfig;->desiredResponse:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultJsonPayload(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7
    .parameter "context"

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Lcom/revmob/android/DeviceInformation;

    invoke-direct {v0, p0}, Lcom/revmob/android/DeviceInformation;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, device:Lcom/revmob/android/DeviceInformation;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v2, entity:Lorg/json/JSONObject;
    const-string v5, "device"

    invoke-virtual {v0}, Lcom/revmob/android/DeviceInformation;->getDeviceJSON()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v3, sdk:Lorg/json/JSONObject;
    const-string v5, "version"

    sget-object v6, Lcom/revmob/ads/EnvironmentConfig;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v5, "name"

    sget-object v6, Lcom/revmob/ads/EnvironmentConfig;->sdkName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v5, "sdk"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    sget-boolean v5, Lcom/revmob/ads/EnvironmentConfig;->testingMode:Z

    if-eqz v5, :cond_0

    .line 65
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 66
    .local v4, testing:Lorg/json/JSONObject;
    const-string v5, "response"

    sget-object v6, Lcom/revmob/ads/EnvironmentConfig;->desiredResponse:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v5, "testing"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0           #device:Lcom/revmob/android/DeviceInformation;
    .end local v2           #entity:Lorg/json/JSONObject;
    .end local v3           #sdk:Lorg/json/JSONObject;
    .end local v4           #testing:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getFullServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "protocol"
    .parameter "path"

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.bcfads.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/revmob/ads/EnvironmentConfig;->sdkName:Ljava/lang/String;

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/revmob/ads/EnvironmentConfig;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static setSdkName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 37
    if-eqz p0, :cond_0

    .line 38
    sput-object p0, Lcom/revmob/ads/EnvironmentConfig;->sdkName:Ljava/lang/String;

    .line 40
    :cond_0
    return-void
.end method

.method public static setSdkVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 27
    if-eqz p0, :cond_0

    .line 28
    sput-object p0, Lcom/revmob/ads/EnvironmentConfig;->sdkVersion:Ljava/lang/String;

    .line 30
    :cond_0
    return-void
.end method

.method public static setTestingMode(Z)V
    .locals 1
    .parameter "isTesting"

    .prologue
    .line 43
    sput-boolean p0, Lcom/revmob/ads/EnvironmentConfig;->testingMode:Z

    .line 44
    const-string v0, "with_ads"

    sput-object v0, Lcom/revmob/ads/EnvironmentConfig;->desiredResponse:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static setTestingWithoutAds(Z)V
    .locals 1
    .parameter "isTesting"

    .prologue
    .line 48
    sput-boolean p0, Lcom/revmob/ads/EnvironmentConfig;->testingMode:Z

    .line 49
    const-string v0, "without_ads"

    sput-object v0, Lcom/revmob/ads/EnvironmentConfig;->desiredResponse:Ljava/lang/String;

    .line 50
    return-void
.end method
