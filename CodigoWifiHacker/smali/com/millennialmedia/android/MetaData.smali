.class Lcom/millennialmedia/android/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# instance fields
.field acid:I

.field ip:Ljava/lang/String;

.field urid:Ljava/lang/String;

.field version:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MetaData;->deserializeMetaDataFromObj(Lorg/json/JSONObject;)V

    .line 33
    return-void
.end method


# virtual methods
.method deserializeMetaDataFromObj(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "metaObject"

    .prologue
    const/4 v1, 0x0

    .line 41
    const-string v0, "acid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/MetaData;->acid:I

    .line 42
    const-string v0, "ip"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MetaData;->ip:Ljava/lang/String;

    .line 43
    const-string v0, "urid"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MetaData;->urid:Ljava/lang/String;

    .line 44
    const-string v0, "version"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MetaData;->version:Ljava/lang/String;

    .line 45
    return-void
.end method
