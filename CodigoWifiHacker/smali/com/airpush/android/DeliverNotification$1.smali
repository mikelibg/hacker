.class Lcom/airpush/android/DeliverNotification$1;
.super Ljava/lang/Object;
.source "DeliverNotification.java"

# interfaces
.implements Lcom/airpush/android/AsyncTaskCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/DeliverNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airpush/android/AsyncTaskCompleteListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/DeliverNotification;


# direct methods
.method constructor <init>(Lcom/airpush/android/DeliverNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/DeliverNotification$1;->this$0:Lcom/airpush/android/DeliverNotification;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lauchNewHttpTask()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/airpush/android/ImageTask;

    invoke-static {}, Lcom/airpush/android/Util;->getAdImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/airpush/android/ImageTask;-><init>(Ljava/lang/String;Lcom/airpush/android/AsyncTaskCompleteListener;)V

    .line 47
    .local v0, imageTask:Lcom/airpush/android/ImageTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/airpush/android/ImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    return-void
.end method

.method public onTaskComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 36
    invoke-static {p1}, Lcom/airpush/android/DeliverNotification;->access$0(Landroid/graphics/Bitmap;)V

    .line 37
    iget-object v0, p0, Lcom/airpush/android/DeliverNotification$1;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;
    invoke-static {v0}, Lcom/airpush/android/DeliverNotification;->access$1(Lcom/airpush/android/DeliverNotification;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BPW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airpush/android/DeliverNotification$1;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;
    invoke-static {v0}, Lcom/airpush/android/DeliverNotification;->access$1(Lcom/airpush/android/DeliverNotification;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BPCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airpush/android/DeliverNotification$1;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;
    invoke-static {v0}, Lcom/airpush/android/DeliverNotification;->access$1(Lcom/airpush/android/DeliverNotification;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BPCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airpush/android/DeliverNotification$1;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;
    invoke-static {v0}, Lcom/airpush/android/DeliverNotification;->access$1(Lcom/airpush/android/DeliverNotification;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BPA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BannerPush Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airpush/android/DeliverNotification$1;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->adType:Ljava/lang/String;
    invoke-static {v1}, Lcom/airpush/android/DeliverNotification;->access$1(Lcom/airpush/android/DeliverNotification;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/airpush/android/DeliverNotification$1;->this$0:Lcom/airpush/android/DeliverNotification;

    iget-object v1, p0, Lcom/airpush/android/DeliverNotification$1;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/airpush/android/DeliverNotification;->access$2(Lcom/airpush/android/DeliverNotification;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airpush/android/DeliverNotification;->notifyUsers(Landroid/content/Context;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/airpush/android/DeliverNotification$1;->this$0:Lcom/airpush/android/DeliverNotification;

    #calls: Lcom/airpush/android/DeliverNotification;->deliverNotification()V
    invoke-static {v0}, Lcom/airpush/android/DeliverNotification;->access$3(Lcom/airpush/android/DeliverNotification;)V

    goto :goto_0
.end method

.method public bridge synthetic onTaskComplete(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/airpush/android/DeliverNotification$1;->onTaskComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method
