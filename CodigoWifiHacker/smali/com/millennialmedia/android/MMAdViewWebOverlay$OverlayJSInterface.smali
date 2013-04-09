.class Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;
.super Ljava/lang/Object;
.source "MMAdViewWebOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdViewWebOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OverlayJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldCloseOverlay()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->viewHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 558
    return-void
.end method

.method public shouldEnableBottomBar(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Should Enable Bottom Bar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->viewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$1;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$1;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 581
    return-void
.end method

.method public shouldShowBottomBar(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Should show Bottom Bar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->viewHandler:Landroid/os/Handler;

    new-instance v1, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$2;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface$2;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 599
    return-void
.end method

.method public shouldVibrate(J)V
    .locals 3
    .parameter "milliseconds"

    .prologue
    .line 562
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 565
    .local v0, v:Landroid/os/Vibrator;
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 567
    .end local v0           #v:Landroid/os/Vibrator;
    :cond_0
    return-void
.end method
