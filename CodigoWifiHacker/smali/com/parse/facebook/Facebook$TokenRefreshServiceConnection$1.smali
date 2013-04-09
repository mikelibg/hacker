.class Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection$1;
.super Landroid/os/Handler;
.source "Facebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;


# direct methods
.method constructor <init>(Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 532
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "access_token"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 533
    .local v5, token:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "expires_in"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v2, v6, v8

    .line 538
    .local v2, expiresAt:J
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 539
    .local v4, resultBundle:Landroid/os/Bundle;
    const-string v6, "expires_in"

    invoke-virtual {v4, v6, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 541
    if-eqz v5, :cond_1

    .line 542
    iget-object v6, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;

    iget-object v6, v6, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->this$0:Lcom/parse/facebook/Facebook;

    invoke-virtual {v6, v5}, Lcom/parse/facebook/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 543
    iget-object v6, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;

    iget-object v6, v6, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->this$0:Lcom/parse/facebook/Facebook;

    invoke-virtual {v6, v2, v3}, Lcom/parse/facebook/Facebook;->setAccessExpires(J)V

    .line 544
    iget-object v6, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;

    iget-object v6, v6, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/parse/facebook/Facebook$ServiceListener;

    if-eqz v6, :cond_0

    .line 545
    iget-object v6, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;

    iget-object v6, v6, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/parse/facebook/Facebook$ServiceListener;

    invoke-interface {v6, v4}, Lcom/parse/facebook/Facebook$ServiceListener;->onComplete(Landroid/os/Bundle;)V

    .line 560
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;

    iget-object v6, v6, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->applicationsContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 561
    return-void

    .line 547
    :cond_1
    iget-object v6, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;

    iget-object v6, v6, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/parse/facebook/Facebook$ServiceListener;

    if-eqz v6, :cond_0

    .line 548
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, error:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "error_code"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 550
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "error_code"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 551
    .local v1, errorCode:I
    iget-object v6, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;

    iget-object v6, v6, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/parse/facebook/Facebook$ServiceListener;

    new-instance v7, Lcom/parse/facebook/FacebookError;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v1}, Lcom/parse/facebook/FacebookError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Lcom/parse/facebook/Facebook$ServiceListener;->onFacebookError(Lcom/parse/facebook/FacebookError;)V

    goto :goto_0

    .line 553
    .end local v1           #errorCode:I
    :cond_2
    iget-object v6, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection$1;->this$1:Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;

    iget-object v6, v6, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/parse/facebook/Facebook$ServiceListener;

    new-instance v7, Ljava/lang/Error;

    if-eqz v0, :cond_3

    .end local v0           #error:Ljava/lang/String;
    :goto_1
    invoke-direct {v7, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcom/parse/facebook/Facebook$ServiceListener;->onError(Ljava/lang/Error;)V

    goto :goto_0

    .restart local v0       #error:Ljava/lang/String;
    :cond_3
    const-string v0, "Unknown service error"

    goto :goto_1
.end method
