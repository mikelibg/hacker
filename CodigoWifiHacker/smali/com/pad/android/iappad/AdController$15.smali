.class Lcom/pad/android/iappad/AdController$15;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/iappad/AdController;->setOnAdLoaded(Z)V
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
    iput-object p1, p0, Lcom/pad/android/iappad/AdController$15;->this$0:Lcom/pad/android/iappad/AdController;

    .line 2366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2370
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$15;->this$0:Lcom/pad/android/iappad/AdController;

    #setter for: Lcom/pad/android/iappad/AdController;->backgroundLoad:Z
    invoke-static {v0, v1}, Lcom/pad/android/iappad/AdController;->access$51(Lcom/pad/android/iappad/AdController;Z)V

    .line 2371
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$15;->this$0:Lcom/pad/android/iappad/AdController;

    #calls: Lcom/pad/android/iappad/AdController;->displayAd()V
    invoke-static {v0}, Lcom/pad/android/iappad/AdController;->access$27(Lcom/pad/android/iappad/AdController;)V

    .line 2372
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$15;->this$0:Lcom/pad/android/iappad/AdController;

    #setter for: Lcom/pad/android/iappad/AdController;->loading:Z
    invoke-static {v0, v1}, Lcom/pad/android/iappad/AdController;->access$52(Lcom/pad/android/iappad/AdController;Z)V

    .line 2373
    return-void
.end method
