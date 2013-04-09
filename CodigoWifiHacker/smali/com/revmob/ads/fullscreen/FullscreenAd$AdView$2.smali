.class Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$2;
.super Ljava/lang/Object;
.source "FullscreenAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->addImageAdView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$2;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$2;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    #getter for: Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->clicked:Z
    invoke-static {v1}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->access$100(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$2;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;-><init>(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;Lcom/revmob/ads/fullscreen/FullscreenAd$1;)V

    .line 136
    .local v0, clickRedirector:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$2;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    const/4 v2, 0x1

    #setter for: Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->clicked:Z
    invoke-static {v1, v2}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->access$102(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;Z)Z

    goto :goto_0
.end method
