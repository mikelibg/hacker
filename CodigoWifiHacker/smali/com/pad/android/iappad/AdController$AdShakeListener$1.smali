.class Lcom/pad/android/iappad/AdController$AdShakeListener$1;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/iappad/AdController$AdShakeListener;-><init>(Lcom/pad/android/iappad/AdController;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pad/android/iappad/AdController$AdShakeListener;


# direct methods
.method constructor <init>(Lcom/pad/android/iappad/AdController$AdShakeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/iappad/AdController$AdShakeListener$1;->this$1:Lcom/pad/android/iappad/AdController$AdShakeListener;

    .line 2822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2824
    const-string v0, "LBAdController"

    const-string v1, "shake ad detection expires"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener$1;->this$1:Lcom/pad/android/iappad/AdController$AdShakeListener;

    #calls: Lcom/pad/android/iappad/AdController$AdShakeListener;->restoredata()V
    invoke-static {v0}, Lcom/pad/android/iappad/AdController$AdShakeListener;->access$0(Lcom/pad/android/iappad/AdController$AdShakeListener;)V

    .line 2826
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener$1;->this$1:Lcom/pad/android/iappad/AdController$AdShakeListener;

    #calls: Lcom/pad/android/iappad/AdController$AdShakeListener;->disableShakeDetection()V
    invoke-static {v0}, Lcom/pad/android/iappad/AdController$AdShakeListener;->access$1(Lcom/pad/android/iappad/AdController$AdShakeListener;)V

    .line 2827
    return-void
.end method
