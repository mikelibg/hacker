.class Lcom/parse/ParseCommandCache$3;
.super Ljava/lang/Object;
.source "ParseCommandCache.java"

# interfaces
.implements Lcom/parse/ParseCommand$InternalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommandCache;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommandCache;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/parse/ParseCommandCache$3;->this$0:Lcom/parse/ParseCommandCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Lcom/parse/ParseCommand;Ljava/lang/Object;)V
    .locals 4
    .parameter "command"
    .parameter "result"

    .prologue
    .line 535
    :try_start_0
    instance-of v2, p2, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    check-cast p2, Lorg/json/JSONObject;

    .end local p2
    const-string v2, "data"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, objectId:Ljava/lang/String;
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parse/ParseCommand;->getLocalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/parse/LocalIdManager;->setObjectId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v1           #objectId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v2

    goto :goto_0
.end method
