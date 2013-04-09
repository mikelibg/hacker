.class final Lcom/parse/ParsePushRouter$2;
.super Lcom/parse/ParseCallback;
.source "ParsePushRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePushRouter;->routePush(Lcom/parse/PushService;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$message:Lorg/json/JSONObject;

.field final synthetic val$service:Lcom/parse/PushService;


# direct methods
.method constructor <init>(Lcom/parse/PushService;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/parse/ParsePushRouter$2;->val$service:Lcom/parse/PushService;

    iput-object p2, p0, Lcom/parse/ParsePushRouter$2;->val$message:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/parse/ParseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method internalDone(Ljava/lang/Boolean;Lcom/parse/ParseException;)V
    .locals 2
    .parameter "returnValue"
    .parameter "e"

    .prologue
    .line 554
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/parse/ParsePushRouter$2;->val$service:Lcom/parse/PushService;

    #calls: Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/parse/ParsePushRouter;->access$000(Landroid/content/Context;)V

    .line 557
    iget-object v0, p0, Lcom/parse/ParsePushRouter$2;->val$service:Lcom/parse/PushService;

    iget-object v1, p0, Lcom/parse/ParsePushRouter$2;->val$message:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/parse/ParsePushRouter;->routePush(Lcom/parse/PushService;Lorg/json/JSONObject;)V

    .line 559
    :cond_0
    return-void
.end method

.method bridge synthetic internalDone(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 551
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushRouter$2;->internalDone(Ljava/lang/Boolean;Lcom/parse/ParseException;)V

    return-void
.end method
