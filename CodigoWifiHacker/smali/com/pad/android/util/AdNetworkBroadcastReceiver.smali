.class public Lcom/pad/android/util/AdNetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdNetworkBroadcastReceiver.java"


# instance fields
.field private mOrmmaNetworkController:Lcom/pad/android/iappad/controller/AdNetworkController;


# direct methods
.method public constructor <init>(Lcom/pad/android/iappad/controller/AdNetworkController;)V
    .locals 0
    .parameter "ormmaNetworkController"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/pad/android/util/AdNetworkBroadcastReceiver;->mOrmmaNetworkController:Lcom/pad/android/iappad/controller/AdNetworkController;

    .line 25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/pad/android/util/AdNetworkBroadcastReceiver;->mOrmmaNetworkController:Lcom/pad/android/iappad/controller/AdNetworkController;

    invoke-virtual {v1}, Lcom/pad/android/iappad/controller/AdNetworkController;->onConnectionChanged()V

    .line 36
    :cond_0
    return-void
.end method
