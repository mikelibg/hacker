.class Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$2;
.super Ljava/lang/Object;
.source "MMAdViewWebOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->shouldShowBottomBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$2;->this$1:Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;

    iput-boolean p2, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$2;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$2;->this$1:Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    #getter for: Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$300(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 592
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$2;->val$show:Z

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$2;->this$1:Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    #getter for: Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$300(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$2;->this$1:Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    #getter for: Lcom/millennialmedia/android/MMAdViewWebOverlay;->navBar:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$300(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
