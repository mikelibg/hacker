.class Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$1;
.super Ljava/lang/Object;
.source "MMAdViewWebOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->shouldEnableBottomBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$1;->this$1:Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;

    iput-boolean p2, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$1;->this$1:Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$1;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setCloseButtonListener(Z)V

    .line 577
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$1;->this$1:Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$1;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setForwardButtonListener(Z)V

    .line 578
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$1;->this$1:Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$1;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setBackButtonListener(Z)V

    .line 579
    return-void
.end method
