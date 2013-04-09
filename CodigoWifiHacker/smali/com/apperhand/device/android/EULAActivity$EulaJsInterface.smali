.class final Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;
.super Ljava/lang/Object;
.source "EULAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/device/android/EULAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EulaJsInterface"
.end annotation


# instance fields
.field processed:Z

.field final synthetic this$0:Lcom/apperhand/device/android/EULAActivity;


# direct methods
.method constructor <init>(Lcom/apperhand/device/android/EULAActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;->this$0:Lcom/apperhand/device/android/EULAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final press(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;->processed:Z

    if-eqz v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;->processed:Z

    .line 388
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;->this$0:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0}, Lcom/apperhand/device/android/EULAActivity;->b(Lcom/apperhand/device/android/EULAActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/apperhand/device/android/EULAActivity$EulaJsInterface$1;-><init>(Lcom/apperhand/device/android/EULAActivity$EulaJsInterface;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
