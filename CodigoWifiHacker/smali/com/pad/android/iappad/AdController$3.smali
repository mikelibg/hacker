.class Lcom/pad/android/iappad/AdController$3;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/iappad/AdController;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/iappad/AdController;


# direct methods
.method constructor <init>(Lcom/pad/android/iappad/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/iappad/AdController$3;->this$0:Lcom/pad/android/iappad/AdController;

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 903
    :try_start_0
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$3;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->adLoaded:Z
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$28(Lcom/pad/android/iappad/AdController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pad/android/iappad/AdController$3;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->adDestroyed:Z
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$29(Lcom/pad/android/iappad/AdController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 905
    const-string v1, "LBAdController"

    const-string v2, "onAdProgress triggered"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$3;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->listener:Lcom/pad/android/listener/AdListener;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$12(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/listener/AdListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/pad/android/listener/AdListener;->onAdProgress()V

    .line 907
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$3;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->progressHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$30(Lcom/pad/android/iappad/AdController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$3;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->loadProgress:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$31(Lcom/pad/android/iappad/AdController;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/pad/android/iappad/AdController$3;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->progressInterval:I
    invoke-static {v3}, Lcom/pad/android/iappad/AdController;->access$32(Lcom/pad/android/iappad/AdController;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 910
    :catch_0
    move-exception v0

    .line 912
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LBAdController"

    const-string v2, "error when onAdProgress triggered"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
