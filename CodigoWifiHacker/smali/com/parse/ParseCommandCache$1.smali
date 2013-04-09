.class Lcom/parse/ParseCommandCache$1;
.super Landroid/content/BroadcastReceiver;
.source "ParseCommandCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommandCache;

.field final synthetic val$connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommandCache;Landroid/net/ConnectivityManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/parse/ParseCommandCache$1;->this$0:Lcom/parse/ParseCommandCache;

    iput-object p2, p0, Lcom/parse/ParseCommandCache$1;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 135
    const-string v3, "noConnectivity"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 137
    .local v0, connectionLost:Z
    if-eqz v0, :cond_0

    .line 138
    iget-object v3, p0, Lcom/parse/ParseCommandCache$1;->this$0:Lcom/parse/ParseCommandCache;

    invoke-virtual {v3, v2}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseCommandCache$1;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 141
    .local v1, network:Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/parse/ParseCommandCache$1;->this$0:Lcom/parse/ParseCommandCache;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v3, v2}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    goto :goto_0
.end method
