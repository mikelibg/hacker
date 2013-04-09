.class public Lcom/pad/android/util/AdConfigurationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdConfigurationBroadcastReceiver.java"


# instance fields
.field private mLastOrientation:I

.field private mOrmmaDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;


# direct methods
.method public constructor <init>(Lcom/pad/android/iappad/controller/AdDisplayController;)V
    .locals 1
    .parameter "ormmaDisplayController"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/pad/android/util/AdConfigurationBroadcastReceiver;->mOrmmaDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

    .line 28
    iget-object v0, p0, Lcom/pad/android/util/AdConfigurationBroadcastReceiver;->mOrmmaDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/controller/AdDisplayController;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/pad/android/util/AdConfigurationBroadcastReceiver;->mLastOrientation:I

    .line 29
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/pad/android/util/AdConfigurationBroadcastReceiver;->mOrmmaDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

    invoke-virtual {v2}, Lcom/pad/android/iappad/controller/AdDisplayController;->getOrientation()I

    move-result v1

    .line 39
    .local v1, orientation:I
    iget v2, p0, Lcom/pad/android/util/AdConfigurationBroadcastReceiver;->mLastOrientation:I

    if-eq v1, v2, :cond_0

    .line 40
    iput v1, p0, Lcom/pad/android/util/AdConfigurationBroadcastReceiver;->mLastOrientation:I

    .line 41
    iget-object v2, p0, Lcom/pad/android/util/AdConfigurationBroadcastReceiver;->mOrmmaDisplayController:Lcom/pad/android/iappad/controller/AdDisplayController;

    iget v3, p0, Lcom/pad/android/util/AdConfigurationBroadcastReceiver;->mLastOrientation:I

    invoke-virtual {v2, v3}, Lcom/pad/android/iappad/controller/AdDisplayController;->onOrientationChanged(I)V

    .line 44
    .end local v1           #orientation:I
    :cond_0
    return-void
.end method
