.class Lcom/airpush/android/DialogAd$1;
.super Ljava/lang/Object;
.source "DialogAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/DialogAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/DialogAd;


# direct methods
.method constructor <init>(Lcom/airpush/android/DialogAd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/DialogAd$1;->this$0:Lcom/airpush/android/DialogAd;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airpush/android/DialogAd$1;->this$0:Lcom/airpush/android/DialogAd;

    #getter for: Lcom/airpush/android/DialogAd;->event:Ljava/lang/String;
    invoke-static {v0}, Lcom/airpush/android/DialogAd;->access$0(Lcom/airpush/android/DialogAd;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/airpush/android/DialogAd$1;->this$0:Lcom/airpush/android/DialogAd;

    iget-object v0, v0, Lcom/airpush/android/DialogAd;->asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    invoke-interface {v0}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V

    .line 37
    iget-object v0, p0, Lcom/airpush/android/DialogAd$1;->this$0:Lcom/airpush/android/DialogAd;

    invoke-virtual {v0}, Lcom/airpush/android/DialogAd;->handleClicks()V

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/airpush/android/DialogAd$1;->this$0:Lcom/airpush/android/DialogAd;

    iget-object v0, v0, Lcom/airpush/android/DialogAd;->asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    invoke-interface {v0}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V

    .line 40
    iget-object v0, p0, Lcom/airpush/android/DialogAd$1;->this$0:Lcom/airpush/android/DialogAd;

    #getter for: Lcom/airpush/android/DialogAd;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/airpush/android/DialogAd;->access$1(Lcom/airpush/android/DialogAd;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
