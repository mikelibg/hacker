.class Lcom/revmob/RevMob$3;
.super Ljava/lang/Object;
.source "RevMob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/RevMob;->postStartSession(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/RevMob;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/revmob/RevMob;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/revmob/RevMob$3;->this$0:Lcom/revmob/RevMob;

    iput-object p2, p0, Lcom/revmob/RevMob$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/revmob/RevMob$3;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/revmob/ads/EnvironmentConfig;->defaultJsonPayload(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, payload:Ljava/lang/String;
    iget-object v1, p0, Lcom/revmob/RevMob$3;->this$0:Lcom/revmob/RevMob;

    #getter for: Lcom/revmob/RevMob;->httpHelper:Lcom/revmob/ads/internal/HTTPHelper;
    invoke-static {v1}, Lcom/revmob/RevMob;->access$000(Lcom/revmob/RevMob;)Lcom/revmob/ads/internal/HTTPHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/RevMob$3;->this$0:Lcom/revmob/RevMob;

    invoke-virtual {v2}, Lcom/revmob/RevMob;->startSessionUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/revmob/ads/internal/HTTPHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v0           #payload:Ljava/lang/String;
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v1

    goto :goto_0
.end method
