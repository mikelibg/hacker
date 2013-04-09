.class Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/facebook/Facebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenRefreshServiceConnection"
.end annotation


# instance fields
.field final applicationsContext:Landroid/content/Context;

.field final messageReceiver:Landroid/os/Messenger;

.field messageSender:Landroid/os/Messenger;

.field final serviceListener:Lcom/parse/facebook/Facebook$ServiceListener;

.field final synthetic this$0:Lcom/parse/facebook/Facebook;


# direct methods
.method public constructor <init>(Lcom/parse/facebook/Facebook;Landroid/content/Context;Lcom/parse/facebook/Facebook$ServiceListener;)V
    .locals 2
    .parameter
    .parameter "applicationsContext"
    .parameter "serviceListener"

    .prologue
    .line 570
    iput-object p1, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->this$0:Lcom/parse/facebook/Facebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection$1;

    invoke-direct {v1, p0}, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection$1;-><init>(Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->messageReceiver:Landroid/os/Messenger;

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->messageSender:Landroid/os/Messenger;

    .line 571
    iput-object p2, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->applicationsContext:Landroid/content/Context;

    .line 572
    iput-object p3, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/parse/facebook/Facebook$ServiceListener;

    .line 573
    return-void
.end method

.method private refreshToken()V
    .locals 6

    .prologue
    .line 588
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 589
    .local v2, requestData:Landroid/os/Bundle;
    const-string v3, "access_token"

    iget-object v4, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->this$0:Lcom/parse/facebook/Facebook;

    #getter for: Lcom/parse/facebook/Facebook;->mAccessToken:Ljava/lang/String;
    invoke-static {v4}, Lcom/parse/facebook/Facebook;->access$100(Lcom/parse/facebook/Facebook;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 592
    .local v1, request:Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 593
    iget-object v3, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->messageReceiver:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 596
    :try_start_0
    iget-object v3, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->messageSender:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/parse/facebook/Facebook$ServiceListener;

    new-instance v4, Ljava/lang/Error;

    const-string v5, "Service connection error"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/parse/facebook/Facebook$ServiceListener;->onError(Ljava/lang/Error;)V

    goto :goto_0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 576
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->messageSender:Landroid/os/Messenger;

    .line 577
    invoke-direct {p0}, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->refreshToken()V

    .line 578
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "arg"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/parse/facebook/Facebook$ServiceListener;

    new-instance v1, Ljava/lang/Error;

    const-string v2, "Service disconnected"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/parse/facebook/Facebook$ServiceListener;->onError(Ljava/lang/Error;)V

    .line 584
    iget-object v0, p0, Lcom/parse/facebook/Facebook$TokenRefreshServiceConnection;->applicationsContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 585
    return-void
.end method
