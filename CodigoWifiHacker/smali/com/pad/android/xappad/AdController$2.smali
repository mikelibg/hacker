.class Lcom/pad/android/xappad/AdController$2;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/pad/android/listener/AdOptinListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/xappad/AdController;->loadIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/xappad/AdController;


# direct methods
.method constructor <init>(Lcom/pad/android/xappad/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/xappad/AdController$2;->this$0:Lcom/pad/android/xappad/AdController;

    .line 1142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdOptin()V
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/pad/android/xappad/AdController$2;->this$0:Lcom/pad/android/xappad/AdController;

    invoke-virtual {v0}, Lcom/pad/android/xappad/AdController;->loadIcon()V

    .line 1146
    return-void
.end method
