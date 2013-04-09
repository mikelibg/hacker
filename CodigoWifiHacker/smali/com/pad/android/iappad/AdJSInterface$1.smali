.class Lcom/pad/android/iappad/AdJSInterface$1;
.super Ljava/lang/Object;
.source "AdJSInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/iappad/AdJSInterface;->closeAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/iappad/AdJSInterface;


# direct methods
.method constructor <init>(Lcom/pad/android/iappad/AdJSInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/iappad/AdJSInterface$1;->this$0:Lcom/pad/android/iappad/AdJSInterface;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/pad/android/iappad/AdJSInterface$1;->this$0:Lcom/pad/android/iappad/AdJSInterface;

    #getter for: Lcom/pad/android/iappad/AdJSInterface;->controller:Lcom/pad/android/iappad/AdController;
    invoke-static {v0}, Lcom/pad/android/iappad/AdJSInterface;->access$0(Lcom/pad/android/iappad/AdJSInterface;)Lcom/pad/android/iappad/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController;->destroyAd()V

    .line 109
    return-void
.end method
