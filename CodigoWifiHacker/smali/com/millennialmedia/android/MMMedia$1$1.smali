.class Lcom/millennialmedia/android/MMMedia$1$1;
.super Landroid/app/Activity;
.source "MMMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMMedia$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MMMedia$1;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMMedia$1;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/millennialmedia/android/MMMedia$1$1;->this$1:Lcom/millennialmedia/android/MMMedia$1;

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$1$1;->this$1:Lcom/millennialmedia/android/MMMedia$1;

    iget-object v1, v0, Lcom/millennialmedia/android/MMMedia$1;->val$lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$1$1;->this$1:Lcom/millennialmedia/android/MMMedia$1;

    iget-object v0, v0, Lcom/millennialmedia/android/MMMedia$1;->val$lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
