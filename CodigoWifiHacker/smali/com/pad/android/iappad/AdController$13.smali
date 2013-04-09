.class Lcom/pad/android/iappad/AdController$13;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/iappad/AdController;->showManualPoll()V
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
    iput-object p1, p0, Lcom/pad/android/iappad/AdController$13;->this$0:Lcom/pad/android/iappad/AdController;

    .line 2052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 2054
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$13;->this$0:Lcom/pad/android/iappad/AdController;

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$13;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$16(Lcom/pad/android/iappad/AdController;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, "Checking....Please Wait!"

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    #setter for: Lcom/pad/android/iappad/AdController;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/pad/android/iappad/AdController;->access$36(Lcom/pad/android/iappad/AdController;Landroid/app/ProgressDialog;)V

    .line 2055
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$13;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->adPolling:Lcom/pad/android/iappad/AdController$OfferPolling;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$7(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/iappad/AdController$OfferPolling;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2057
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$13;->this$0:Lcom/pad/android/iappad/AdController;

    new-instance v2, Lcom/pad/android/iappad/AdController$OfferPolling;

    iget-object v3, p0, Lcom/pad/android/iappad/AdController$13;->this$0:Lcom/pad/android/iappad/AdController;

    invoke-direct {v2, v3}, Lcom/pad/android/iappad/AdController$OfferPolling;-><init>(Lcom/pad/android/iappad/AdController;)V

    #setter for: Lcom/pad/android/iappad/AdController;->adPolling:Lcom/pad/android/iappad/AdController$OfferPolling;
    invoke-static {v1, v2}, Lcom/pad/android/iappad/AdController;->access$37(Lcom/pad/android/iappad/AdController;Lcom/pad/android/iappad/AdController$OfferPolling;)V

    .line 2059
    :cond_0
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$13;->this$0:Lcom/pad/android/iappad/AdController;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    #setter for: Lcom/pad/android/iappad/AdController;->pollingHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/pad/android/iappad/AdController;->access$38(Lcom/pad/android/iappad/AdController;Landroid/os/Handler;)V

    .line 2062
    :try_start_0
    const-string v1, "LBAdController"

    const-string v2, "Manually Polling"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$13;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->pollingHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$6(Lcom/pad/android/iappad/AdController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$13;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->adPolling:Lcom/pad/android/iappad/AdController$OfferPolling;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$7(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/iappad/AdController$OfferPolling;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2070
    :goto_0
    return-void

    .line 2065
    :catch_0
    move-exception v0

    .line 2067
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in manual polling - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
