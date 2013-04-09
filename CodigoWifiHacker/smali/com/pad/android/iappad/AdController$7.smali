.class Lcom/pad/android/iappad/AdController$7;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/iappad/AdController;->displayAd()V
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
    iput-object p1, p0, Lcom/pad/android/iappad/AdController$7;->this$0:Lcom/pad/android/iappad/AdController;

    .line 1481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$7;->this$0:Lcom/pad/android/iappad/AdController;

    #calls: Lcom/pad/android/iappad/AdController;->closeUnlocker()V
    invoke-static {v0}, Lcom/pad/android/iappad/AdController;->access$11(Lcom/pad/android/iappad/AdController;)V

    .line 1484
    return-void
.end method
